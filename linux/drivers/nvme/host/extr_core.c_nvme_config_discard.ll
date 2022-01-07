; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_config_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_config_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nvme_ns = type { i32, i32, %struct.nvme_ctrl* }
%struct.nvme_ctrl = type { i32, i32, i64 }

@NVME_CTRL_ONCS_DSM = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NVME_DSM_MAX_RANGES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@NVME_QUIRK_DEALLOCATE_ZEROES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, %struct.nvme_ns*)* @nvme_config_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_config_discard(%struct.gendisk* %0, %struct.nvme_ns* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %4, align 8
  %8 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %8, i32 0, i32 2
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %9, align 8
  store %struct.nvme_ctrl* %10, %struct.nvme_ctrl** %5, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 0
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %6, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %15 = call i32 @queue_logical_block_size(%struct.request_queue* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NVME_CTRL_ONCS_DSM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %25 = call i32 @blk_queue_flag_clear(i32 %23, %struct.request_queue* %24)
  br label %89

26:                                               ; preds = %2
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %38 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %46 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %41, %36, %31, %26
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = load i32, i32* @NVME_DSM_MAX_RANGES, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUILD_BUG_ON(i32 %58)
  %60 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %61 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %65 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %68 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %69 = call i64 @blk_queue_flag_test_and_set(i32 %67, %struct.request_queue* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %89

72:                                               ; preds = %51
  %73 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %74 = load i32, i32* @UINT_MAX, align 4
  %75 = call i32 @blk_queue_max_discard_sectors(%struct.request_queue* %73, i32 %74)
  %76 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %77 = load i32, i32* @NVME_DSM_MAX_RANGES, align 4
  %78 = call i32 @blk_queue_max_discard_segments(%struct.request_queue* %76, i32 %77)
  %79 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %80 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NVME_QUIRK_DEALLOCATE_ZEROES, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = load i32, i32* @UINT_MAX, align 4
  %88 = call i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue* %86, i32 %87)
  br label %89

89:                                               ; preds = %22, %71, %85, %72
  ret void
}

declare dso_local i32 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @blk_queue_flag_test_and_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_discard_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_write_zeroes_sectors(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
