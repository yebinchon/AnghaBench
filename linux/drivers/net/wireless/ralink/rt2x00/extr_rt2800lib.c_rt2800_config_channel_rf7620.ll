; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf7620.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf7620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__, %struct.rt2800_drv_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt2800_drv_data = type { i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.channel_info = type { i32 }

@RFCSR13_RDIV_MT7620 = common dso_local global i32 0, align 4
@RFCSR21_BIT1 = common dso_local global i32 0, align 4
@RFCSR16_RF_PLL_FREQ_SEL_MT7620 = common dso_local global i32 0, align 4
@RFCSR22_FREQPLAN_D_MT7620 = common dso_local global i32 0, align 4
@RFCSR19_K = common dso_local global i32 0, align 4
@RFCSR16_SDM_MODE_MT7620 = common dso_local global i32 0, align 4
@RFCSR21_BIT8 = common dso_local global i32 0, align 4
@RFCSR1_TX2_EN_MT7620 = common dso_local global i32 0, align 4
@RFCSR2_TX2_EN_MT7620 = common dso_local global i32 0, align 4
@RFCSR2_RX2_EN_MT7620 = common dso_local global i32 0, align 4
@RFCSR42_TX2_EN_MT7620 = common dso_local global i32 0, align 4
@RFCSR28_CH11_HT40 = common dso_local global i32 0, align 4
@DEVICE_STATE_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf7620 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf7620(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca %struct.rt2800_drv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 2
  %15 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %14, align 8
  store %struct.rt2800_drv_data* %15, %struct.rt2800_drv_data** %9, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %16, i32 13)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @RFCSR13_RDIV_MT7620, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %20 = call i64 @rt2800_clk_is_20mhz(%struct.rt2x00_dev* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 3, i32 0
  %24 = call i32 @rt2x00_set_field8(i32* %12, i32 %18, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %25, i32 13, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %28, i32 20)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %31 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %34, i32 20, i32 %35)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %38 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %37, i32 21)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @RFCSR21_BIT1, align 4
  %40 = call i32 @rt2x00_set_field8(i32* %12, i32 %39, i32 0)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 21, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %45 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %44, i32 16)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @RFCSR16_RF_PLL_FREQ_SEL_MT7620, align 4
  %47 = call i32 @rt2x00_set_field8(i32* %12, i32 %46, i32 0)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 16, i32 %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %52 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %51, i32 22)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @RFCSR22_FREQPLAN_D_MT7620, align 4
  %54 = call i32 @rt2x00_set_field8(i32* %12, i32 %53, i32 0)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %55, i32 22, i32 %56)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %59 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %58, i32 17)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %61 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %63, i32 17, i32 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %66, i32 18)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %69 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %71, i32 18, i32 %72)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %75 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %74, i32 19)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @RFCSR19_K, align 4
  %77 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %78 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rt2x00_set_field8(i32* %12, i32 %76, i32 %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %81, i32 19, i32 %82)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %85 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %84, i32 16)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* @RFCSR16_SDM_MODE_MT7620, align 4
  %87 = call i32 @rt2x00_set_field8(i32* %12, i32 %86, i32 128)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %88, i32 16, i32 %89)
  %91 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %92 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %91, i32 21)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* @RFCSR21_BIT8, align 4
  %94 = call i32 @rt2x00_set_field8(i32* %12, i32 %93, i32 1)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %95, i32 21, i32 %96)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %99 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %98, i32 1)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* @RFCSR1_TX2_EN_MT7620, align 4
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = call i32 @rt2x00_set_field8(i32* %12, i32 %100, i32 %106)
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %108, i32 1, i32 %109)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %112 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %111, i32 2)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @RFCSR2_TX2_EN_MT7620, align 4
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %115 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 1
  %119 = zext i1 %118 to i32
  %120 = call i32 @rt2x00_set_field8(i32* %12, i32 %113, i32 %119)
  %121 = load i32, i32* @RFCSR2_RX2_EN_MT7620, align 4
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = call i32 @rt2x00_set_field8(i32* %12, i32 %121, i32 %127)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %129, i32 2, i32 %130)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %133 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %132, i32 42)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* @RFCSR42_TX2_EN_MT7620, align 4
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %136 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 1
  %140 = zext i1 %139 to i32
  %141 = call i32 @rt2x00_set_field8(i32* %12, i32 %134, i32 %140)
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %142, i32 42, i32 %143)
  %145 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %146 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %4
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %150 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %149, i32 6, i32 16)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %152 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %151, i32 7, i32 16)
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %154 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %153, i32 8, i32 4)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %156 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %155, i32 58, i32 16)
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %158 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %157, i32 59, i32 16)
  br label %170

