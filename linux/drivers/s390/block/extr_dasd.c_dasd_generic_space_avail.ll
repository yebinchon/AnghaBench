; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_space_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_space_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Extent pool space is available\0A\00", align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"space available\00", align 1
@DASD_STOPPED_NOSPC = common dso_local global i32 0, align 4
@generic_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_space_avail(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @DBF_WARNING, align 4
  %9 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %10 = call i32 @DBF_DEV_EVENT(i32 %8, %struct.dasd_device* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %12 = load i32, i32* @DASD_STOPPED_NOSPC, align 4
  %13 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %11, i32 %12)
  %14 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %15 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %14)
  %16 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @dasd_schedule_block_bh(%struct.TYPE_4__* %23)
  %25 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %33 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @blk_mq_run_hw_queues(i64 %36, i32 1)
  br label %38

38:                                               ; preds = %31, %20
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 @wake_up(i32* @generic_waitq)
  br label %46

46:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_mq_run_hw_queues(i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
