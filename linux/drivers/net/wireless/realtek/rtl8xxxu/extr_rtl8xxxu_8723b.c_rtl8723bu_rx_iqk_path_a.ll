; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_rx_iqk_path_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_rx_iqk_path_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_S0S1_PATH_SWITCH = common dso_local global i32 0, align 4
@REG_FPGA0_IQK = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_WE_LUT = common dso_local global i32 0, align 4
@RF6052_REG_RCK_OS = common dso_local global i32 0, align 4
@RF6052_REG_TXPA_G1 = common dso_local global i32 0, align 4
@RF6052_REG_TXPA_G2 = common dso_local global i32 0, align 4
@REG_TX_IQK = common dso_local global i32 0, align 4
@REG_RX_IQK = common dso_local global i32 0, align 4
@REG_TX_IQK_TONE_A = common dso_local global i32 0, align 4
@REG_RX_IQK_TONE_A = common dso_local global i32 0, align 4
@REG_TX_IQK_TONE_B = common dso_local global i32 0, align 4
@REG_RX_IQK_TONE_B = common dso_local global i32 0, align 4
@REG_TX_IQK_PI_A = common dso_local global i32 0, align 4
@REG_RX_IQK_PI_A = common dso_local global i32 0, align 4
@REG_TX_IQK_PI_B = common dso_local global i32 0, align 4
@REG_RX_IQK_PI_B = common dso_local global i32 0, align 4
@REG_IQK_AGC_RSP = common dso_local global i32 0, align 4
@REG_BT_CONTROL_8723BU = common dso_local global i32 0, align 4
@REG_IQK_AGC_PTS = common dso_local global i32 0, align 4
@REG_RX_POWER_AFTER_IQK_A_2 = common dso_local global i32 0, align 4
@REG_TX_POWER_BEFORE_IQK_A = common dso_local global i32 0, align 4
@REG_TX_POWER_AFTER_IQK_A = common dso_local global i32 0, align 4
@RF6052_REG_UNKNOWN_DF = common dso_local global i32 0, align 4
@RF6052_REG_UNKNOWN_55 = common dso_local global i32 0, align 4
@REG_RX_POWER_BEFORE_IQK_A_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8723bu_rx_iqk_path_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723bu_rx_iqk_path_a(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %11 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %12 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %14 = load i32, i32* @REG_FPGA0_IQK, align 4
  %15 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %8, align 4
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %19 = load i32, i32* @REG_FPGA0_IQK, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %23 = load i32, i32* @RF_A, align 4
  %24 = load i32, i32* @RF6052_REG_WE_LUT, align 4
  %25 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 524288
  store i32 %27, i32* %8, align 4
  %28 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %29 = load i32, i32* @RF_A, align 4
  %30 = load i32, i32* @RF6052_REG_WE_LUT, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %34 = load i32, i32* @RF_A, align 4
  %35 = load i32, i32* @RF6052_REG_RCK_OS, align 4
  %36 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %33, i32 %34, i32 %35, i32 196608)
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %38 = load i32, i32* @RF_A, align 4
  %39 = load i32, i32* @RF6052_REG_TXPA_G1, align 4
  %40 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %37, i32 %38, i32 %39, i32 31)
  %41 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %42 = load i32, i32* @RF_A, align 4
  %43 = load i32, i32* @RF6052_REG_TXPA_G2, align 4
  %44 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %41, i32 %42, i32 %43, i32 1015735)
  %45 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %46 = load i32, i32* @REG_TX_IQK, align 4
  %47 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %45, i32 %46, i32 16808960)
  %48 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %49 = load i32, i32* @REG_RX_IQK, align 4
  %50 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %48, i32 %49, i32 16795648)
  %51 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %52 = load i32, i32* @REG_TX_IQK_TONE_A, align 4
  %53 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %51, i32 %52, i32 402689052)
  %54 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %55 = load i32, i32* @REG_RX_IQK_TONE_A, align 4
  %56 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %54, i32 %55, i32 939559964)
  %57 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %58 = load i32, i32* @REG_TX_IQK_TONE_B, align 4
  %59 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %57, i32 %58, i32 939559964)
  %60 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %61 = load i32, i32* @REG_RX_IQK_TONE_B, align 4
  %62 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %60, i32 %61, i32 939559964)
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %64 = load i32, i32* @REG_TX_IQK_PI_A, align 4
  %65 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %63, i32 %64, i32 -2112483344)
  %66 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %67 = load i32, i32* @REG_RX_IQK_PI_A, align 4
  %68 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %66, i32 %67, i32 672202752)
  %69 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %70 = load i32, i32* @REG_TX_IQK_PI_B, align 4
  %71 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %69, i32 %70, i32 -2112815104)
  %72 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %73 = load i32, i32* @REG_RX_IQK_PI_B, align 4
  %74 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %72, i32 %73, i32 672202752)
  %75 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %76 = load i32, i32* @REG_IQK_AGC_RSP, align 4
  %77 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %75, i32 %76, i32 4630801)
  %78 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %79 = load i32, i32* @REG_FPGA0_IQK, align 4
  %80 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 255
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, -2139095040
  store i32 %84, i32* %8, align 4
  %85 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %86 = load i32, i32* @REG_FPGA0_IQK, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %85, i32 %86, i32 %87)
  %89 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %90 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %1
  %94 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %95 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %96 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %94, i32 %95, i32 0)
  br label %101

