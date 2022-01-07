; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_submit_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_submit_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_rdma_ctrl = type { %struct.nvme_rdma_qe, %struct.nvme_rdma_queue* }
%struct.nvme_rdma_qe = type { i32, %struct.TYPE_6__, %struct.nvme_command* }
%struct.TYPE_6__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.nvme_rdma_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_sge = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@nvme_admin_async_event = common dso_local global i32 0, align 4
@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i32 0, align 4
@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@nvme_rdma_async_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_rdma_submit_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_submit_async_event(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_rdma_ctrl*, align 8
  %4 = alloca %struct.nvme_rdma_queue*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.nvme_rdma_qe*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca %struct.ib_sge, align 4
  %9 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %11 = call %struct.nvme_rdma_ctrl* @to_rdma_ctrl(%struct.nvme_ctrl* %10)
  store %struct.nvme_rdma_ctrl* %11, %struct.nvme_rdma_ctrl** %3, align 8
  %12 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %12, i32 0, i32 1
  %14 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %13, align 8
  %15 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %14, i64 0
  store %struct.nvme_rdma_queue* %15, %struct.nvme_rdma_queue** %4, align 8
  %16 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ib_device*, %struct.ib_device** %19, align 8
  store %struct.ib_device* %20, %struct.ib_device** %5, align 8
  %21 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %21, i32 0, i32 0
  store %struct.nvme_rdma_qe* %22, %struct.nvme_rdma_qe** %6, align 8
  %23 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %6, align 8
  %24 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %23, i32 0, i32 2
  %25 = load %struct.nvme_command*, %struct.nvme_command** %24, align 8
  store %struct.nvme_command* %25, %struct.nvme_command** %7, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %27 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %6, align 8
  %28 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %26, i32 %29, i32 12, i32 %30)
  %32 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %33 = call i32 @memset(%struct.nvme_command* %32, i32 0, i32 12)
  %34 = load i32, i32* @nvme_admin_async_event, align 4
  %35 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %36 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @NVME_AQ_BLK_MQ_DEPTH, align 4
  %39 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %40 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %43 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %44 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %49 = call i32 @nvme_rdma_set_sg_null(%struct.nvme_command* %48)
  %50 = load i32, i32* @nvme_rdma_async_done, align 4
  %51 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %6, align 8
  %52 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %55 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %6, align 8
  %56 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %54, i32 %57, i32 12, i32 %58)
  %60 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %61 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %6, align 8
  %62 = call i32 @nvme_rdma_post_send(%struct.nvme_rdma_queue* %60, %struct.nvme_rdma_qe* %61, %struct.ib_sge* %8, i32 1, i32* null)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @WARN_ON_ONCE(i32 %63)
  ret void
}

declare dso_local %struct.nvme_rdma_ctrl* @to_rdma_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @nvme_rdma_set_sg_null(%struct.nvme_command*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @nvme_rdma_post_send(%struct.nvme_rdma_queue*, %struct.nvme_rdma_qe*, %struct.ib_sge*, i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
