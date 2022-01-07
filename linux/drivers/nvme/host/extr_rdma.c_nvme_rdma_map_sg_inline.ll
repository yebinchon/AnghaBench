; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_sg_inline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_sg_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.nvme_rdma_request = type { i32, %struct.ib_sge*, %struct.TYPE_10__ }
%struct.ib_sge = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.nvme_command = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvme_sgl_desc }
%struct.nvme_sgl_desc = type { i32, i32, i32 }

@NVME_SGL_FMT_DATA_DESC = common dso_local global i32 0, align 4
@NVME_SGL_FMT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*, %struct.nvme_command*, i32)* @nvme_rdma_map_sg_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_map_sg_inline(%struct.nvme_rdma_queue* %0, %struct.nvme_rdma_request* %1, %struct.nvme_command* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_rdma_queue*, align 8
  %6 = alloca %struct.nvme_rdma_request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_sgl_desc*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.ib_sge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %5, align 8
  store %struct.nvme_rdma_request* %1, %struct.nvme_rdma_request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %15 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store %struct.nvme_sgl_desc* %17, %struct.nvme_sgl_desc** %9, align 8
  %18 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %6, align 8
  %19 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.scatterlist*, %struct.scatterlist** %20, align 8
  store %struct.scatterlist* %21, %struct.scatterlist** %10, align 8
  %22 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %6, align 8
  %23 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %22, i32 0, i32 1
  %24 = load %struct.ib_sge*, %struct.ib_sge** %23, align 8
  %25 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %24, i64 1
  store %struct.ib_sge* %25, %struct.ib_sge** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %55, %4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %32 = call i32 @sg_dma_address(%struct.scatterlist* %31)
  %33 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %34 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %36 = call i64 @sg_dma_len(%struct.scatterlist* %35)
  %37 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %38 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %40 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %49 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %59 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %58, i32 1
  store %struct.scatterlist* %59, %struct.scatterlist** %10, align 8
  %60 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i32 1
  store %struct.ib_sge* %61, %struct.ib_sge** %11, align 8
  br label %26

62:                                               ; preds = %26
  %63 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %5, align 8
  %64 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu_to_le64(i32 %68)
  %70 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %9, align 8
  %71 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %9, align 8
  %75 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @NVME_SGL_FMT_DATA_DESC, align 4
  %77 = shl i32 %76, 4
  %78 = load i32, i32* @NVME_SGL_FMT_OFFSET, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %9, align 8
  %81 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %6, align 8
  %84 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  ret i32 0
}

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
