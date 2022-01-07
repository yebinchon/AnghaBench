; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_alloc_qe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_alloc_qe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.nvme_rdma_qe = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.nvme_rdma_qe*, i64, i32)* @nvme_rdma_alloc_qe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_alloc_qe(%struct.ib_device* %0, %struct.nvme_rdma_qe* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.nvme_rdma_qe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.nvme_rdma_qe* %1, %struct.nvme_rdma_qe** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kzalloc(i64 %10, i32 %11)
  %13 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %14 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %16 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %25 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ib_dma_map_single(%struct.ib_device* %23, i32* %26, i64 %27, i32 %28)
  %30 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %31 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %33 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %34 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ib_dma_mapping_error(%struct.ib_device* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %22
  %39 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %40 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.nvme_rdma_qe*, %struct.nvme_rdma_qe** %7, align 8
  %44 = getelementptr inbounds %struct.nvme_rdma_qe, %struct.nvme_rdma_qe* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %38, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i32*, i64, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
