; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_setup_blk_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_setup_blk_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@DASD_FBA_MAX_BLOCKS = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_block*)* @dasd_fba_setup_blk_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_fba_setup_blk_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca %struct.dasd_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %2, align 8
  %8 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %12 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %11, i32 0, i32 2
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %4, align 8
  %14 = load i32, i32* @DASD_FBA_MAX_BLOCKS, align 4
  %15 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = call i32 @blk_queue_flag_set(i32 %19, %struct.request_queue* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %26, i32 %27)
  %29 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %29, i32 %30)
  %32 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %33 = load i32, i32* @USHRT_MAX, align 4
  %34 = call i32 @blk_queue_max_segments(%struct.request_queue* %32, i32 %33)
  %35 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = call i32 @blk_queue_max_segment_size(%struct.request_queue* %35, i64 %36)
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @blk_queue_segment_boundary(%struct.request_queue* %38, i64 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %48 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @USHRT_MAX, align 4
  %51 = load i32, i32* %3, align 4
  %52 = mul i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = call i32 @ALIGN_DOWN(i32 %53, i64 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = udiv i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %59, i32 %60)
  %62 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue* %62, i32 %63)
  %65 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %66 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %67 = call i32 @blk_queue_flag_set(i32 %65, %struct.request_queue* %66)
  ret void
}

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.request_queue*, i64) #1

declare dso_local i32 @ALIGN_DOWN(i32, i64) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
