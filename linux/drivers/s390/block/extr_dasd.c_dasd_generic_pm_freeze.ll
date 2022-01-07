; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_pm_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_pm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*)* }

@DASD_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@DASD_STOPPED_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_pm_freeze(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %5)
  store %struct.dasd_device* %6, %struct.dasd_device** %4, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %8 = call i64 @IS_ERR(%struct.dasd_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.dasd_device* %11)
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @DASD_FLAG_SUSPENDED, align 4
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %21, align 8
  %23 = icmp ne i32 (%struct.dasd_device*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %28, align 8
  %30 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %31 = call i32 %29(%struct.dasd_device* %30)
  br label %32

32:                                               ; preds = %24, %13
  %33 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %34 = load i32, i32* @DASD_STOPPED_PM, align 4
  %35 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %33, i32 %34)
  %36 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %37 = call i32 @dasd_generic_requeue_all_requests(%struct.dasd_device* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dasd_device_set_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_generic_requeue_all_requests(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
