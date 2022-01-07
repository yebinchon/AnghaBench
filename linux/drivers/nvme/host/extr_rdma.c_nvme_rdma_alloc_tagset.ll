; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_alloc_tagset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_alloc_tagset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32, i32, i32, i32, %struct.nvme_rdma_ctrl*, i32, i32, i64, i32* }
%struct.nvme_rdma_ctrl = type { %struct.blk_mq_tag_set, %struct.blk_mq_tag_set }
%struct.nvme_ctrl = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@nvme_rdma_admin_mq_ops = common dso_local global i32 0, align 4
@NVME_AQ_MQ_TAG_DEPTH = common dso_local global i64 0, align 8
@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@BLK_MQ_F_NO_SCHED = common dso_local global i32 0, align 4
@nvme_rdma_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@HCTX_MAX_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_tag_set* (%struct.nvme_ctrl*, i32)* @nvme_rdma_alloc_tagset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_tag_set* @nvme_rdma_alloc_tagset(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_rdma_ctrl*, align 8
  %7 = alloca %struct.blk_mq_tag_set*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %10 = call %struct.nvme_rdma_ctrl* @to_rdma_ctrl(%struct.nvme_ctrl* %9)
  store %struct.nvme_rdma_ctrl* %10, %struct.nvme_rdma_ctrl** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %14, i32 0, i32 1
  store %struct.blk_mq_tag_set* %15, %struct.blk_mq_tag_set** %7, align 8
  %16 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %17 = call i32 @memset(%struct.blk_mq_tag_set* %16, i32 0, i32 56)
  %18 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %19 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %18, i32 0, i32 9
  store i32* @nvme_rdma_admin_mq_ops, i32** %19, align 8
  %20 = load i64, i64* @NVME_AQ_MQ_TAG_DEPTH, align 8
  %21 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %22 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %21, i32 0, i32 8
  store i64 %20, i64* %22, align 8
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %29 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %36 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %38 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %39 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %38, i32 0, i32 5
  store %struct.nvme_rdma_ctrl* %37, %struct.nvme_rdma_ctrl** %39, align 8
  %40 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %41 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %43 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %44 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @BLK_MQ_F_NO_SCHED, align 4
  %46 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %47 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  br label %103

48:                                               ; preds = %2
  %49 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %50 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %49, i32 0, i32 0
  store %struct.blk_mq_tag_set* %50, %struct.blk_mq_tag_set** %7, align 8
  %51 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %52 = call i32 @memset(%struct.blk_mq_tag_set* %51, i32 0, i32 56)
  %53 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %54 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %53, i32 0, i32 9
  store i32* @nvme_rdma_mq_ops, i32** %54, align 8
  %55 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %56 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %60 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %59, i32 0, i32 8
  store i64 %58, i64* %60, align 8
  %61 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %62 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %64 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %67 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %69 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %70 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = add i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %77 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %6, align 8
  %79 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %80 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %79, i32 0, i32 5
  store %struct.nvme_rdma_ctrl* %78, %struct.nvme_rdma_ctrl** %80, align 8
  %81 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %82 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %86 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %88 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %89 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %91 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %48
  %97 = load i32, i32* @HCTX_MAX_TYPES, align 4
  br label %99

98:                                               ; preds = %48
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 2, %98 ]
  %101 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %102 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %13
  %104 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  %105 = call i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = call %struct.blk_mq_tag_set* @ERR_PTR(i32 %109)
  store %struct.blk_mq_tag_set* %110, %struct.blk_mq_tag_set** %3, align 8
  br label %113

111:                                              ; preds = %103
  %112 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %7, align 8
  store %struct.blk_mq_tag_set* %112, %struct.blk_mq_tag_set** %3, align 8
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  ret %struct.blk_mq_tag_set* %114
}

declare dso_local %struct.nvme_rdma_ctrl* @to_rdma_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @memset(%struct.blk_mq_tag_set*, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set*) #1

declare dso_local %struct.blk_mq_tag_set* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
