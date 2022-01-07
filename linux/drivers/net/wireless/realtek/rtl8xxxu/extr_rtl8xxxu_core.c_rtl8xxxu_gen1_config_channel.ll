; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_config_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__, %struct.rtl8xxxu_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rtl8xxxu_priv = type { i32 }

@REG_BW_OPMODE = common dso_local global i64 0, align 8
@REG_RESPONSE_RATE_SET = common dso_local global i32 0, align 4
@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@REG_FPGA0_RF_MODE = common dso_local global i32 0, align 4
@FPGA_RF_MODE = common dso_local global i32 0, align 4
@REG_FPGA1_RF_MODE = common dso_local global i32 0, align 4
@REG_FPGA0_ANALOG2 = common dso_local global i32 0, align 4
@FPGA0_ANALOG2_20MHZ = common dso_local global i32 0, align 4
@RSR_RSC_BANDWIDTH_40M = common dso_local global i32 0, align 4
@RSR_RSC_UPPER_SUB_CHANNEL = common dso_local global i32 0, align 4
@RSR_RSC_LOWER_SUB_CHANNEL = common dso_local global i32 0, align 4
@REG_CCK0_SYSTEM = common dso_local global i32 0, align 4
@CCK0_SIDEBAND = common dso_local global i32 0, align 4
@REG_OFDM1_LSTF = common dso_local global i32 0, align 4
@OFDM_LSTF_PRIME_CH_MASK = common dso_local global i32 0, align 4
@OFDM_LSTF_PRIME_CH_LOW = common dso_local global i32 0, align 4
@OFDM_LSTF_PRIME_CH_HIGH = common dso_local global i32 0, align 4
@REG_FPGA0_POWER_SAVE = common dso_local global i32 0, align 4
@FPGA0_PS_LOWER_CHANNEL = common dso_local global i32 0, align 4
@FPGA0_PS_UPPER_CHANNEL = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_MODE_AG = common dso_local global i32 0, align 4
@MODE_AG_CHANNEL_MASK = common dso_local global i32 0, align 4
@REG_SIFS_CCK = common dso_local global i64 0, align 8
@REG_SIFS_OFDM = common dso_local global i64 0, align 8
@REG_R2T_SIFS = common dso_local global i32 0, align 4
@REG_T2T_SIFS = common dso_local global i32 0, align 4
@MODE_AG_CHANNEL_20MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen1_config_channel(%struct.ieee80211_hw* %0) #0 {
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
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %13, align 8
  store %struct.rtl8xxxu_priv* %14, %struct.rtl8xxxu_priv** %3, align 8
  store i32 1, i32* %8, align 4
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %16 = load i64, i64* @REG_BW_OPMODE, align 8
  %17 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %19 = load i32, i32* @REG_RESPONSE_RATE_SET, align 4
  %20 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %217 [
    i32 129, label %33
    i32 130, label %34
    i32 128, label %74
  ]

33:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %1, %33
  %35 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %39 = load i64, i64* @REG_BW_OPMODE, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %38, i64 %39, i32 %40)
  %42 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %43 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %44 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @FPGA_RF_MODE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %50 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %49, i32 %50, i32 %51)
  %53 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %54 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %55 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @FPGA_RF_MODE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %61 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %60, i32 %61, i32 %62)
  %64 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %65 = load i32, i32* @REG_FPGA0_ANALOG2, align 4
  %66 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @FPGA0_ANALOG2_20MHZ, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %71 = load i32, i32* @REG_FPGA0_ANALOG2, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %70, i32 %71, i32 %72)
  br label %218

74:                                               ; preds = %1
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %79, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %74
  store i32 1, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %10, align 4
  br label %94

91:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, 2
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %100 = load i64, i64* @REG_BW_OPMODE, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %99, i64 %100, i32 %101)
  %103 = load i32, i32* @RSR_RSC_BANDWIDTH_40M, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %94
  %110 = load i32, i32* @RSR_RSC_UPPER_SUB_CHANNEL, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %117

