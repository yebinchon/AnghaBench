; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_meminfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_meminfo_s = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_s = type { i32 }
%struct.bfa_mem_dma_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cfg_get_meminfo(%struct.bfa_iocfc_cfg_s* %0, %struct.bfa_meminfo_s* %1, %struct.bfa_s* %2) #0 {
  %4 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %5 = alloca %struct.bfa_meminfo_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca %struct.bfa_mem_dma_s*, align 8
  %8 = alloca %struct.bfa_mem_dma_s*, align 8
  %9 = alloca %struct.bfa_mem_dma_s*, align 8
  %10 = alloca %struct.bfa_mem_dma_s*, align 8
  %11 = alloca %struct.bfa_mem_dma_s*, align 8
  %12 = alloca %struct.bfa_mem_dma_s*, align 8
  %13 = alloca %struct.bfa_mem_dma_s*, align 8
  %14 = alloca %struct.bfa_mem_dma_s*, align 8
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %4, align 8
  store %struct.bfa_meminfo_s* %1, %struct.bfa_meminfo_s** %5, align 8
  store %struct.bfa_s* %2, %struct.bfa_s** %6, align 8
  %15 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %16 = call %struct.bfa_mem_dma_s* @BFA_MEM_PORT_DMA(%struct.bfa_s* %15)
  store %struct.bfa_mem_dma_s* %16, %struct.bfa_mem_dma_s** %7, align 8
  %17 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %18 = call %struct.bfa_mem_dma_s* @BFA_MEM_ABLK_DMA(%struct.bfa_s* %17)
  store %struct.bfa_mem_dma_s* %18, %struct.bfa_mem_dma_s** %8, align 8
  %19 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %20 = call %struct.bfa_mem_dma_s* @BFA_MEM_CEE_DMA(%struct.bfa_s* %19)
  store %struct.bfa_mem_dma_s* %20, %struct.bfa_mem_dma_s** %9, align 8
  %21 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %22 = call %struct.bfa_mem_dma_s* @BFA_MEM_SFP_DMA(%struct.bfa_s* %21)
  store %struct.bfa_mem_dma_s* %22, %struct.bfa_mem_dma_s** %10, align 8
  %23 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %24 = call %struct.bfa_mem_dma_s* @BFA_MEM_FLASH_DMA(%struct.bfa_s* %23)
  store %struct.bfa_mem_dma_s* %24, %struct.bfa_mem_dma_s** %11, align 8
  %25 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %26 = call %struct.bfa_mem_dma_s* @BFA_MEM_DIAG_DMA(%struct.bfa_s* %25)
  store %struct.bfa_mem_dma_s* %26, %struct.bfa_mem_dma_s** %12, align 8
  %27 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %28 = call %struct.bfa_mem_dma_s* @BFA_MEM_PHY_DMA(%struct.bfa_s* %27)
  store %struct.bfa_mem_dma_s* %28, %struct.bfa_mem_dma_s** %13, align 8
  %29 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %30 = call %struct.bfa_mem_dma_s* @BFA_MEM_FRU_DMA(%struct.bfa_s* %29)
  store %struct.bfa_mem_dma_s* %30, %struct.bfa_mem_dma_s** %14, align 8
  %31 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %32 = icmp eq %struct.bfa_iocfc_cfg_s* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %35 = icmp eq %struct.bfa_meminfo_s* %34, null
  br label %36

