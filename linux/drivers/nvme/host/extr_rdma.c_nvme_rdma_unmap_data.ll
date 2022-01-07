; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_unmap_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_unmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_4__*, %struct.nvme_rdma_device* }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_rdma_device = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.request = type { i32 }
%struct.nvme_rdma_request = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_rdma_queue*, %struct.request*)* @nvme_rdma_unmap_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_rdma_unmap_data(%struct.nvme_rdma_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.nvme_rdma_request*, align 8
  %6 = alloca %struct.nvme_rdma_device*, align 8
  %7 = alloca %struct.ib_device*, align 8
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.nvme_rdma_request* %9, %struct.nvme_rdma_request** %5, align 8
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %10, i32 0, i32 1
  %12 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %11, align 8
  store %struct.nvme_rdma_device* %12, %struct.nvme_rdma_device** %6, align 8
  %13 = load %struct.nvme_rdma_device*, %struct.nvme_rdma_device** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_rdma_device, %struct.nvme_rdma_device* %13, i32 0, i32 0
  %15 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  store %struct.ib_device* %15, %struct.ib_device** %7, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = call i32 @blk_rq_nr_phys_segments(%struct.request* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %27 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %30 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %34 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ib_mr_pool_put(%struct.TYPE_4__* %28, i32* %32, i32* %35)
  %37 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %38 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %25, %20
  %40 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %41 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %42 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %46 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = call i32 @rq_dma_dir(%struct.request* %48)
  %50 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %40, i32 %44, i32 %47, i32 %49)
  %51 = load %struct.request*, %struct.request** %4, align 8
  %52 = call i32 @nvme_cleanup_cmd(%struct.request* %51)
  %53 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %5, align 8
  %54 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %53, i32 0, i32 0
  %55 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %56 = call i32 @sg_free_table_chained(%struct.TYPE_3__* %54, i32 %55)
  br label %57

57:                                               ; preds = %39, %19
  ret void
}

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i32 @ib_mr_pool_put(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

declare dso_local i32 @sg_free_table_chained(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
