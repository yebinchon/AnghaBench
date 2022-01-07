; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_setup_sgls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_setup_sgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.dma_pool*, %struct.dma_pool* }
%struct.dma_pool = type { i32 }
%struct.request = type { i32 }
%struct.nvme_rw_command = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.nvme_sgl_desc }
%struct.nvme_sgl_desc = type { i32 }
%struct.nvme_iod = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@SGES_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.request*, %struct.nvme_rw_command*, i32)* @nvme_pci_setup_sgls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_setup_sgls(%struct.nvme_dev* %0, %struct.request* %1, %struct.nvme_rw_command* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_dev*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.nvme_rw_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvme_iod*, align 8
  %11 = alloca %struct.dma_pool*, align 8
  %12 = alloca %struct.nvme_sgl_desc*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvme_sgl_desc*, align 8
  %17 = alloca %struct.nvme_sgl_desc*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.nvme_rw_command* %2, %struct.nvme_rw_command** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.request*, %struct.request** %7, align 8
  %19 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %18)
  store %struct.nvme_iod* %19, %struct.nvme_iod** %10, align 8
  %20 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %21 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %20, i32 0, i32 2
  %22 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  store %struct.scatterlist* %22, %struct.scatterlist** %13, align 8
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %24 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %25 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %30 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %33 = call i32 @nvme_pci_sgl_set_data(%struct.nvme_sgl_desc* %31, %struct.scatterlist* %32)
  %34 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %131

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ule i64 %37, 64
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %41 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %40, i32 0, i32 1
  %42 = load %struct.dma_pool*, %struct.dma_pool** %41, align 8
  store %struct.dma_pool* %42, %struct.dma_pool** %11, align 8
  %43 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %44 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %47 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %46, i32 0, i32 0
  %48 = load %struct.dma_pool*, %struct.dma_pool** %47, align 8
  store %struct.dma_pool* %48, %struct.dma_pool** %11, align 8
  %49 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %50 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.nvme_sgl_desc* @dma_pool_alloc(%struct.dma_pool* %52, i32 %53, i32* %14)
  store %struct.nvme_sgl_desc* %54, %struct.nvme_sgl_desc** %12, align 8
  %55 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  %56 = icmp ne %struct.nvme_sgl_desc* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %59 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  %60 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %60, i32* %5, align 4
  br label %131

61:                                               ; preds = %51
  %62 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  %63 = load %struct.request*, %struct.request** %7, align 8
  %64 = call %struct.nvme_sgl_desc** @nvme_pci_iod_list(%struct.request* %63)
  %65 = getelementptr inbounds %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %64, i64 0
  store %struct.nvme_sgl_desc* %62, %struct.nvme_sgl_desc** %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %68 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %70 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @nvme_pci_sgl_set_seg(%struct.nvme_sgl_desc* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %125, %61
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @SGES_PER_PAGE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  store %struct.nvme_sgl_desc* %80, %struct.nvme_sgl_desc** %16, align 8
  %81 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %16, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %81, i64 %84
  store %struct.nvme_sgl_desc* %85, %struct.nvme_sgl_desc** %17, align 8
  %86 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call %struct.nvme_sgl_desc* @dma_pool_alloc(%struct.dma_pool* %86, i32 %87, i32* %14)
  store %struct.nvme_sgl_desc* %88, %struct.nvme_sgl_desc** %12, align 8
  %89 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  %90 = icmp ne %struct.nvme_sgl_desc* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %92, i32* %5, align 4
  br label %131

93:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  %94 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  %95 = load %struct.request*, %struct.request** %7, align 8
  %96 = call %struct.nvme_sgl_desc** @nvme_pci_iod_list(%struct.request* %95)
  %97 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %98 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %96, i64 %101
  store %struct.nvme_sgl_desc* %94, %struct.nvme_sgl_desc** %102, align 8
  %103 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %103, i64 %106
  %108 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %17, align 8
  %109 = bitcast %struct.nvme_sgl_desc* %107 to i8*
  %110 = bitcast %struct.nvme_sgl_desc* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 4, i1 false)
  %111 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %17, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @nvme_pci_sgl_set_seg(%struct.nvme_sgl_desc* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %93, %75
  %116 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %12, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %116, i64 %119
  %121 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %122 = call i32 @nvme_pci_sgl_set_data(%struct.nvme_sgl_desc* %120, %struct.scatterlist* %121)
  %123 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %124 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %123)
  store %struct.scatterlist* %124, %struct.scatterlist** %13, align 8
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %75, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %91, %57, %28
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @nvme_pci_sgl_set_data(%struct.nvme_sgl_desc*, %struct.scatterlist*) #1

declare dso_local %struct.nvme_sgl_desc* @dma_pool_alloc(%struct.dma_pool*, i32, i32*) #1

declare dso_local %struct.nvme_sgl_desc** @nvme_pci_iod_list(%struct.request*) #1

declare dso_local i32 @nvme_pci_sgl_set_seg(%struct.nvme_sgl_desc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
