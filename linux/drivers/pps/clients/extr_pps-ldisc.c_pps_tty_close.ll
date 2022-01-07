; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-ldisc.c_pps_tty_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-ldisc.c_pps_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.pps_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @pps_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_tty_close(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.pps_device*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = call %struct.pps_device* @pps_lookup_dev(%struct.tty_struct* %4)
  store %struct.pps_device* %5, %struct.pps_device** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = call i32 @alias_n_tty_close(%struct.tty_struct* %6)
  %8 = load %struct.pps_device*, %struct.pps_device** %3, align 8
  %9 = icmp ne %struct.pps_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.pps_device*, %struct.pps_device** %3, align 8
  %17 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pps_device*, %struct.pps_device** %3, align 8
  %21 = call i32 @pps_unregister_source(%struct.pps_device* %20)
  br label %22

22:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.pps_device* @pps_lookup_dev(%struct.tty_struct*) #1

declare dso_local i32 @alias_n_tty_close(%struct.tty_struct*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @pps_unregister_source(%struct.pps_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
