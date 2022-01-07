; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen2_config_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen2_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__, %struct.rtl8xxxu_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtl8xxxu_priv = type { i32 }

@REG_WMAC_TRXPTCL_CTL = common dso_local global i32 0, align 4
@WMAC_TRXPTCL_CTL_BW_MASK = common dso_local global i32 0, align 4
@REG_RESPONSE_RATE_SET = common dso_local global i32 0, align 4
@WMAC_TRXPTCL_CTL_BW_20 = common dso_local global i32 0, align 4
@REG_FPGA0_RF_MODE = common dso_local global i32 0, align 4
@FPGA_RF_MODE = common dso_local global i32 0, align 4
@REG_FPGA1_RF_MODE = common dso_local global i32 0, align 4
@REG_OFDM0_TX_PSDO_NOISE_WEIGHT = common dso_local global i32 0, align 4
@WMAC_TRXPTCL_CTL_BW_40 = common dso_local global i32 0, align 4
@REG_CCK0_SYSTEM = common dso_local global i32 0, align 4
@CCK0_SIDEBAND = common dso_local global i32 0, align 4
@REG_OFDM1_LSTF = common dso_local global i32 0, align 4
@OFDM_LSTF_PRIME_CH_MASK = common dso_local global i32 0, align 4
@OFDM_LSTF_PRIME_CH_LOW = common dso_local global i32 0, align 4
@OFDM_LSTF_PRIME_CH_HIGH = common dso_local global i32 0, align 4
@REG_FPGA0_POWER_SAVE = common dso_local global i32 0, align 4
@FPGA0_PS_LOWER_CHANNEL = common dso_local global i32 0, align 4
@FPGA0_PS_UPPER_CHANNEL = common dso_local global i32 0, align 4
@WMAC_TRXPTCL_CTL_BW_80 = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_MODE_AG = common dso_local global i32 0, align 4
@MODE_AG_CHANNEL_MASK = common dso_local global i32 0, align 4
@REG_DATA_SUBCHANNEL = common dso_local global i64 0, align 8
@REG_SIFS_CCK = common dso_local global i64 0, align 8
@REG_SIFS_OFDM = common dso_local global i64 0, align 8
@REG_R2T_SIFS = common dso_local global i32 0, align 4
@REG_T2T_SIFS = common dso_local global i32 0, align 4
@MODE_AG_BW_MASK = common dso_local global i32 0, align 4
@MODE_AG_BW_80MHZ_8723B = common dso_local global i32 0, align 4
@MODE_AG_BW_40MHZ_8723B = common dso_local global i32 0, align 4
@MODE_AG_BW_20MHZ_8723B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen2_config_channel(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %14, align 8
  store %struct.rtl8xxxu_priv* %15, %struct.rtl8xxxu_priv** %3, align 8
  store i32 1, i32* %9, align 4
  %16 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %17 = load i32, i32* @REG_WMAC_TRXPTCL_CTL, align 4
  %18 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @WMAC_TRXPTCL_CTL_BW_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %24 = load i32, i32* @REG_RESPONSE_RATE_SET, align 4
  %25 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %7, align 4
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %190 [
    i32 130, label %38
    i32 131, label %39
    i32 129, label %78
    i32 128, label %186
  ]

38:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %1, %38
  %40 = load i32, i32* @WMAC_TRXPTCL_CTL_BW_20, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %43 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %44 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %45 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @FPGA_RF_MODE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %51 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %50, i32 %51, i32 %52)
  %54 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %55 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %56 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @FPGA_RF_MODE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %62 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %61, i32 %62, i32 %63)
  %65 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %66 = load i32, i32* @REG_OFDM0_TX_PSDO_NOISE_WEIGHT, align 4
  %67 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = call i32 @BIT(i32 30)
  %69 = call i32 @BIT(i32 31)
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %75 = load i32, i32* @REG_OFDM0_TX_PSDO_NOISE_WEIGHT, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %74, i32 %75, i32 %76)
  br label %191

78:                                               ; preds = %1
  %79 = load i32, i32* @WMAC_TRXPTCL_CTL_BW_40, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %86, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %11, align 4
  br label %101

98:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 2
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %103 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %104 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @FPGA_RF_MODE, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %109 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %108, i32 %109, i32 %110)
  %112 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %113 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %114 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @FPGA_RF_MODE, align 4
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %119 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %118, i32 %119, i32 %120)
  %122 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %123 = load i32, i32* @REG_CCK0_SYSTEM, align 4
  %124 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* @CCK0_SIDEBAND, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %4, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %101
  %132 = load i32, i32* @CCK0_SIDEBAND, align 4
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %101
  %136 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %137 = load i32, i32* @REG_CCK0_SYSTEM, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %136, i32 %137, i32 %138)
  %140 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %141 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %142 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %140, i32 %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* @OFDM_LSTF_PRIME_CH_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %4, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %135
  %150 = load i32, i32* @OFDM_LSTF_PRIME_CH_LOW, align 4
  %151 = load i32, i32* %4, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %4, align 4
  br label %157

