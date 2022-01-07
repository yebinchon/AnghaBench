; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_inv_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_inv_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32 }
%struct.nvme_rdma_request = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_send_wr = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WR_LOCAL_INV = common dso_local global i32 0, align 4
@nvme_rdma_inv_rkey_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, %struct.nvme_rdma_request*)* @nvme_rdma_inv_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_inv_rkey(%struct.nvme_rdma_queue* %0, %struct.nvme_rdma_request* %1) #0 {
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca %struct.nvme_rdma_request*, align 8
  %5 = alloca %struct.ib_send_wr, align 8
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  store %struct.nvme_rdma_request* %1, %struct.nvme_rdma_request** %4, align 8
  %6 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %7 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 8
  %14 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 2
  %15 = load i32, i32* @IB_SEND_SIGNALED, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 5
  %19 = load i32, i32* @IB_WR_LOCAL_INV, align 4
  store i32 %19, i32* %18, align 8
  %20 = load i32, i32* @nvme_rdma_inv_rkey_done, align 4
  %21 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %5, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ib_post_send(i32 %29, %struct.ib_send_wr* %5, i32* null)
  ret i32 %30
}

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
