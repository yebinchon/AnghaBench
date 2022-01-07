; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PL_INT_ENABLE_A = common dso_local global i32 0, align 4
@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@PL_WHOAMI_A = common dso_local global i32 0, align 4
@CSIO_IM_MSIX = common dso_local global i64 0, align 8
@PCIE_PF_CFG_A = common dso_local global i32 0, align 4
@AIVEC_M = common dso_local global i32 0, align 4
@CSIO_IM_MSI = common dso_local global i64 0, align 8
@PF_INTR_MASK = common dso_local global i32 0, align 4
@PL_PF_INT_ENABLE_A = common dso_local global i32 0, align 4
@SF_F = common dso_local global i32 0, align 4
@ERR_CPL_EXCEED_IQE_SIZE_F = common dso_local global i32 0, align 4
@EGRESS_SIZE_ERR_F = common dso_local global i32 0, align 4
@ERR_INVALID_CIDX_INC_F = common dso_local global i32 0, align 4
@ERR_CPL_OPCODE_0_F = common dso_local global i32 0, align 4
@ERR_DROPPED_DB_F = common dso_local global i32 0, align 4
@ERR_DATA_CPL_ON_HIGH_QID1_F = common dso_local global i32 0, align 4
@ERR_DATA_CPL_ON_HIGH_QID0_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX3_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX2_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX1_F = common dso_local global i32 0, align 4
@ERR_BAD_DB_PIDX0_F = common dso_local global i32 0, align 4
@ERR_ING_CTXT_PRIO_F = common dso_local global i32 0, align 4
@ERR_EGR_CTXT_PRIO_F = common dso_local global i32 0, align 4
@INGRESS_SIZE_ERR_F = common dso_local global i32 0, align 4
@SGE_INT_ENABLE3_A = common dso_local global i32 0, align 4
@PL_INT_MAP0_A = common dso_local global i32 0, align 4
@CSIO_HWF_HW_INTR_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_hw_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_hw_intr_enable(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %6 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %7 = call i32 @csio_hw_to_mbm(%struct.csio_hw* %6)
  %8 = call i32 @csio_get_mb_intr_idx(i32 %7)
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %10 = load i32, i32* @PL_INT_ENABLE_A, align 4
  %11 = call i32 @csio_rd_reg32(%struct.csio_hw* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @csio_is_t5(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %23 = load i32, i32* @PL_WHOAMI_A, align 4
  %24 = call i32 @csio_rd_reg32(%struct.csio_hw* %22, i32 %23)
  %25 = call i32 @SOURCEPF_G(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %28 = load i32, i32* @PL_WHOAMI_A, align 4
  %29 = call i32 @csio_rd_reg32(%struct.csio_hw* %27, i32 %28)
  %30 = call i32 @T6_SOURCEPF_G(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CSIO_IM_MSIX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %39 = load i32, i32* @PCIE_PF_CFG_A, align 4
  %40 = call i32 @MYPF_REG(i32 %39)
  %41 = load i32, i32* @AIVEC_M, align 4
  %42 = call i32 @AIVEC_V(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @csio_set_reg_field(%struct.csio_hw* %38, i32 %40, i32 %42, i32 %43)
  br label %59

45:                                               ; preds = %31
  %46 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %47 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CSIO_IM_MSI, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %53 = load i32, i32* @PCIE_PF_CFG_A, align 4
  %54 = call i32 @MYPF_REG(i32 %53)
  %55 = load i32, i32* @AIVEC_M, align 4
  %56 = call i32 @AIVEC_V(i32 %55)
  %57 = call i32 @csio_set_reg_field(%struct.csio_hw* %52, i32 %54, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %61 = load i32, i32* @PF_INTR_MASK, align 4
  %62 = load i32, i32* @PL_PF_INT_ENABLE_A, align 4
  %63 = call i32 @MYPF_REG(i32 %62)
  %64 = call i32 @csio_wr_reg32(%struct.csio_hw* %60, i32 %61, i32 %63)
  %65 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %66 = call i32 @csio_mb_intr_enable(%struct.csio_hw* %65)
  %67 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %68 = call i64 @csio_is_hw_master(%struct.csio_hw* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %59
  %71 = load i32, i32* @SF_F, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PL_INT_ENABLE_A, align 4
  %78 = call i32 @csio_wr_reg32(%struct.csio_hw* %75, i32 %76, i32 %77)
  %79 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %80 = load i32, i32* @ERR_CPL_EXCEED_IQE_SIZE_F, align 4
  %81 = load i32, i32* @EGRESS_SIZE_ERR_F, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @ERR_INVALID_CIDX_INC_F, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @ERR_CPL_OPCODE_0_F, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ERR_DROPPED_DB_F, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @ERR_DATA_CPL_ON_HIGH_QID1_F, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @ERR_DATA_CPL_ON_HIGH_QID0_F, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ERR_BAD_DB_PIDX3_F, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @ERR_BAD_DB_PIDX2_F, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ERR_BAD_DB_PIDX1_F, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @ERR_BAD_DB_PIDX0_F, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ERR_ING_CTXT_PRIO_F, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @ERR_EGR_CTXT_PRIO_F, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @INGRESS_SIZE_ERR_F, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @SGE_INT_ENABLE3_A, align 4
  %108 = call i32 @csio_wr_reg32(%struct.csio_hw* %79, i32 %106, i32 %107)
  %109 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %110 = load i32, i32* @PL_INT_MAP0_A, align 4
  %111 = load i32, i32* %4, align 4
  %112 = shl i32 1, %111
  %113 = call i32 @csio_set_reg_field(%struct.csio_hw* %109, i32 %110, i32 0, i32 %112)
  br label %114

114:                                              ; preds = %70, %59
  %115 = load i32, i32* @CSIO_HWF_HW_INTR_ENABLED, align 4
  %116 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %117 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  ret void
}

declare dso_local i32 @csio_get_mb_intr_idx(i32) #1

declare dso_local i32 @csio_hw_to_mbm(%struct.csio_hw*) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i64 @csio_is_t5(i32) #1

declare dso_local i32 @SOURCEPF_G(i32) #1

declare dso_local i32 @T6_SOURCEPF_G(i32) #1

declare dso_local i32 @csio_set_reg_field(%struct.csio_hw*, i32, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @AIVEC_V(i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @csio_mb_intr_enable(%struct.csio_hw*) #1

declare dso_local i64 @csio_is_hw_master(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
