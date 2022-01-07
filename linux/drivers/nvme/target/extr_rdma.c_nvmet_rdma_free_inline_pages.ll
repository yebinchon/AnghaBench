; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_inline_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_free_inline_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_rdma_device = type { i32, i32, i32 }
%struct.nvmet_rdma_cmd = type { %struct.ib_sge*, %struct.scatterlist* }
%struct.ib_sge = type { i64, i32 }
%struct.scatterlist = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_rdma_device*, %struct.nvmet_rdma_cmd*)* @nvmet_rdma_free_inline_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_rdma_free_inline_pages(%struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_cmd* %1) #0 {
  %3 = alloca %struct.nvmet_rdma_device*, align 8
  %4 = alloca %struct.nvmet_rdma_cmd*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.ib_sge*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_rdma_device* %0, %struct.nvmet_rdma_device** %3, align 8
  store %struct.nvmet_rdma_cmd* %1, %struct.nvmet_rdma_cmd** %4, align 8
  %8 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %14, i32 0, i32 1
  %16 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  store %struct.scatterlist* %16, %struct.scatterlist** %5, align 8
  %17 = load %struct.nvmet_rdma_cmd*, %struct.nvmet_rdma_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.nvmet_rdma_cmd, %struct.nvmet_rdma_cmd* %17, i32 0, i32 0
  %19 = load %struct.ib_sge*, %struct.ib_sge** %18, align 8
  %20 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %19, i64 1
  store %struct.ib_sge* %20, %struct.ib_sge** %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %53, %13
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.ib_sge*, %struct.ib_sge** %6, align 8
  %29 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %3, align 8
  %34 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_sge*, %struct.ib_sge** %6, align 8
  %37 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ib_sge*, %struct.ib_sge** %6, align 8
  %40 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @ib_dma_unmap_page(i32 %35, i32 %38, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %27
  %45 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %46 = call i64 @sg_page(%struct.scatterlist* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %50 = call i64 @sg_page(%struct.scatterlist* %49)
  %51 = call i32 @__free_page(i64 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 1
  store %struct.scatterlist* %57, %struct.scatterlist** %5, align 8
  %58 = load %struct.ib_sge*, %struct.ib_sge** %6, align 8
  %59 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i32 1
  store %struct.ib_sge* %59, %struct.ib_sge** %6, align 8
  br label %21

60:                                               ; preds = %12, %21
  ret void
}

declare dso_local i32 @ib_dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @__free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