113:                                              ; preds = %94
  %114 = load i32, i32* @RSR_RSC_LOWER_SUB_CHANNEL, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %119 = load i32, i32* @REG_RESPONSE_RATE_SET, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %118, i32 %119, i32 %120)
  %122 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %123 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %124 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* @FPGA_RF_MODE, align 4
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %129 = load i32, i32* @REG_FPGA0_RF_MODE, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %128, i32 %129, i32 %130)
  %132 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %133 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %134 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @FPGA_RF_MODE, align 4
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %139 = load i32, i32* @REG_FPGA1_RF_MODE, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %138, i32 %139, i32 %140)
  %142 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %143 = load i32, i32* @REG_CCK0_SYSTEM, align 4
  %144 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %142, i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* @CCK0_SIDEBAND, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %117
  %152 = load i32, i32* @CCK0_SIDEBAND, align 4
  %153 = load i32, i32* %4, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %151, %117
  %156 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %157 = load i32, i32* @REG_CCK0_SYSTEM, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %156, i32 %157, i32 %158)
  %160 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %161 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %162 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %160, i32 %161)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* @OFDM_LSTF_PRIME_CH_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %4, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %155
  %170 = load i32, i32* @OFDM_LSTF_PRIME_CH_LOW, align 4
  %171 = load i32, i32* %4, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %4, align 4
  br label %177

173:                                              ; preds = %155
  %174 = load i32, i32* @OFDM_LSTF_PRIME_CH_HIGH, align 4
  %175 = load i32, i32* %4, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %179 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %178, i32 %179, i32 %180)
  %182 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %183 = load i32, i32* @REG_FPGA0_ANALOG2, align 4
  %184 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %182, i32 %183)
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* @FPGA0_ANALOG2_20MHZ, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %4, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %4, align 4
  %189 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %190 = load i32, i32* @REG_FPGA0_ANALOG2, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %189, i32 %190, i32 %191)
  %193 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %194 = load i32, i32* @REG_FPGA0_POWER_SAVE, align 4
  %195 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %193, i32 %194)
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* @FPGA0_PS_LOWER_CHANNEL, align 4
  %197 = load i32, i32* @FPGA0_PS_UPPER_CHANNEL, align 4
  %198 = or i32 %196, %197
  %199 = xor i32 %198, -1
  %200 = load i32, i32* %4, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %177
  %205 = load i32, i32* @FPGA0_PS_UPPER_CHANNEL, align 4
  %206 = load i32, i32* %4, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %212

208:                                              ; preds = %177
  %209 = load i32, i32* @FPGA0_PS_LOWER_CHANNEL, align 4
  %210 = load i32, i32* %4, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %208, %204
  %213 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %214 = load i32, i32* @REG_FPGA0_POWER_SAVE, align 4
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %213, i32 %214, i32 %215)
  br label %218

217:                                              ; preds = %1
  br label %218

218:                                              ; preds = %217, %212, %34
  %219 = load i32, i32* @RF_A, align 4
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %243, %218
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %223 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %246

226:                                              ; preds = %220
  %227 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %230 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %227, i32 %228, i32 %229)
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* @MODE_AG_CHANNEL_MASK, align 4
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %4, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %4, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %4, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %4, align 4
  %238 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %238, i32 %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %226
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %220

246:                                              ; preds = %220
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store i32 14, i32* %6, align 4
  br label %251

250:                                              ; preds = %246
  store i32 10, i32* %6, align 4
  br label %251

251:                                              ; preds = %250, %249
  %252 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %253 = load i64, i64* @REG_SIFS_CCK, align 8
  %254 = add nsw i64 %253, 1
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %252, i64 %254, i32 %255)
  %257 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %258 = load i64, i64* @REG_SIFS_OFDM, align 8
  %259 = add nsw i64 %258, 1
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %257, i64 %259, i32 %260)
  %262 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %263 = load i32, i32* @REG_R2T_SIFS, align 4
  %264 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %262, i32 %263, i32 2056)
  %265 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %266 = load i32, i32* @REG_T2T_SIFS, align 4
  %267 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %265, i32 %266, i32 2570)
  %268 = load i32, i32* @RF_A, align 4
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %301, %251
  %270 = load i32, i32* %11, align 4
  %271 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %272 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %304

275:                                              ; preds = %269
  %276 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %279 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %276, i32 %277, i32 %278)
  store i32 %279, i32* %4, align 4
  %280 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %281 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 128
  br i1 %285, label %286, label %291

286:                                              ; preds = %275
  %287 = load i32, i32* @MODE_AG_CHANNEL_20MHZ, align 4
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %4, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %4, align 4
  br label %295

291:                                              ; preds = %275
  %292 = load i32, i32* @MODE_AG_CHANNEL_20MHZ, align 4
  %293 = load i32, i32* %4, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %291, %286
  %296 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %299 = load i32, i32* %4, align 4
  %300 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %296, i32 %297, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %295
  %302 = load i32, i32* %11, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %11, align 4
  br label %269

304:                                              ; preds = %269
  ret void
}

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