153:                                              ; preds = %135
  %154 = load i32, i32* @OFDM_LSTF_PRIME_CH_HIGH, align 4
  %155 = load i32, i32* %4, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %159 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %158, i32 %159, i32 %160)
  %162 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %163 = load i32, i32* @REG_FPGA0_POWER_SAVE, align 4
  %164 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %162, i32 %163)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* @FPGA0_PS_LOWER_CHANNEL, align 4
  %166 = load i32, i32* @FPGA0_PS_UPPER_CHANNEL, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %4, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %157
  %174 = load i32, i32* @FPGA0_PS_UPPER_CHANNEL, align 4
  %175 = load i32, i32* %4, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %4, align 4
  br label %181

177:                                              ; preds = %157
  %178 = load i32, i32* @FPGA0_PS_LOWER_CHANNEL, align 4
  %179 = load i32, i32* %4, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %183 = load i32, i32* @REG_FPGA0_POWER_SAVE, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %182, i32 %183, i32 %184)
  br label %191

186:                                              ; preds = %1
  %187 = load i32, i32* @WMAC_TRXPTCL_CTL_BW_80, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  br label %191

190:                                              ; preds = %1
  br label %191

191:                                              ; preds = %190, %186, %181, %39
  %192 = load i32, i32* @RF_A, align 4
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %216, %191
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %196 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %219

199:                                              ; preds = %193
  %200 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %203 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %200, i32 %201, i32 %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* @MODE_AG_CHANNEL_MASK, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %4, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %4, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %4, align 4
  %211 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %211, i32 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %199
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %193

219:                                              ; preds = %193
  %220 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %221 = load i32, i32* @REG_WMAC_TRXPTCL_CTL, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %220, i32 %221, i32 %222)
  %224 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %225 = load i64, i64* @REG_DATA_SUBCHANNEL, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %224, i64 %225, i32 %226)
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %219
  store i32 14, i32* %6, align 4
  br label %232

231:                                              ; preds = %219
  store i32 10, i32* %6, align 4
  br label %232

232:                                              ; preds = %231, %230
  %233 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %234 = load i64, i64* @REG_SIFS_CCK, align 8
  %235 = add nsw i64 %234, 1
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %233, i64 %235, i32 %236)
  %238 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %239 = load i64, i64* @REG_SIFS_OFDM, align 8
  %240 = add nsw i64 %239, 1
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %238, i64 %240, i32 %241)
  %243 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %244 = load i32, i32* @REG_R2T_SIFS, align 4
  %245 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %243, i32 %244, i32 2056)
  %246 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %247 = load i32, i32* @REG_T2T_SIFS, align 4
  %248 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %246, i32 %247, i32 2570)
  %249 = load i32, i32* @RF_A, align 4
  store i32 %249, i32* %12, align 4
  br label %250

250:                                              ; preds = %288, %232
  %251 = load i32, i32* %12, align 4
  %252 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %253 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %291

256:                                              ; preds = %250
  %257 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %260 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %257, i32 %258, i32 %259)
  store i32 %260, i32* %4, align 4
  %261 = load i32, i32* @MODE_AG_BW_MASK, align 4
  %262 = xor i32 %261, -1
  %263 = load i32, i32* %4, align 4
  %264 = and i32 %263, %262
  store i32 %264, i32* %4, align 4
  %265 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %266 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  switch i32 %269, label %278 [
    i32 128, label %270
    i32 129, label %274
  ]

270:                                              ; preds = %256
  %271 = load i32, i32* @MODE_AG_BW_80MHZ_8723B, align 4
  %272 = load i32, i32* %4, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %4, align 4
  br label %282

274:                                              ; preds = %256
  %275 = load i32, i32* @MODE_AG_BW_40MHZ_8723B, align 4
  %276 = load i32, i32* %4, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %4, align 4
  br label %282

278:                                              ; preds = %256
  %279 = load i32, i32* @MODE_AG_BW_20MHZ_8723B, align 4
  %280 = load i32, i32* %4, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %278, %274, %270
  %283 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %286 = load i32, i32* %4, align 4
  %287 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %283, i32 %284, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %282
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  br label %250

291:                                              ; preds = %250
  ret void
}

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
