; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_alloc_tgt_pgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_alloc_tgt_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_fcp_iod = type { i32, i64, %struct.scatterlist*, %struct.scatterlist*, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.scatterlist = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVMET_FCP_WRITE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_fc_fcp_iod*)* @nvmet_fc_alloc_tgt_pgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_fc_alloc_tgt_pgs(%struct.nvmet_fc_fcp_iod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmet_fc_fcp_iod* %0, %struct.nvmet_fc_fcp_iod** %3, align 8
  %6 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scatterlist* @sgl_alloc(i32 %9, i32 %10, i32* %5)
  store %struct.scatterlist* %11, %struct.scatterlist** %4, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %13 = icmp ne %struct.scatterlist* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %17 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %18 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %17, i32 0, i32 2
  store %struct.scatterlist* %16, %struct.scatterlist** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %21 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %23 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %30 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NVMET_FCP_WRITE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %38

36:                                               ; preds = %15
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @fc_dma_map_sg(i32 %26, %struct.scatterlist* %27, i32 %28, i32 %39)
  %41 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %42 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %44 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %43, i32 0, i32 2
  %45 = load %struct.scatterlist*, %struct.scatterlist** %44, align 8
  %46 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %3, align 8
  %47 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %46, i32 0, i32 3
  store %struct.scatterlist* %45, %struct.scatterlist** %47, align 8
  store i32 0, i32* %2, align 4
  br label %50

48:                                               ; preds = %14
  %49 = load i32, i32* @NVME_SC_INTERNAL, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %38
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.scatterlist* @sgl_alloc(i32, i32, i32*) #1

declare dso_local i32 @fc_dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
