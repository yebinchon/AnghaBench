; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_sg_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_map_sg_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nvme_rdma_request = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvme_keyed_sgl_desc }
%struct.nvme_keyed_sgl_desc = type { i32, i32, i32, i32 }

@NVME_KEY_SGL_FMT_DATA_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*, %struct.nvme_command*)* @nvme_rdma_map_sg_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_map_sg_single(%struct.nvme_rdma_queue* %0, %struct.nvme_rdma_request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca %struct.nvme_rdma_queue*, align 8
  %5 = alloca %struct.nvme_rdma_request*, align 8
  %6 = alloca %struct.nvme_command*, align 8
  %7 = alloca %struct.nvme_keyed_sgl_desc*, align 8
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %4, align 8
  store %struct.nvme_rdma_request* %1, %struct.nvme_rdma_request** %5, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %6, align 8
  %8 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %9 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.nvme_keyed_sgl_desc* %11, %struct.nvme_keyed_sgl_desc** %7, align 8
  %12 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sg_dma_address(i32 %15)
  %17 = call i32 @cpu_to_le64(i32 %16)
  %18 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %7, align 8
  %19 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %21 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sg_dma_len(i32 %23)
  %25 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %7, align 8
  %26 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put_unaligned_le24(i32 %24, i32 %27)
  %29 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %30 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %7, align 8
  %37 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @put_unaligned_le32(i32 %35, i32 %38)
  %40 = load i32, i32* @NVME_KEY_SGL_FMT_DATA_DESC, align 4
  %41 = shl i32 %40, 4
  %42 = load %struct.nvme_keyed_sgl_desc*, %struct.nvme_keyed_sgl_desc** %7, align 8
  %43 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, %struct.nvme_keyed_sgl_desc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret i32 0
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @put_unaligned_le24(i32, i32) #1

declare dso_local i32 @sg_dma_len(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