36:                                               ; preds = %33, %3
  %37 = phi i1 [ true, %3 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %41 = bitcast %struct.bfa_meminfo_s* %40 to i8*
  %42 = call i32 @memset(i8* %41, i32 0, i32 8)
  %43 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_meminfo_s, %struct.bfa_meminfo_s* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_meminfo_s, %struct.bfa_meminfo_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %52 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %53 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %54 = call i32 @bfa_iocfc_meminfo(%struct.bfa_iocfc_cfg_s* %51, %struct.bfa_meminfo_s* %52, %struct.bfa_s* %53)
  %55 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %56 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %57 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %58 = call i32 @bfa_sgpg_meminfo(%struct.bfa_iocfc_cfg_s* %55, %struct.bfa_meminfo_s* %56, %struct.bfa_s* %57)
  %59 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %60 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %61 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %62 = call i32 @bfa_fcport_meminfo(%struct.bfa_iocfc_cfg_s* %59, %struct.bfa_meminfo_s* %60, %struct.bfa_s* %61)
  %63 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %64 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %65 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %66 = call i32 @bfa_fcxp_meminfo(%struct.bfa_iocfc_cfg_s* %63, %struct.bfa_meminfo_s* %64, %struct.bfa_s* %65)
  %67 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %68 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %69 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %70 = call i32 @bfa_lps_meminfo(%struct.bfa_iocfc_cfg_s* %67, %struct.bfa_meminfo_s* %68, %struct.bfa_s* %69)
  %71 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %72 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %73 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %74 = call i32 @bfa_uf_meminfo(%struct.bfa_iocfc_cfg_s* %71, %struct.bfa_meminfo_s* %72, %struct.bfa_s* %73)
  %75 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %76 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %77 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %78 = call i32 @bfa_rport_meminfo(%struct.bfa_iocfc_cfg_s* %75, %struct.bfa_meminfo_s* %76, %struct.bfa_s* %77)
  %79 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %80 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %81 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %82 = call i32 @bfa_fcp_meminfo(%struct.bfa_iocfc_cfg_s* %79, %struct.bfa_meminfo_s* %80, %struct.bfa_s* %81)
  %83 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %84 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %85 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %86 = call i32 @bfa_dconf_meminfo(%struct.bfa_iocfc_cfg_s* %83, %struct.bfa_meminfo_s* %84, %struct.bfa_s* %85)
  %87 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %88 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %7, align 8
  %89 = call i32 (...) @bfa_port_meminfo()
  %90 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %87, %struct.bfa_mem_dma_s* %88, i32 %89)
  %91 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %92 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %8, align 8
  %93 = call i32 (...) @bfa_ablk_meminfo()
  %94 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %91, %struct.bfa_mem_dma_s* %92, i32 %93)
  %95 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %96 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %9, align 8
  %97 = call i32 (...) @bfa_cee_meminfo()
  %98 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %95, %struct.bfa_mem_dma_s* %96, i32 %97)
  %99 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %100 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %10, align 8
  %101 = call i32 (...) @bfa_sfp_meminfo()
  %102 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %99, %struct.bfa_mem_dma_s* %100, i32 %101)
  %103 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %104 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %11, align 8
  %105 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %106 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bfa_flash_meminfo(i32 %108)
  %110 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %103, %struct.bfa_mem_dma_s* %104, i32 %109)
  %111 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %112 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %12, align 8
  %113 = call i32 (...) @bfa_diag_meminfo()
  %114 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %111, %struct.bfa_mem_dma_s* %112, i32 %113)
  %115 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %116 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %13, align 8
  %117 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %118 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bfa_phy_meminfo(i32 %120)
  %122 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %115, %struct.bfa_mem_dma_s* %116, i32 %121)
  %123 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %124 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %14, align 8
  %125 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %126 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @bfa_fru_meminfo(i32 %128)
  %130 = call i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s* %123, %struct.bfa_mem_dma_s* %124, i32 %129)
  ret void
}

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_PORT_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_ABLK_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_CEE_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_SFP_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_FLASH_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_DIAG_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_PHY_DMA(%struct.bfa_s*) #1

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_FRU_DMA(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_iocfc_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_sgpg_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_fcport_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_fcxp_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_lps_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_uf_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_rport_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_fcp_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_dconf_meminfo(%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*) #1

declare dso_local i32 @bfa_mem_dma_setup(%struct.bfa_meminfo_s*, %struct.bfa_mem_dma_s*, i32) #1

declare dso_local i32 @bfa_port_meminfo(...) #1

declare dso_local i32 @bfa_ablk_meminfo(...) #1

declare dso_local i32 @bfa_cee_meminfo(...) #1

declare dso_local i32 @bfa_sfp_meminfo(...) #1

declare dso_local i32 @bfa_flash_meminfo(i32) #1

declare dso_local i32 @bfa_diag_meminfo(...) #1

declare dso_local i32 @bfa_phy_meminfo(i32) #1

declare dso_local i32 @bfa_fru_meminfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
