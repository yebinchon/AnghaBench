; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_map_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, %struct.blk_mq_queue_map*, %struct.nvme_dev* }
%struct.blk_mq_queue_map = type { i32, i64 }
%struct.nvme_dev = type { i32, i64* }

@HCTX_TYPE_DEFAULT = common dso_local global i32 0, align 4
@HCTX_TYPE_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @nvme_pci_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_map_queues(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca %struct.blk_mq_tag_set*, align 8
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_mq_queue_map*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %2, align 8
  %8 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %9 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %8, i32 0, i32 2
  %10 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  store %struct.nvme_dev* %10, %struct.nvme_dev** %3, align 8
  %11 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %12 = call i32 @queue_irq_offset(%struct.nvme_dev* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %81, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %16 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %13
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %2, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 1
  %22 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %22, i64 %24
  store %struct.blk_mq_queue_map* %25, %struct.blk_mq_queue_map** %7, align 8
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %34 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %36 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @HCTX_TYPE_DEFAULT, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  br label %81

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %48 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @HCTX_TYPE_POLL, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %57 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %58 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @to_pci_dev(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @blk_mq_pci_map_queues(%struct.blk_mq_queue_map* %56, i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %52, %45
  %64 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %65 = call i32 @blk_mq_map_queues(%struct.blk_mq_queue_map* %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %68 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load %struct.blk_mq_queue_map*, %struct.blk_mq_queue_map** %7, align 8
  %75 = getelementptr inbounds %struct.blk_mq_queue_map, %struct.blk_mq_queue_map* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %66, %39
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %13

84:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @queue_irq_offset(%struct.nvme_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_mq_pci_map_queues(%struct.blk_mq_queue_map*, i32, i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @blk_mq_map_queues(%struct.blk_mq_queue_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
