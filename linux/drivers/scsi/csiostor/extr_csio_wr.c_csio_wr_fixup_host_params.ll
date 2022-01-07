; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_fixup_host_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_wr.c_csio_wr_fixup_host_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.csio_wrm = type { %struct.csio_sge }
%struct.csio_sge = type { i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SGE_HOST_PAGE_SIZE_A = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_16B_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_64B_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@INGPADBOUNDARY_32B_X = common dso_local global i32 0, align 4
@T6_INGPADBOUNDARY_8B_X = common dso_local global i32 0, align 4
@SGE_CONTROL_A = common dso_local global i32 0, align 4
@INGPADBOUNDARY_M = common dso_local global i32 0, align 4
@EGRSTATUSPAGESIZE_F = common dso_local global i32 0, align 4
@SGE_CONTROL2_A = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_M = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE0_A = common dso_local global i32 0, align 4
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE2_A = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE3_A = common dso_local global i32 0, align 4
@ULP_RX_TDDP_PSZ_A = common dso_local global i32 0, align 4
@PKTSHIFT_M = common dso_local global i32 0, align 4
@CSIO_SGE_RX_DMA_OFFSET = common dso_local global i32 0, align 4
@TP_INGRESS_CONFIG_A = common dso_local global i32 0, align 4
@CSUM_HAS_PSEUDO_HDR_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*)* @csio_wr_fixup_host_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_wr_fixup_host_params(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca %struct.csio_wrm*, align 8
  %4 = alloca %struct.csio_sge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  %16 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %17 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %16)
  store %struct.csio_wrm* %17, %struct.csio_wrm** %3, align 8
  %18 = load %struct.csio_wrm*, %struct.csio_wrm** %3, align 8
  %19 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %18, i32 0, i32 0
  store %struct.csio_sge* %19, %struct.csio_sge** %4, align 8
  %20 = load i32, i32* @L1_CACHE_BYTES, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = sub nsw i32 %21, 10
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 64
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 128, i32 64
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 32, %29 ], [ %31, %30 ]
  store i32 %33, i32* %8, align 4
  %34 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @HOSTPAGESIZEPF0_V(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @HOSTPAGESIZEPF1_V(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @HOSTPAGESIZEPF2_V(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @HOSTPAGESIZEPF3_V(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @HOSTPAGESIZEPF4_V(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @HOSTPAGESIZEPF5_V(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @HOSTPAGESIZEPF6_V(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @HOSTPAGESIZEPF7_V(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @SGE_HOST_PAGE_SIZE_A, align 4
  %59 = call i32 @csio_wr_reg32(%struct.csio_hw* %34, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %62 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i64 @pci_is_pcie(%struct.TYPE_3__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %32
  %67 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %68 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %71 = call i32 @pcie_capability_read_word(%struct.TYPE_3__* %69, i32 %70, i32* %14)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %74 = and i32 %72, %73
  %75 = ashr i32 %74, 5
  %76 = add nsw i32 %75, 7
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 1, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %66
  br label %85

85:                                               ; preds = %84, %32
  %86 = load i32, i32* %9, align 4
  %87 = icmp sle i32 %86, 16
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @INGPACKBOUNDARY_16B_X, align 4
  store i32 %89, i32* %11, align 4
  store i32 16, i32* %8, align 4
  br label %104

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @INGPACKBOUNDARY_64B_X, align 4
  store i32 %94, i32* %11, align 4
  store i32 64, i32* %8, align 4
  br label %103

95:                                               ; preds = %90
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @fls(i32 %96)
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @INGPACKBOUNDARY_SHIFT_X, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %95, %93
  br label %104

104:                                              ; preds = %103, %88
  %105 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %106 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %111 = and i32 %109, %110
  %112 = call i64 @csio_is_t5(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* @INGPADBOUNDARY_32B_X, align 4
  store i32 %115, i32* %10, align 4
  br label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @T6_INGPADBOUNDARY_8B_X, align 4
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %120 = load i32, i32* @SGE_CONTROL_A, align 4
  %121 = load i32, i32* @INGPADBOUNDARY_M, align 4
  %122 = call i32 @INGPADBOUNDARY_V(i32 %121)
  %123 = load i32, i32* @EGRSTATUSPAGESIZE_F, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @INGPADBOUNDARY_V(i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 64
  %129 = zext i1 %128 to i32
  %130 = call i32 @EGRSTATUSPAGESIZE_V(i32 %129)
  %131 = or i32 %126, %130
  %132 = call i32 @csio_set_reg_field(%struct.csio_hw* %119, i32 %120, i32 %124, i32 %131)
  %133 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %134 = load i32, i32* @SGE_CONTROL2_A, align 4
  %135 = load i32, i32* @INGPACKBOUNDARY_M, align 4
  %136 = call i32 @INGPACKBOUNDARY_V(i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @INGPACKBOUNDARY_V(i32 %137)
  %139 = call i32 @csio_set_reg_field(%struct.csio_hw* %133, i32 %134, i32 %136, i32 %138)
  %140 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = load i32, i32* @SGE_FL_BUFFER_SIZE0_A, align 4
  %143 = call i32 @csio_wr_reg32(%struct.csio_hw* %140, i32 %141, i32 %142)
  %144 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %145 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %118
  %151 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %152 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %153 = load i32, i32* @SGE_FL_BUFFER_SIZE2_A, align 4
  %154 = call i32 @csio_rd_reg32(%struct.csio_hw* %152, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %158, 1
  %160 = xor i32 %159, -1
  %161 = and i32 %157, %160
  %162 = load i32, i32* @SGE_FL_BUFFER_SIZE2_A, align 4
  %163 = call i32 @csio_wr_reg32(%struct.csio_hw* %151, i32 %161, i32 %162)
  %164 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %165 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %166 = load i32, i32* @SGE_FL_BUFFER_SIZE3_A, align 4
  %167 = call i32 @csio_rd_reg32(%struct.csio_hw* %165, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %167, %168
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = xor i32 %172, -1
  %174 = and i32 %170, %173
  %175 = load i32, i32* @SGE_FL_BUFFER_SIZE3_A, align 4
  %176 = call i32 @csio_wr_reg32(%struct.csio_hw* %164, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %150, %118
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.csio_sge*, %struct.csio_sge** %4, align 8
  %180 = getelementptr inbounds %struct.csio_sge, %struct.csio_sge* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %182 = load i32, i32* @PAGE_SHIFT, align 4
  %183 = sub nsw i32 %182, 12
  %184 = call i32 @HPZ0_V(i32 %183)
  %185 = load i32, i32* @ULP_RX_TDDP_PSZ_A, align 4
  %186 = call i32 @csio_wr_reg32(%struct.csio_hw* %181, i32 %184, i32 %185)
  %187 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %188 = load i32, i32* @SGE_CONTROL_A, align 4
  %189 = load i32, i32* @PKTSHIFT_M, align 4
  %190 = call i32 @PKTSHIFT_V(i32 %189)
  %191 = load i32, i32* @CSIO_SGE_RX_DMA_OFFSET, align 4
  %192 = call i32 @PKTSHIFT_V(i32 %191)
  %193 = call i32 @csio_set_reg_field(%struct.csio_hw* %187, i32 %188, i32 %190, i32 %192)
  %194 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %195 = load i32, i32* @TP_INGRESS_CONFIG_A, align 4
  %196 = load i32, i32* @CSUM_HAS_PSEUDO_HDR_F, align 4
  %197 = call i32 @csio_hw_tp_wr_bits_indirect(%struct.csio_hw* %194, i32 %195, i32 %196, i32 0)
  ret void
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @HOSTPAGESIZEPF0_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF1_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF2_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF3_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF4_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF5_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF6_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF7_V(i32) #1

declare dso_local i64 @pci_is_pcie(%struct.TYPE_3__*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @csio_is_t5(i32) #1

declare dso_local i32 @csio_set_reg_field(%struct.csio_hw*, i32, i32, i32) #1

declare dso_local i32 @INGPADBOUNDARY_V(i32) #1

declare dso_local i32 @EGRSTATUSPAGESIZE_V(i32) #1

declare dso_local i32 @INGPACKBOUNDARY_V(i32) #1

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @HPZ0_V(i32) #1

declare dso_local i32 @PKTSHIFT_V(i32) #1

declare dso_local i32 @csio_hw_tp_wr_bits_indirect(%struct.csio_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
