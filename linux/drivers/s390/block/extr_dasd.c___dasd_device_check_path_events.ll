; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_device_check_path_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_device_check_path_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, i32)* }

@DASD_STOPPED_DC_WAIT = common dso_local global i32 0, align 4
@DASD_UNRESUMED_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @__dasd_device_check_path_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dasd_device_check_path_events(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = call i32 @dasd_path_get_tbvpm(%struct.dasd_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DASD_STOPPED_DC_WAIT, align 4
  %13 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %37

19:                                               ; preds = %8
  %20 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dasd_device*, i32)*, i32 (%struct.dasd_device*, i32)** %23, align 8
  %25 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %26 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %27 = call i32 @dasd_path_get_tbvpm(%struct.dasd_device* %26)
  %28 = call i32 %24(%struct.dasd_device* %25, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %33 = call i32 @dasd_device_set_timer(%struct.dasd_device* %32, i32 50)
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %36 = call i32 @dasd_path_clear_all_verify(%struct.dasd_device* %35)
  br label %37

37:                                               ; preds = %7, %18, %34, %31
  ret void
}

declare dso_local i32 @dasd_path_get_tbvpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_set_timer(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_clear_all_verify(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
