; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_destroy_queue_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_destroy_queue_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { i32, i32, i32, %struct.TYPE_3__*, %struct.nvme_rdma_device*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_rdma_device = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@NVME_RDMA_Q_TR_READY = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_rdma_queue*)* @nvme_rdma_destroy_queue_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %0) #0 {
  %2 = alloca %struct.nvme_rdma_queue*, align 8
  %3 = alloca %struct.nvme_rdma_device*, align 8
  %4 = alloca %struct.ib_device*, align 8
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %2, align 8
  %5 = load i32, i32* @NVME_RDMA_Q_TR_READY, align 4
  %6 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %6, i32 0, i32 5
  %8 = call i32 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %12, i32 0, i32 4
  %14 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %13, align 8
  store %struct.nvme_rdma_device* %14, %struct.nvme_rdma_device** %3, align 8
  %15 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %15, i32 0, i32 0
  %17 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  store %struct.ib_device* %17, %struct.ib_device** %4, align 8
  %18 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @ib_mr_pool_destroy(%struct.TYPE_3__* %20, i32* %24)
  %26 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @ib_destroy_qp(%struct.TYPE_3__* %28)
  %30 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %31 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ib_free_cq(i32 %32)
  %34 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %35 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %36 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @nvme_rdma_free_ring(%struct.ib_device* %34, i32 %37, i32 %40, i32 4, i32 %41)
  %43 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %3, align 8
  %44 = call i32 @nvme_rdma_dev_put(%struct.nvme_rdma_device* %43)
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ib_mr_pool_destroy(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ib_destroy_qp(%struct.TYPE_3__*) #1

declare dso_local i32 @ib_free_cq(i32) #1

declare dso_local i32 @nvme_rdma_free_ring(%struct.ib_device*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_rdma_dev_put(%struct.nvme_rdma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
