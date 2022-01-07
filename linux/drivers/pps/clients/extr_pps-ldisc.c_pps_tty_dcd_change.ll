; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-ldisc.c_pps_tty_dcd_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-ldisc.c_pps_tty_dcd_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.pps_device = type { i32 }
%struct.pps_event_time = type { i32 }

@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PPS %s at %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @pps_tty_dcd_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_tty_dcd_change(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pps_device*, align 8
  %6 = alloca %struct.pps_event_time, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @pps_get_ts(%struct.pps_event_time* %6)
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = call %struct.pps_device* @pps_lookup_dev(%struct.tty_struct* %8)
  store %struct.pps_device* %9, %struct.pps_device** %5, align 8
  %10 = load %struct.pps_device*, %struct.pps_device** %5, align 8
  %11 = icmp eq %struct.pps_device* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.pps_device*, %struct.pps_device** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @pps_event(%struct.pps_device* %17, %struct.pps_event_time* %6, i32 %25, i32* null)
  %27 = load %struct.pps_device*, %struct.pps_device** %5, align 8
  %28 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* @jiffies, align 4
  %35 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @pps_get_ts(%struct.pps_event_time*) #1

declare dso_local %struct.pps_device* @pps_lookup_dev(%struct.tty_struct*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pps_event(%struct.pps_device*, %struct.pps_event_time*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
