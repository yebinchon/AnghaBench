; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nvme_rdma_request = type { %struct.TYPE_4__, %struct.nvme_rdma_queue* }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_rdma_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @nvme_rdma_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_complete_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.nvme_rdma_request*, align 8
  %4 = alloca %struct.nvme_rdma_queue*, align 8
  %5 = alloca %struct.ib_device*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %6)
  store %struct.nvme_rdma_request* %7, %struct.nvme_rdma_request** %3, align 8
  %8 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %8, i32 0, i32 1
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %9, align 8
  store %struct.nvme_rdma_queue* %10, %struct.nvme_rdma_queue** %4, align 8
  %11 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %12 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %5, align 8
  %16 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %4, align 8
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = call i32 @nvme_rdma_unmap_data(%struct.nvme_rdma_queue* %16, %struct.request* %17)
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @ib_dma_unmap_single(%struct.ib_device* %19, i32 %23, i32 4, i32 %24)
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = call i32 @nvme_complete_rq(%struct.request* %26)
  ret void
}

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @nvme_rdma_unmap_data(%struct.nvme_rdma_queue*, %struct.request*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @nvme_complete_rq(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
