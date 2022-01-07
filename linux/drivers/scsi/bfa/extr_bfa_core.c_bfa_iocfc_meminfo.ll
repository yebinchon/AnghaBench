; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_meminfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bfa_meminfo_s = type { i32 }
%struct.bfa_s = type { i32 }
%struct.bfa_mem_dma_s = type { i32 }
%struct.bfa_mem_kva_s = type { i32 }

@BFA_DMA_ALIGN_SZ = common dso_local global i32 0, align 4
@BFI_LMSG_SZ = common dso_local global i32 0, align 4
@BFA_CACHELINE_SZ = common dso_local global i32 0, align 4
@BFA_DBG_FWTRC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_iocfc_meminfo(%struct.bfa_iocfc_cfg_s* %0, %struct.bfa_meminfo_s* %1, %struct.bfa_s* %2) #0 {
  %4 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %5 = alloca %struct.bfa_meminfo_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_mem_dma_s*, align 8
  %11 = alloca %struct.bfa_mem_dma_s*, align 8
  %12 = alloca %struct.bfa_mem_kva_s*, align 8
  %13 = alloca i32, align 4
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %4, align 8
  store %struct.bfa_meminfo_s* %1, %struct.bfa_meminfo_s** %5, align 8
  store %struct.bfa_s* %2, %struct.bfa_s** %6, align 8
  %14 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %15 = call %struct.bfa_mem_dma_s* @BFA_MEM_IOC_DMA(%struct.bfa_s* %14)
  store %struct.bfa_mem_dma_s* %15, %struct.bfa_mem_dma_s** %10, align 8
  %16 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %17 = call %struct.bfa_mem_dma_s* @BFA_MEM_IOCFC_DMA(%struct.bfa_s* %16)
  store %struct.bfa_mem_dma_s* %17, %struct.bfa_mem_dma_s** %11, align 8
  %18 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %19 = call %struct.bfa_mem_kva_s* @BFA_MEM_IOCFC_KVA(%struct.bfa_s* %18)
  store %struct.bfa_mem_kva_s* %19, %struct.bfa_mem_kva_s** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %21 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %10, align 8
  %22 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %23 = call i32 @BFA_ROUNDUP(i32 4, i32 %22)
  %24 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %20, %struct.bfa_mem_dma_s* %21, i32 %23)
  %25 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BFI_LMSG_SZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %32 = call i32 @BFA_ROUNDUP(i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BFI_LMSG_SZ, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %40 = call i32 @BFA_ROUNDUP(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %61, %3
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %50 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.bfa_mem_dma_s* @BFA_MEM_REQQ_DMA(%struct.bfa_s* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %49, %struct.bfa_mem_dma_s* %52, i32 %53)
  %55 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %56 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.bfa_mem_dma_s* @BFA_MEM_RSPQ_DMA(%struct.bfa_s* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %55, %struct.bfa_mem_dma_s* %58, i32 %59)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %41

64:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %68 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @BFA_CACHELINE_SZ, align 4
  %74 = mul nsw i32 2, %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i32, i32* @BFA_CACHELINE_SZ, align 4
  %82 = call i32 @BFA_ROUNDUP(i32 4, i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @BFA_CACHELINE_SZ, align 4
  %86 = call i32 @BFA_ROUNDUP(i32 4, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %90 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %89, %struct.bfa_mem_dma_s* %90, i32 %91)
  %93 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %94 = load %struct.bfa_mem_kva_s*, %struct.bfa_mem_kva_s** %12, align 8
  %95 = load i32, i32* @BFA_DBG_FWTRC_LEN, align 4
  %96 = call i32 @bfa_mem_kva_setup(%struct.bfa_meminfo_s* %93, %struct.bfa_mem_kva_s* %94, i32 %95)
  ret void
}

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_IOC_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_IOCFC_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_kva_s* @BFA_MEM_IOCFC_KVA(%struct.bfa_s*) #1

declare dso_local i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s*, %struct.bfa_mem_dma_s*, i32) #1

declare dso_local i32 @BFA_ROUNDUP(i32, i32) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_REQQ_DMA(%struct.bfa_s*, i32) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_RSPQ_DMA(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_mem_kva_setup(%struct.bfa_meminfo_s*, %struct.bfa_mem_kva_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
