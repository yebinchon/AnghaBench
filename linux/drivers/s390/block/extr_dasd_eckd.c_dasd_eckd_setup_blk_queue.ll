; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_setup_blk_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_setup_blk_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i32, %struct.dasd_device*, %struct.request_queue* }
%struct.dasd_device = type { i32 }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@DASD_ECKD_MAX_BLOCKS_RAW = common dso_local global i32 0, align 4
@DASD_ECKD_MAX_BLOCKS = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_block*)* @dasd_eckd_setup_blk_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_setup_blk_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca %struct.dasd_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %2, align 8
  %7 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %10, i32 0, i32 3
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %4, align 8
  %13 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %13, i32 0, i32 2
  %15 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  store %struct.dasd_device* %15, %struct.dasd_device** %5, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @DASD_ECKD_MAX_BLOCKS_RAW, align 4
  %24 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %25 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  store i32 %27, i32* %6, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @DASD_ECKD_MAX_BLOCKS, align 4
  %30 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %31 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %36 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %37 = call i32 @blk_queue_flag_set(i32 %35, %struct.request_queue* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %42, i32 %43)
  %45 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %45, i32 %46)
  %48 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %49 = load i32, i32* @USHRT_MAX, align 4
  %50 = call i32 @blk_queue_max_segments(%struct.request_queue* %48, i32 %49)
  %51 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = call i32 @blk_queue_max_segment_size(%struct.request_queue* %51, i64 %52)
  %54 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @blk_queue_segment_boundary(%struct.request_queue* %54, i64 %56)
  ret void
}

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.request_queue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