97:                                               ; preds = %1
  %98 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %99 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %100 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %98, i32 %99, i32 640)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %103 = load i32, i32* @REG_BT_CONTROL_8723BU, align 4
  %104 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %102, i32 %103, i32 2048)
  %105 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %106 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %107 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %105, i32 %106, i32 -117440512)
  %108 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %109 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %110 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %108, i32 %109, i32 -134217728)
  %111 = call i32 @mdelay(i32 1)
  %112 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %113 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %112, i32 %113, i32 %114)
  %116 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %117 = load i32, i32* @REG_FPGA0_IQK, align 4
  %118 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 255
  store i32 %120, i32* %8, align 4
  %121 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %122 = load i32, i32* @REG_FPGA0_IQK, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %121, i32 %122, i32 %123)
  %125 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %126 = load i32, i32* @REG_RX_POWER_AFTER_IQK_A_2, align 4
  %127 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %129 = load i32, i32* @REG_TX_POWER_BEFORE_IQK_A, align 4
  %130 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %128, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %132 = load i32, i32* @REG_TX_POWER_AFTER_IQK_A, align 4
  %133 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 16
  %136 = and i32 %135, 1023
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 512
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %101
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 1024, %141
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %140, %101
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @BIT(i32 28)
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %5, align 4
  %150 = and i32 %149, 67043328
  %151 = icmp ne i32 %150, 21102592
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, 67043328
  %155 = icmp ne i32 %154, 4325376
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, 67043328
  %159 = icmp slt i32 %158, 17825792
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 67043328
  %163 = icmp sgt i32 %162, 15728640
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 15
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %171

170:                                              ; preds = %164, %160, %156, %152, %148, %143
  br label %348

171:                                              ; preds = %167
  %172 = load i32, i32* %5, align 4
  %173 = and i32 %172, 67043328
  %174 = or i32 -2147451904, %173
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 67043328
  %177 = ashr i32 %176, 16
  %178 = or i32 %174, %177
  store i32 %178, i32* %8, align 4
  %179 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %180 = load i32, i32* @REG_TX_IQK, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %179, i32 %180, i32 %181)
  %183 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %184 = load i32, i32* @REG_FPGA0_IQK, align 4
  %185 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %183, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, 255
  store i32 %187, i32* %8, align 4
  %188 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %189 = load i32, i32* @REG_FPGA0_IQK, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %188, i32 %189, i32 %190)
  %192 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %193 = load i32, i32* @RF_A, align 4
  %194 = load i32, i32* @RF6052_REG_WE_LUT, align 4
  %195 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %192, i32 %193, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = or i32 %196, 524288
  store i32 %197, i32* %8, align 4
  %198 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %199 = load i32, i32* @RF_A, align 4
  %200 = load i32, i32* @RF6052_REG_WE_LUT, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %198, i32 %199, i32 %200, i32 %201)
  %203 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %204 = load i32, i32* @RF_A, align 4
  %205 = load i32, i32* @RF6052_REG_RCK_OS, align 4
  %206 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %203, i32 %204, i32 %205, i32 196608)
  %207 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %208 = load i32, i32* @RF_A, align 4
  %209 = load i32, i32* @RF6052_REG_TXPA_G1, align 4
  %210 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %207, i32 %208, i32 %209, i32 31)
  %211 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %212 = load i32, i32* @RF_A, align 4
  %213 = load i32, i32* @RF6052_REG_TXPA_G2, align 4
  %214 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %211, i32 %212, i32 %213, i32 1015159)
  %215 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %216 = load i32, i32* @RF_A, align 4
  %217 = load i32, i32* @RF6052_REG_UNKNOWN_DF, align 4
  %218 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %215, i32 %216, i32 %217, i32 3968)
  %219 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %220 = load i32, i32* @RF_A, align 4
  %221 = load i32, i32* @RF6052_REG_UNKNOWN_55, align 4
  %222 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %219, i32 %220, i32 %221, i32 262687)
  %223 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %224 = load i32, i32* @REG_RX_IQK, align 4
  %225 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %223, i32 %224, i32 16795648)
  %226 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %227 = load i32, i32* @REG_TX_IQK_TONE_A, align 4
  %228 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %226, i32 %227, i32 939559964)
  %229 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %230 = load i32, i32* @REG_RX_IQK_TONE_A, align 4
  %231 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %229, i32 %230, i32 402689052)
  %232 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %233 = load i32, i32* @REG_TX_IQK_TONE_B, align 4
  %234 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %232, i32 %233, i32 939559964)
  %235 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %236 = load i32, i32* @REG_RX_IQK_TONE_B, align 4
  %237 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %235, i32 %236, i32 939559964)
  %238 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %239 = load i32, i32* @REG_TX_IQK_PI_A, align 4
  %240 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %238, i32 %239, i32 -2112815104)
  %241 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %242 = load i32, i32* @REG_RX_IQK_PI_A, align 4
  %243 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %241, i32 %242, i32 672530463)
  %244 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %245 = load i32, i32* @REG_TX_IQK_PI_B, align 4
  %246 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %244, i32 %245, i32 -2112815104)
  %247 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %248 = load i32, i32* @REG_RX_IQK_PI_B, align 4
  %249 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %247, i32 %248, i32 672202752)
  %250 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %251 = load i32, i32* @REG_IQK_AGC_RSP, align 4
  %252 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %250, i32 %251, i32 4630737)
  %253 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %254 = load i32, i32* @REG_FPGA0_IQK, align 4
  %255 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %253, i32 %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = and i32 %256, 255
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = or i32 %258, -2139095040
  store i32 %259, i32* %8, align 4
  %260 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %261 = load i32, i32* @REG_FPGA0_IQK, align 4
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %260, i32 %261, i32 %262)
  %264 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %265 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %268, label %272

