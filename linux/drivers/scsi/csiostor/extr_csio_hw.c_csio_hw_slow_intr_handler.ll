; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_slow_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_slow_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@PL_INT_CAUSE_A = common dso_local global i32 0, align 4
@CSIO_GLBL_INTR_MASK = common dso_local global i32 0, align 4
@n_plint_unexp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Slow interrupt! cause: 0x%x\0A\00", align 1
@n_plint_cnt = common dso_local global i32 0, align 4
@CIM_F = common dso_local global i32 0, align 4
@MPS_F = common dso_local global i32 0, align 4
@NCSI_F = common dso_local global i32 0, align 4
@PL_F = common dso_local global i32 0, align 4
@SMB_F = common dso_local global i32 0, align 4
@XGMAC0_F = common dso_local global i32 0, align 4
@XGMAC1_F = common dso_local global i32 0, align 4
@XGMAC_KR0_F = common dso_local global i32 0, align 4
@XGMAC_KR1_F = common dso_local global i32 0, align 4
@PCIE_F = common dso_local global i32 0, align 4
@MC_F = common dso_local global i32 0, align 4
@MEM_MC = common dso_local global i32 0, align 4
@EDC0_F = common dso_local global i32 0, align 4
@MEM_EDC0 = common dso_local global i32 0, align 4
@EDC1_F = common dso_local global i32 0, align 4
@MEM_EDC1 = common dso_local global i32 0, align 4
@LE_F = common dso_local global i32 0, align 4
@TP_F = common dso_local global i32 0, align 4
@MA_F = common dso_local global i32 0, align 4
@PM_TX_F = common dso_local global i32 0, align 4
@PM_RX_F = common dso_local global i32 0, align 4
@ULP_RX_F = common dso_local global i32 0, align 4
@CPL_SWITCH_F = common dso_local global i32 0, align 4
@SGE_F = common dso_local global i32 0, align 4
@ULP_TX_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_hw_slow_intr_handler(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %5 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %6 = load i32, i32* @PL_INT_CAUSE_A, align 4
  %7 = call i32 @csio_rd_reg32(%struct.csio_hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CSIO_GLBL_INTR_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %14 = load i32, i32* @n_plint_unexp, align 4
  %15 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %13, i32 %14)
  store i32 0, i32* %2, align 4
  br label %217

16:                                               ; preds = %1
  %17 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @csio_dbg(%struct.csio_hw* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %21 = load i32, i32* @n_plint_cnt, align 4
  %22 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @CIM_F, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %29 = call i32 @csio_cim_intr_handler(%struct.csio_hw* %28)
  br label %30

30:                                               ; preds = %27, %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MPS_F, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %37 = call i32 @csio_mps_intr_handler(%struct.csio_hw* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NCSI_F, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %45 = call i32 @csio_ncsi_intr_handler(%struct.csio_hw* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PL_F, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %53 = call i32 @csio_pl_intr_handler(%struct.csio_hw* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SMB_F, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %61 = call i32 @csio_smb_intr_handler(%struct.csio_hw* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XGMAC0_F, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %69 = call i32 @csio_xgmac_intr_handler(%struct.csio_hw* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @XGMAC1_F, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %77 = call i32 @csio_xgmac_intr_handler(%struct.csio_hw* %76, i32 1)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @XGMAC_KR0_F, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %85 = call i32 @csio_xgmac_intr_handler(%struct.csio_hw* %84, i32 2)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @XGMAC_KR1_F, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %93 = call i32 @csio_xgmac_intr_handler(%struct.csio_hw* %92, i32 3)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @PCIE_F, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %101 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = bitcast {}** %103 to i32 (%struct.csio_hw*)**
  %105 = load i32 (%struct.csio_hw*)*, i32 (%struct.csio_hw*)** %104, align 8
  %106 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %107 = call i32 %105(%struct.csio_hw* %106)
  br label %108

108:                                              ; preds = %99, %94
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MC_F, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %115 = load i32, i32* @MEM_MC, align 4
  %116 = call i32 @csio_mem_intr_handler(%struct.csio_hw* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @EDC0_F, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %124 = load i32, i32* @MEM_EDC0, align 4
  %125 = call i32 @csio_mem_intr_handler(%struct.csio_hw* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @EDC1_F, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %133 = load i32, i32* @MEM_EDC1, align 4
  %134 = call i32 @csio_mem_intr_handler(%struct.csio_hw* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @LE_F, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %142 = call i32 @csio_le_intr_handler(%struct.csio_hw* %141)
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @TP_F, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %150 = call i32 @csio_tp_intr_handler(%struct.csio_hw* %149)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @MA_F, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %158 = call i32 @csio_ma_intr_handler(%struct.csio_hw* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @PM_TX_F, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %166 = call i32 @csio_pmtx_intr_handler(%struct.csio_hw* %165)
  br label %167

167:                                              ; preds = %164, %159
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @PM_RX_F, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %174 = call i32 @csio_pmrx_intr_handler(%struct.csio_hw* %173)
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @ULP_RX_F, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %182 = call i32 @csio_ulprx_intr_handler(%struct.csio_hw* %181)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @CPL_SWITCH_F, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %190 = call i32 @csio_cplsw_intr_handler(%struct.csio_hw* %189)
  br label %191

191:                                              ; preds = %188, %183
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @SGE_F, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %198 = call i32 @csio_sge_intr_handler(%struct.csio_hw* %197)
  br label %199

199:                                              ; preds = %196, %191
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @ULP_TX_F, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %206 = call i32 @csio_ulptx_intr_handler(%struct.csio_hw* %205)
  br label %207

207:                                              ; preds = %204, %199
  %208 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @CSIO_GLBL_INTR_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @PL_INT_CAUSE_A, align 4
  %213 = call i32 @csio_wr_reg32(%struct.csio_hw* %208, i32 %211, i32 %212)
  %214 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %215 = load i32, i32* @PL_INT_CAUSE_A, align 4
  %216 = call i32 @csio_rd_reg32(%struct.csio_hw* %214, i32 %215)
  store i32 1, i32* %2, align 4
  br label %217

217:                                              ; preds = %207, %12
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @csio_rd_reg32(%struct.csio_hw*, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @csio_cim_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_mps_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_ncsi_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_pl_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_smb_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_xgmac_intr_handler(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_mem_intr_handler(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_le_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_tp_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_ma_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_pmtx_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_pmrx_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_ulprx_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_cplsw_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_sge_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_ulptx_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
