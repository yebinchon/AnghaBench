; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i64 }

@shutdown_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_shutdown(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %4)
  store %struct.dasd_device* %5, %struct.dasd_device** %3, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = call i64 @IS_ERR(%struct.dasd_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dasd_schedule_block_bh(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %22 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %21)
  %23 = load i32, i32* @shutdown_waitq, align 4
  %24 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %25 = call i32 @_wait_for_empty_queues(%struct.dasd_device* %24)
  %26 = call i32 @wait_event(i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %9
  ret void
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_block_bh(i64) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @_wait_for_empty_queues(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
