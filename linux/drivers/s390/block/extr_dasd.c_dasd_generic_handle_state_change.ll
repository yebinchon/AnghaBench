; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_handle_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_handle_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DASD_STOPPED_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_handle_state_change(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = call i32 @dasd_eer_snss(%struct.dasd_device* %3)
  %5 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %6 = load i32, i32* @DASD_STOPPED_PENDING, align 4
  %7 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %5, i32 %6)
  %8 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %9 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %8)
  %10 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @dasd_schedule_block_bh(%struct.TYPE_2__* %17)
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @blk_mq_run_hw_queues(i64 %30, i32 1)
  br label %32

32:                                               ; preds = %25, %14
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @dasd_eer_snss(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.TYPE_2__*) #1

declare dso_local i32 @blk_mq_run_hw_queues(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
