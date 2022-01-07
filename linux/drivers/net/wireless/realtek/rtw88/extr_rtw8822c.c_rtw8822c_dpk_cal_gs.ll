; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_cal_gs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_cal_gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i64, i32* }

@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_IQK_CTL1 = common dso_local global i32 0, align 4
@BIT_BYPASS_DPD = common dso_local global i32 0, align 4
@BIT_TX_CFIR = common dso_local global i32 0, align 4
@REG_R_CONFIG = common dso_local global i32 0, align 4
@BIT_IQ_SWITCH = common dso_local global i32 0, align 4
@BIT_INNER_LB = common dso_local global i32 0, align 4
@REG_RXSRAM_CTL = common dso_local global i32 0, align 4
@BIT_DPD_CLK = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@REG_DPD_CTL0_S0 = common dso_local global i32 0, align 4
@BIT_GS_PWSF = common dso_local global i32 0, align 4
@REG_DPD_CTL1_S0 = common dso_local global i32 0, align 4
@BIT_DPD_EN = common dso_local global i32 0, align 4
@REG_DPD_CTL0_S1 = common dso_local global i32 0, align 4
@REG_DPD_CTL1_S1 = common dso_local global i32 0, align 4
@DPK_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@REG_DPD_CTL16 = common dso_local global i32 0, align 4
@REG_DPD_CTL15 = common dso_local global i32 0, align 4
@REG_DPD_CTL0 = common dso_local global i32 0, align 4
@MASKBYTE3 = common dso_local global i32 0, align 4
@RTW_DPK_CAL_PWR = common dso_local global i32 0, align 4
@BIT_RPT_SEL = common dso_local global i32 0, align 4
@REG_STAT_RPT = common dso_local global i32 0, align 4
@BIT_RPT_DGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_dpk_cal_gs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_cal_gs(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dpk_info*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.rtw_dpk_info* %9, %struct.rtw_dpk_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = load i32, i32* @REG_NCTL0, align 4
  %12 = load i32, i32* @BIT_SUBPAGE, align 4
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 1
  %15 = or i32 8, %14
  %16 = call i32 @rtw_write32_mask(%struct.rtw_dev* %10, i32 %11, i32 %12, i32 %15)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = load i32, i32* @REG_IQK_CTL1, align 4
  %19 = load i32, i32* @BIT_BYPASS_DPD, align 4
  %20 = call i32 @rtw_write32_mask(%struct.rtw_dev* %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = load i32, i32* @REG_IQK_CTL1, align 4
  %23 = load i32, i32* @BIT_TX_CFIR, align 4
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %26 = load i32, i32* @REG_R_CONFIG, align 4
  %27 = load i32, i32* @BIT_IQ_SWITCH, align 4
  %28 = call i32 @rtw_write32_mask(%struct.rtw_dev* %25, i32 %26, i32 %27, i32 9)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = load i32, i32* @REG_R_CONFIG, align 4
  %31 = load i32, i32* @BIT_INNER_LB, align 4
  %32 = call i32 @rtw_write32_mask(%struct.rtw_dev* %29, i32 %30, i32 %31, i32 1)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load i32, i32* @REG_NCTL0, align 4
  %35 = load i32, i32* @BIT_SUBPAGE, align 4
  %36 = call i32 @rtw_write32_mask(%struct.rtw_dev* %33, i32 %34, i32 %35, i32 12)
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %38 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %39 = load i32, i32* @BIT_DPD_CLK, align 4
  %40 = call i32 @rtw_write32_mask(%struct.rtw_dev* %37, i32 %38, i32 %39, i32 15)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RF_PATH_A, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i32, i32* @REG_DPD_CTL0_S0, align 4
  %47 = load i32, i32* @BIT_GS_PWSF, align 4
  %48 = call i32 @rtw_write32_mask(%struct.rtw_dev* %45, i32 %46, i32 %47, i32 17196672)
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %50 = load i32, i32* @REG_DPD_CTL1_S0, align 4
  %51 = load i32, i32* @BIT_DPD_EN, align 4
  %52 = call i32 @rtw_write32_mask(%struct.rtw_dev* %49, i32 %50, i32 %51, i32 1)
  br label %62

53:                                               ; preds = %2
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %55 = load i32, i32* @REG_DPD_CTL0_S1, align 4
  %56 = load i32, i32* @BIT_GS_PWSF, align 4
  %57 = call i32 @rtw_write32_mask(%struct.rtw_dev* %54, i32 %55, i32 %56, i32 17196672)
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %59 = load i32, i32* @REG_DPD_CTL1_S1, align 4
  %60 = load i32, i32* @BIT_DPD_EN, align 4
  %61 = call i32 @rtw_write32_mask(%struct.rtw_dev* %58, i32 %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %53, %44
  %63 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %64 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DPK_CHANNEL_WIDTH_80, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %70 = load i32, i32* @REG_DPD_CTL16, align 4
  %71 = call i32 @rtw_write32(%struct.rtw_dev* %69, i32 %70, i32 -2147478768)
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = load i32, i32* @REG_DPD_CTL16, align 4
  %74 = call i32 @rtw_write32(%struct.rtw_dev* %72, i32 %73, i32 4880)
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %76 = load i32, i32* @REG_DPD_CTL16, align 4
  %77 = call i32 @rtw_write32(%struct.rtw_dev* %75, i32 %76, i32 -2130706213)
  %78 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %79 = load i32, i32* @REG_DPD_CTL16, align 4
  %80 = call i32 @rtw_write32(%struct.rtw_dev* %78, i32 %79, i32 16777435)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %82 = load i32, i32* @REG_DPD_CTL16, align 4
  %83 = call i32 @rtw_write32(%struct.rtw_dev* %81, i32 %82, i32 46120)
  %84 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %85 = load i32, i32* @REG_DPD_CTL15, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = shl i32 %87, 28
  %89 = or i32 84017152, %88
  %90 = call i32 @rtw_write32(%struct.rtw_dev* %84, i32 %85, i32 %89)
  br label %114

91:                                               ; preds = %62
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = load i32, i32* @REG_DPD_CTL16, align 4
  %94 = call i32 @rtw_write32(%struct.rtw_dev* %92, i32 %93, i32 -2113922804)
  %95 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %96 = load i32, i32* @REG_DPD_CTL16, align 4
  %97 = call i32 @rtw_write32(%struct.rtw_dev* %95, i32 %96, i32 33560844)
  %98 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %99 = load i32, i32* @REG_DPD_CTL16, align 4
  %100 = call i32 @rtw_write32(%struct.rtw_dev* %98, i32 %99, i32 -2097025516)
  %101 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %102 = load i32, i32* @REG_DPD_CTL16, align 4
  %103 = call i32 @rtw_write32(%struct.rtw_dev* %101, i32 %102, i32 50458132)
  %104 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %105 = load i32, i32* @REG_DPD_CTL16, align 4
  %106 = call i32 @rtw_write32(%struct.rtw_dev* %104, i32 %105, i32 46120)
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %108 = load i32, i32* @REG_DPD_CTL15, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @BIT(i32 %109)
  %111 = shl i32 %110, 28
  %112 = or i32 84017160, %111
  %113 = call i32 @rtw_write32(%struct.rtw_dev* %107, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %91, %68
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %116 = load i32, i32* @REG_DPD_CTL0, align 4
  %117 = load i32, i32* @MASKBYTE3, align 4
  %118 = load i32, i32* %4, align 4
  %119 = or i32 8, %118
  %120 = call i32 @rtw_write32_mask(%struct.rtw_dev* %115, i32 %116, i32 %117, i32 %119)
  %121 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @RTW_DPK_CAL_PWR, align 4
  %124 = call i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %126 = load i32, i32* @REG_DPD_CTL15, align 4
  %127 = load i32, i32* @MASKBYTE3, align 4
  %128 = call i32 @rtw_write32_mask(%struct.rtw_dev* %125, i32 %126, i32 %127, i32 0)
  %129 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %130 = load i32, i32* @REG_NCTL0, align 4
  %131 = load i32, i32* @BIT_SUBPAGE, align 4
  %132 = load i32, i32* %4, align 4
  %133 = shl i32 %132, 1
  %134 = or i32 8, %133
  %135 = call i32 @rtw_write32_mask(%struct.rtw_dev* %129, i32 %130, i32 %131, i32 %134)
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %137 = load i32, i32* @REG_R_CONFIG, align 4
  %138 = load i32, i32* @BIT_IQ_SWITCH, align 4
  %139 = call i32 @rtw_write32_mask(%struct.rtw_dev* %136, i32 %137, i32 %138, i32 0)
  %140 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %141 = load i32, i32* @REG_R_CONFIG, align 4
  %142 = load i32, i32* @BIT_INNER_LB, align 4
  %143 = call i32 @rtw_write32_mask(%struct.rtw_dev* %140, i32 %141, i32 %142, i32 0)
  %144 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %145 = load i32, i32* @REG_NCTL0, align 4
  %146 = load i32, i32* @BIT_SUBPAGE, align 4
  %147 = call i32 @rtw_write32_mask(%struct.rtw_dev* %144, i32 %145, i32 %146, i32 12)
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @RF_PATH_A, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %114
  %152 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %153 = load i32, i32* @REG_DPD_CTL0_S0, align 4
  %154 = load i32, i32* @BIT_GS_PWSF, align 4
  %155 = call i32 @rtw_write32_mask(%struct.rtw_dev* %152, i32 %153, i32 %154, i32 91)
  br label %161

156:                                              ; preds = %114
  %157 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %158 = load i32, i32* @REG_DPD_CTL0_S1, align 4
  %159 = load i32, i32* @BIT_GS_PWSF, align 4
  %160 = call i32 @rtw_write32_mask(%struct.rtw_dev* %157, i32 %158, i32 %159, i32 91)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %163 = load i32, i32* @REG_RXSRAM_CTL, align 4
  %164 = load i32, i32* @BIT_RPT_SEL, align 4
  %165 = call i32 @rtw_write32_mask(%struct.rtw_dev* %162, i32 %163, i32 %164, i32 0)
  %166 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %167 = load i32, i32* @REG_STAT_RPT, align 4
  %168 = load i32, i32* @BIT_RPT_DGAIN, align 4
  %169 = call i64 @rtw_read32_mask(%struct.rtw_dev* %166, i32 %167, i32 %168)
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 %171, 910
  %173 = ashr i32 %172, 10
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @DIV_ROUND_CLOSEST(i32 %174, i32 10)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @RF_PATH_A, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %161
  %180 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %181 = load i32, i32* @REG_DPD_CTL0_S0, align 4
  %182 = load i32, i32* @BIT_GS_PWSF, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @rtw_write32_mask(%struct.rtw_dev* %180, i32 %181, i32 %182, i32 %183)
  br label %191

185:                                              ; preds = %161
  %186 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %187 = load i32, i32* @REG_DPD_CTL0_S1, align 4
  %188 = load i32, i32* @BIT_GS_PWSF, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @rtw_write32_mask(%struct.rtw_dev* %186, i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %179
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %5, align 8
  %194 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw8822c_dpk_one_shot(%struct.rtw_dev*, i32, i32) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
