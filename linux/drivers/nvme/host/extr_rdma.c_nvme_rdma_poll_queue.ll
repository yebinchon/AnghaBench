; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_poll_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_poll_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@HCTX_TYPE_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*)* @nvme_rdma_poll_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_poll_queue(%struct.nvme_rdma_queue* %0) #0 {
  %2 = alloca %struct.nvme_rdma_queue*, align 8
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %2, align 8
  %3 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %4 = call i64 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue* %3)
  %5 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @HCTX_TYPE_READ, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %12, %20
  %22 = icmp sgt i64 %4, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @nvme_rdma_queue_idx(%struct.nvme_rdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