159:                                              ; preds = %4
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %161 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %160, i32 6, i32 32)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %163 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %162, i32 7, i32 32)
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %165 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %164, i32 8, i32 0)
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %167 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %166, i32 58, i32 32)
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %169 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %168, i32 59, i32 32)
  br label %170

170:                                              ; preds = %159, %148
  %171 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %172 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %176 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %175, i32 58, i32 8)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %178 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %177, i32 59, i32 8)
  br label %184

179:                                              ; preds = %170
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %181 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %180, i32 58, i32 40)
  %182 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %183 = call i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev* %182, i32 59, i32 40)
  br label %184

184:                                              ; preds = %179, %174
  %185 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %186 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %185, i32 28)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* @RFCSR28_CH11_HT40, align 4
  %188 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %189 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %193 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 11
  br label %196

196:                                              ; preds = %191, %184
  %197 = phi i1 [ false, %184 ], [ %195, %191 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @rt2x00_set_field8(i32* %12, i32 %187, i32 %198)
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %200, i32 28, i32 %201)
  %203 = load i32, i32* @DEVICE_STATE_SCANNING, align 4
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %205 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %204, i32 0, i32 0
  %206 = call i32 @test_bit(i32 %203, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %307, label %208

208:                                              ; preds = %196
  %209 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %210 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %214 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %10, align 4
  %216 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %217 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %11, align 4
  br label %226

219:                                              ; preds = %208
  %220 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %221 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %10, align 4
  %223 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %224 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %219, %212
  %227 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %228 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %227, i32 5, i32 6)
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = and i32 %229, -64
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %12, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %12, align 4
  %234 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %234, i32 5, i32 6, i32 %235)
  %237 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %238 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %237, i32 5, i32 7)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = and i32 %239, -64
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %12, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %12, align 4
  %244 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %244, i32 5, i32 7, i32 %245)
  %247 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %248 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %247, i32 7, i32 6)
  store i32 %248, i32* %12, align 4
  %249 = load i32, i32* %12, align 4
  %250 = and i32 %249, -64
  store i32 %250, i32* %12, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %12, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %12, align 4
  %254 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %254, i32 7, i32 6, i32 %255)
  %257 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %258 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %257, i32 7, i32 7)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = and i32 %259, -64
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %12, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %12, align 4
  %264 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %265 = load i32, i32* %12, align 4
  %266 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %264, i32 7, i32 7, i32 %265)
  %267 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %268 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %267, i32 5, i32 58)
  store i32 %268, i32* %12, align 4
  %269 = load i32, i32* %12, align 4
  %270 = and i32 %269, -64
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %12, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %12, align 4
  %274 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %274, i32 5, i32 58, i32 %275)
  %277 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %278 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %277, i32 5, i32 59)
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* %12, align 4
  %280 = and i32 %279, -64
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %12, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %12, align 4
  %284 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %284, i32 5, i32 59, i32 %285)
  %287 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %288 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %287, i32 7, i32 58)
  store i32 %288, i32* %12, align 4
  %289 = load i32, i32* %12, align 4
  %290 = and i32 %289, -64
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* %12, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %12, align 4
  %294 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %295 = load i32, i32* %12, align 4
  %296 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %294, i32 7, i32 58, i32 %295)
  %297 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %298 = call i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev* %297, i32 7, i32 59)
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %12, align 4
  %300 = and i32 %299, -64
  store i32 %300, i32* %12, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %12, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %12, align 4
  %304 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %305 = load i32, i32* %12, align 4
  %306 = call i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev* %304, i32 7, i32 59, i32 %305)
  br label %307

307:                                              ; preds = %226, %196
  ret void
}

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i64 @rt2800_clk_is_20mhz(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_rfcsr_write_dccal(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800_rfcsr_read_bank(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write_bank(%struct.rt2x00_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