268:                                              ; preds = %171
  %269 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %270 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %271 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %269, i32 %270, i32 0)
  br label %276

272:                                              ; preds = %171
  %273 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %274 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %275 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %273, i32 %274, i32 640)
  br label %276

276:                                              ; preds = %272, %268
  %277 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %278 = load i32, i32* @REG_BT_CONTROL_8723BU, align 4
  %279 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %277, i32 %278, i32 2048)
  %280 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %281 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %282 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %280, i32 %281, i32 -117440512)
  %283 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %284 = load i32, i32* @REG_IQK_AGC_PTS, align 4
  %285 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %283, i32 %284, i32 -134217728)
  %286 = call i32 @mdelay(i32 1)
  %287 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %288 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %289 = load i32, i32* %7, align 4
  %290 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %287, i32 %288, i32 %289)
  %291 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %292 = load i32, i32* @REG_FPGA0_IQK, align 4
  %293 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %291, i32 %292)
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %8, align 4
  %295 = and i32 %294, 255
  store i32 %295, i32* %8, align 4
  %296 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %297 = load i32, i32* @REG_FPGA0_IQK, align 4
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %296, i32 %297, i32 %298)
  %300 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %301 = load i32, i32* @REG_RX_POWER_AFTER_IQK_A_2, align 4
  %302 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %300, i32 %301)
  store i32 %302, i32* %4, align 4
  %303 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %304 = load i32, i32* @REG_RX_POWER_BEFORE_IQK_A_2, align 4
  %305 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %303, i32 %304)
  store i32 %305, i32* %3, align 4
  %306 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %307 = load i32, i32* @RF_A, align 4
  %308 = load i32, i32* @RF6052_REG_UNKNOWN_DF, align 4
  %309 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %306, i32 %307, i32 %308, i32 1920)
  %310 = load i32, i32* %4, align 4
  %311 = ashr i32 %310, 16
  %312 = and i32 %311, 1023
  store i32 %312, i32* %8, align 4
  %313 = load i32, i32* %8, align 4
  %314 = and i32 %313, 512
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %276
  %317 = load i32, i32* %8, align 4
  %318 = sub nsw i32 1024, %317
  store i32 %318, i32* %8, align 4
  br label %319

319:                                              ; preds = %316, %276
  %320 = load i32, i32* %4, align 4
  %321 = call i32 @BIT(i32 27)
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %346, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %3, align 4
  %326 = and i32 %325, 67043328
  %327 = icmp ne i32 %326, 20054016
  br i1 %327, label %328, label %346

328:                                              ; preds = %324
  %329 = load i32, i32* %4, align 4
  %330 = and i32 %329, 67043328
  %331 = icmp ne i32 %330, 3538944
  br i1 %331, label %332, label %346

332:                                              ; preds = %328
  %333 = load i32, i32* %3, align 4
  %334 = and i32 %333, 67043328
  %335 = icmp slt i32 %334, 17825792
  br i1 %335, label %336, label %346

336:                                              ; preds = %332
  %337 = load i32, i32* %3, align 4
  %338 = and i32 %337, 67043328
  %339 = icmp sgt i32 %338, 15728640
  br i1 %339, label %340, label %346

340:                                              ; preds = %336
  %341 = load i32, i32* %8, align 4
  %342 = icmp slt i32 %341, 15
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i32, i32* %9, align 4
  %345 = or i32 %344, 2
  store i32 %345, i32* %9, align 4
  br label %347

346:                                              ; preds = %340, %336, %332, %328, %324, %319
  br label %348

347:                                              ; preds = %343
  br label %348

348:                                              ; preds = %347, %346, %170
  %349 = load i32, i32* %9, align 4
  ret i32 %349
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
