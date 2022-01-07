; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3053.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3053.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__, %struct.rt2800_drv_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt2800_drv_data = type { i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32 }
%struct.channel_info = type { i32, i32, i32 }

@BBP109_TX0_POWER = common dso_local global i32 0, align 4
@BBP109_TX1_POWER = common dso_local global i32 0, align 4
@BBP110_TX2_POWER = common dso_local global i32 0, align 4
@RFCSR11_R = common dso_local global i32 0, align 4
@RFCSR11_PLL_IDOH = common dso_local global i32 0, align 4
@RFCSR11_PLL_MOD = common dso_local global i32 0, align 4
@RFCSR53_TX_POWER = common dso_local global i32 0, align 4
@RFCSR55_TX_POWER = common dso_local global i32 0, align 4
@RFCSR54_TX_POWER = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX2_PD = common dso_local global i32 0, align 4
@RFCSR1_TX2_PD = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@RFCSR1_PLL_PD = common dso_local global i32 0, align 4
@RFCSR24_TX_AGC_FC = common dso_local global i32 0, align 4
@RFCSR24_TX_H20M = common dso_local global i32 0, align 4
@RFCSR32_TX_AGC_FC = common dso_local global i32 0, align 4
@RFCSR30_TX_H20M = common dso_local global i32 0, align 4
@RFCSR30_RX_H20M = common dso_local global i32 0, align 4
@RFCSR36_RF_BS = common dso_local global i32 0, align 4
@RFCSR6_VCO_IC = common dso_local global i32 0, align 4
@RFCSR30_RX_VCM = common dso_local global i32 0, align 4
@RFCSR51_BITS01 = common dso_local global i32 0, align 4
@RFCSR51_BITS24 = common dso_local global i32 0, align 4
@RFCSR51_BITS57 = common dso_local global i32 0, align 4
@RFCSR49_TX_LO1_IC = common dso_local global i32 0, align 4
@RFCSR50_TX_LO1_EN = common dso_local global i32 0, align 4
@RFCSR57_DRV_CC = common dso_local global i32 0, align 4
@RFCSR3_VCOCAL_EN = common dso_local global i32 0, align 4
@RFCSR3_BIT1 = common dso_local global i32 0, align 4
@RFCSR3_BIT2 = common dso_local global i32 0, align 4
@RFCSR3_BIT3 = common dso_local global i32 0, align 4
@RFCSR3_BIT4 = common dso_local global i32 0, align 4
@RFCSR3_BIT5 = common dso_local global i32 0, align 4
@RFCSR39_RX_DIV = common dso_local global i32 0, align 4
@RFCSR49_TX_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3053 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3053(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca %struct.rt2800_drv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 1
  %17 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %16, align 8
  store %struct.rt2800_drv_data* %17, %struct.rt2800_drv_data** %9, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %19 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %18, i32 109)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @BBP109_TX0_POWER, align 4
  %21 = call i32 @rt2x00_set_field8(i32* %13, i32 %20, i32 0)
  %22 = load i32, i32* @BBP109_TX1_POWER, align 4
  %23 = call i32 @rt2x00_set_field8(i32* %13, i32 %22, i32 0)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %24, i32 109, i32 %25)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %28 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %27, i32 110)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @BBP110_TX2_POWER, align 4
  %30 = call i32 @rt2x00_set_field8(i32* %13, i32 %29, i32 0)
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %31, i32 110, i32 %32)
  %34 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %35 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 14
  br i1 %37, label %38, label %49

38:                                               ; preds = %4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %40 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %41 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %39, i32 25, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %45 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %46 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %44, i32 26, i32 %47)
  br label %54

49:                                               ; preds = %4
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %50, i32 25, i32 9)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %52, i32 26, i32 255)
  br label %54

54:                                               ; preds = %49, %38
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %57 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %55, i32 8, i32 %58)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %62 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %60, i32 9, i32 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %66, i32 11)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @RFCSR11_R, align 4
  %69 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %70 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3
  %73 = call i32 @rt2x00_set_field8(i32* %12, i32 %68, i32 %72)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %74, i32 11, i32 %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %78 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %77, i32 11)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @RFCSR11_PLL_IDOH, align 4
  %80 = call i32 @rt2x00_set_field8(i32* %12, i32 %79, i32 1)
  %81 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %82 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 14
  br i1 %84, label %85, label %88

85:                                               ; preds = %54
  %86 = load i32, i32* @RFCSR11_PLL_MOD, align 4
  %87 = call i32 @rt2x00_set_field8(i32* %12, i32 %86, i32 1)
  br label %91

88:                                               ; preds = %54
  %89 = load i32, i32* @RFCSR11_PLL_MOD, align 4
  %90 = call i32 @rt2x00_set_field8(i32* %12, i32 %89, i32 2)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %92, i32 11, i32 %93)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %96 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %95, i32 53)
  store i32 %96, i32* %12, align 4
  %97 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %98 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %99, 14
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  store i32 0, i32* %12, align 4
  %102 = load i32, i32* @RFCSR53_TX_POWER, align 4
  %103 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %104 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 31
  %107 = call i32 @rt2x00_set_field8(i32* %12, i32 %102, i32 %106)
  br label %126

108:                                              ; preds = %91
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %110 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 64, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32, i32* @RFCSR53_TX_POWER, align 4
  %115 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %116 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 24
  %119 = shl i32 %118, 1
  %120 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %121 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 7
  %124 = or i32 %119, %123
  %125 = call i32 @rt2x00_set_field8(i32* %12, i32 %114, i32 %124)
  br label %126

126:                                              ; preds = %113, %101
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %127, i32 53, i32 %128)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %131 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %130, i32 55)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %133 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sle i32 %134, 14
  br i1 %135, label %136, label %143

136:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  %137 = load i32, i32* @RFCSR55_TX_POWER, align 4
  %138 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %139 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 31
  %142 = call i32 @rt2x00_set_field8(i32* %12, i32 %137, i32 %141)
  br label %161

143:                                              ; preds = %126
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %145 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 64, i32* %12, align 4
  br label %148

148:                                              ; preds = %147, %143
  %149 = load i32, i32* @RFCSR55_TX_POWER, align 4
  %150 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %151 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 24
  %154 = shl i32 %153, 1
  %155 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %156 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 7
  %159 = or i32 %154, %158
  %160 = call i32 @rt2x00_set_field8(i32* %12, i32 %149, i32 %159)
  br label %161

161:                                              ; preds = %148, %136
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %162, i32 55, i32 %163)
  %165 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %166 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %165, i32 54)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %168 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp sle i32 %169, 14
  br i1 %170, label %171, label %178

171:                                              ; preds = %161
  store i32 0, i32* %12, align 4
  %172 = load i32, i32* @RFCSR54_TX_POWER, align 4
  %173 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %174 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 31
  %177 = call i32 @rt2x00_set_field8(i32* %12, i32 %172, i32 %176)
  br label %196

178:                                              ; preds = %161
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %180 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 64, i32* %12, align 4
  br label %183

183:                                              ; preds = %182, %178
  %184 = load i32, i32* @RFCSR54_TX_POWER, align 4
  %185 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %186 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 24
  %189 = shl i32 %188, 1
  %190 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %191 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 7
  %194 = or i32 %189, %193
  %195 = call i32 @rt2x00_set_field8(i32* %12, i32 %184, i32 %194)
  br label %196

196:                                              ; preds = %183, %171
  %197 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %197, i32 54, i32 %198)
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %201 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %200, i32 1)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %203 = call i32 @rt2x00_set_field8(i32* %12, i32 %202, i32 0)
  %204 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %205 = call i32 @rt2x00_set_field8(i32* %12, i32 %204, i32 0)
  %206 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %207 = call i32 @rt2x00_set_field8(i32* %12, i32 %206, i32 0)
  %208 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %209 = call i32 @rt2x00_set_field8(i32* %12, i32 %208, i32 0)
  %210 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %211 = call i32 @rt2x00_set_field8(i32* %12, i32 %210, i32 0)
  %212 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %213 = call i32 @rt2x00_set_field8(i32* %12, i32 %212, i32 0)
  %214 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %215 = call i32 @rt2x00_set_field8(i32* %12, i32 %214, i32 1)
  %216 = load i32, i32* @RFCSR1_PLL_PD, align 4
  %217 = call i32 @rt2x00_set_field8(i32* %12, i32 %216, i32 1)
  %218 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %219 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  switch i32 %221, label %231 [
    i32 3, label %222
    i32 2, label %225
    i32 1, label %228
  ]

222:                                              ; preds = %196
  %223 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %224 = call i32 @rt2x00_set_field8(i32* %12, i32 %223, i32 1)
  br label %225

225:                                              ; preds = %196, %222
  %226 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %227 = call i32 @rt2x00_set_field8(i32* %12, i32 %226, i32 1)
  br label %228

228:                                              ; preds = %196, %225
  %229 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %230 = call i32 @rt2x00_set_field8(i32* %12, i32 %229, i32 1)
  br label %231

231:                                              ; preds = %196, %228
  %232 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %233 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  switch i32 %235, label %245 [
    i32 3, label %236
    i32 2, label %239
    i32 1, label %242
  ]

236:                                              ; preds = %231
  %237 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %238 = call i32 @rt2x00_set_field8(i32* %12, i32 %237, i32 1)
  br label %239

239:                                              ; preds = %231, %236
  %240 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %241 = call i32 @rt2x00_set_field8(i32* %12, i32 %240, i32 1)
  br label %242

242:                                              ; preds = %231, %239
  %243 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %244 = call i32 @rt2x00_set_field8(i32* %12, i32 %243, i32 1)
  br label %245

245:                                              ; preds = %231, %242
  %246 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %246, i32 1, i32 %247)
  %249 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %250 = call i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev* %249)
  %251 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %252 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %245
  %255 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %256 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @RFCSR24_TX_AGC_FC, align 4
  %259 = call i32 @rt2x00_get_field8(i32 %257, i32 %258)
  store i32 %259, i32* %10, align 4
  %260 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %261 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @RFCSR24_TX_H20M, align 4
  %264 = call i32 @rt2x00_get_field8(i32 %262, i32 %263)
  store i32 %264, i32* %11, align 4
  br label %276

265:                                              ; preds = %245
  %266 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %267 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @RFCSR24_TX_AGC_FC, align 4
  %270 = call i32 @rt2x00_get_field8(i32 %268, i32 %269)
  store i32 %270, i32* %10, align 4
  %271 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %272 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @RFCSR24_TX_H20M, align 4
  %275 = call i32 @rt2x00_get_field8(i32 %273, i32 %274)
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %265, %254
  %277 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %278 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %277, i32 32)
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* @RFCSR32_TX_AGC_FC, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @rt2x00_set_field8(i32* %12, i32 %279, i32 %280)
  %282 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %283 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp sle i32 %284, 14
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  store i32 160, i32* %12, align 4
  br label %288

287:                                              ; preds = %276
  store i32 128, i32* %12, align 4
  br label %288

288:                                              ; preds = %287, %286
  %289 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %289, i32 31, i32 %290)
  %292 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %293 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %292, i32 30)
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* @RFCSR30_TX_H20M, align 4
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @rt2x00_set_field8(i32* %12, i32 %294, i32 %295)
  %297 = load i32, i32* @RFCSR30_RX_H20M, align 4
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @rt2x00_set_field8(i32* %12, i32 %297, i32 %298)
  %300 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %301 = load i32, i32* %12, align 4
  %302 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %300, i32 30, i32 %301)
  %303 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %304 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %303, i32 36)
  store i32 %304, i32* %12, align 4
  %305 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %306 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp sle i32 %307, 14
  br i1 %308, label %309, label %312

309:                                              ; preds = %288
  %310 = load i32, i32* @RFCSR36_RF_BS, align 4
  %311 = call i32 @rt2x00_set_field8(i32* %12, i32 %310, i32 1)
  br label %315

312:                                              ; preds = %288
  %313 = load i32, i32* @RFCSR36_RF_BS, align 4
  %314 = call i32 @rt2x00_set_field8(i32* %12, i32 %313, i32 0)
  br label %315

315:                                              ; preds = %312, %309
  %316 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %317 = load i32, i32* %12, align 4
  %318 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %316, i32 36, i32 %317)
  %319 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %320 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %319, i32 34)
  store i32 %320, i32* %12, align 4
  %321 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %322 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp sle i32 %323, 14
  br i1 %324, label %325, label %326

325:                                              ; preds = %315
  store i32 60, i32* %12, align 4
  br label %327

326:                                              ; preds = %315
  store i32 32, i32* %12, align 4
  br label %327

327:                                              ; preds = %326, %325
  %328 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %329 = load i32, i32* %12, align 4
  %330 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %328, i32 34, i32 %329)
  %331 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %332 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %331, i32 12)
  store i32 %332, i32* %12, align 4
  %333 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %334 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = icmp sle i32 %335, 14
  br i1 %336, label %337, label %338

337:                                              ; preds = %327
  store i32 26, i32* %12, align 4
  br label %339

338:                                              ; preds = %327
  store i32 18, i32* %12, align 4
  br label %339

339:                                              ; preds = %338, %337
  %340 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %341 = load i32, i32* %12, align 4
  %342 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %340, i32 12, i32 %341)
  %343 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %344 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %343, i32 6)
  store i32 %344, i32* %12, align 4
  %345 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %346 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp sge i32 %347, 1
  br i1 %348, label %349, label %357

349:                                              ; preds = %339
  %350 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %351 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp sle i32 %352, 14
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load i32, i32* @RFCSR6_VCO_IC, align 4
  %356 = call i32 @rt2x00_set_field8(i32* %12, i32 %355, i32 1)
  br label %388

357:                                              ; preds = %349, %339
  %358 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %359 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = icmp sge i32 %360, 36
  br i1 %361, label %362, label %370

362:                                              ; preds = %357
  %363 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %364 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp sle i32 %365, 64
  br i1 %366, label %367, label %370

367:                                              ; preds = %362
  %368 = load i32, i32* @RFCSR6_VCO_IC, align 4
  %369 = call i32 @rt2x00_set_field8(i32* %12, i32 %368, i32 2)
  br label %387

370:                                              ; preds = %362, %357
  %371 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %372 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = icmp sge i32 %373, 100
  br i1 %374, label %375, label %383

375:                                              ; preds = %370
  %376 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %377 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp sle i32 %378, 128
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i32, i32* @RFCSR6_VCO_IC, align 4
  %382 = call i32 @rt2x00_set_field8(i32* %12, i32 %381, i32 2)
  br label %386

383:                                              ; preds = %375, %370
  %384 = load i32, i32* @RFCSR6_VCO_IC, align 4
  %385 = call i32 @rt2x00_set_field8(i32* %12, i32 %384, i32 1)
  br label %386

386:                                              ; preds = %383, %380
  br label %387

387:                                              ; preds = %386, %367
  br label %388

388:                                              ; preds = %387, %354
  %389 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %390 = load i32, i32* %12, align 4
  %391 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %389, i32 6, i32 %390)
  %392 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %393 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %392, i32 30)
  store i32 %393, i32* %12, align 4
  %394 = load i32, i32* @RFCSR30_RX_VCM, align 4
  %395 = call i32 @rt2x00_set_field8(i32* %12, i32 %394, i32 2)
  %396 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %397 = load i32, i32* %12, align 4
  %398 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %396, i32 30, i32 %397)
  %399 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %400 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %399, i32 46, i32 96)
  %401 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %402 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = icmp sle i32 %403, 14
  br i1 %404, label %405, label %410

405:                                              ; preds = %388
  %406 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %407 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %406, i32 10, i32 211)
  %408 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %409 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %408, i32 13, i32 18)
  br label %415

410:                                              ; preds = %388
  %411 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %412 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %411, i32 10, i32 216)
  %413 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %414 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %413, i32 13, i32 35)
  br label %415

415:                                              ; preds = %410, %405
  %416 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %417 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %416, i32 51)
  store i32 %417, i32* %12, align 4
  %418 = load i32, i32* @RFCSR51_BITS01, align 4
  %419 = call i32 @rt2x00_set_field8(i32* %12, i32 %418, i32 1)
  %420 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %421 = load i32, i32* %12, align 4
  %422 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %420, i32 51, i32 %421)
  %423 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %424 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %423, i32 51)
  store i32 %424, i32* %12, align 4
  %425 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %426 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = icmp sle i32 %427, 14
  br i1 %428, label %429, label %434

429:                                              ; preds = %415
  %430 = load i32, i32* @RFCSR51_BITS24, align 4
  %431 = call i32 @rt2x00_set_field8(i32* %12, i32 %430, i32 5)
  %432 = load i32, i32* @RFCSR51_BITS57, align 4
  %433 = call i32 @rt2x00_set_field8(i32* %12, i32 %432, i32 3)
  br label %439

434:                                              ; preds = %415
  %435 = load i32, i32* @RFCSR51_BITS24, align 4
  %436 = call i32 @rt2x00_set_field8(i32* %12, i32 %435, i32 4)
  %437 = load i32, i32* @RFCSR51_BITS57, align 4
  %438 = call i32 @rt2x00_set_field8(i32* %12, i32 %437, i32 2)
  br label %439

439:                                              ; preds = %434, %429
  %440 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %441 = load i32, i32* %12, align 4
  %442 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %440, i32 51, i32 %441)
  %443 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %444 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %443, i32 49)
  store i32 %444, i32* %12, align 4
  %445 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %446 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = icmp sle i32 %447, 14
  br i1 %448, label %449, label %452

449:                                              ; preds = %439
  %450 = load i32, i32* @RFCSR49_TX_LO1_IC, align 4
  %451 = call i32 @rt2x00_set_field8(i32* %12, i32 %450, i32 3)
  br label %455

452:                                              ; preds = %439
  %453 = load i32, i32* @RFCSR49_TX_LO1_IC, align 4
  %454 = call i32 @rt2x00_set_field8(i32* %12, i32 %453, i32 2)
  br label %455

455:                                              ; preds = %452, %449
  %456 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %457 = load i32, i32* %12, align 4
  %458 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %456, i32 49, i32 %457)
  %459 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %460 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %459, i32 50)
  store i32 %460, i32* %12, align 4
  %461 = load i32, i32* @RFCSR50_TX_LO1_EN, align 4
  %462 = call i32 @rt2x00_set_field8(i32* %12, i32 %461, i32 0)
  %463 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %464 = load i32, i32* %12, align 4
  %465 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %463, i32 50, i32 %464)
  %466 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %467 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %466, i32 57)
  store i32 %467, i32* %12, align 4
  %468 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %469 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp sle i32 %470, 14
  br i1 %471, label %472, label %475

472:                                              ; preds = %455
  %473 = load i32, i32* @RFCSR57_DRV_CC, align 4
  %474 = call i32 @rt2x00_set_field8(i32* %12, i32 %473, i32 27)
  br label %478

475:                                              ; preds = %455
  %476 = load i32, i32* @RFCSR57_DRV_CC, align 4
  %477 = call i32 @rt2x00_set_field8(i32* %12, i32 %476, i32 15)
  br label %478

478:                                              ; preds = %475, %472
  %479 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %480 = load i32, i32* %12, align 4
  %481 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %479, i32 57, i32 %480)
  %482 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %483 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = icmp sle i32 %484, 14
  br i1 %485, label %486, label %491

486:                                              ; preds = %478
  %487 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %488 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %487, i32 44, i32 147)
  %489 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %490 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %489, i32 52, i32 69)
  br label %496

491:                                              ; preds = %478
  %492 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %493 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %492, i32 44, i32 155)
  %494 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %495 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %494, i32 52, i32 5)
  br label %496

496:                                              ; preds = %491, %486
  %497 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %498 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %497, i32 3)
  store i32 %498, i32* %12, align 4
  %499 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %500 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = icmp sle i32 %501, 14
  br i1 %502, label %503, label %506

503:                                              ; preds = %496
  %504 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %505 = call i32 @rt2x00_set_field8(i32* %12, i32 %504, i32 1)
  br label %519

506:                                              ; preds = %496
  %507 = load i32, i32* @RFCSR3_BIT1, align 4
  %508 = call i32 @rt2x00_set_field8(i32* %12, i32 %507, i32 1)
  %509 = load i32, i32* @RFCSR3_BIT2, align 4
  %510 = call i32 @rt2x00_set_field8(i32* %12, i32 %509, i32 1)
  %511 = load i32, i32* @RFCSR3_BIT3, align 4
  %512 = call i32 @rt2x00_set_field8(i32* %12, i32 %511, i32 1)
  %513 = load i32, i32* @RFCSR3_BIT4, align 4
  %514 = call i32 @rt2x00_set_field8(i32* %12, i32 %513, i32 1)
  %515 = load i32, i32* @RFCSR3_BIT5, align 4
  %516 = call i32 @rt2x00_set_field8(i32* %12, i32 %515, i32 1)
  %517 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %518 = call i32 @rt2x00_set_field8(i32* %12, i32 %517, i32 1)
  br label %519

519:                                              ; preds = %506, %503
  %520 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %521 = load i32, i32* %12, align 4
  %522 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %520, i32 3, i32 %521)
  %523 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %524 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = icmp sge i32 %525, 1
  br i1 %526, label %527, label %538

527:                                              ; preds = %519
  %528 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %529 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = icmp sle i32 %530, 14
  br i1 %531, label %532, label %538

532:                                              ; preds = %527
  store i32 35, i32* %12, align 4
  %533 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %534 = load i32, i32* %12, align 4
  %535 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %533, i32 39, i32 %534)
  %536 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %537 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %536, i32 45, i32 187)
  br label %577

538:                                              ; preds = %527, %519
  %539 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %540 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = icmp sge i32 %541, 36
  br i1 %542, label %543, label %553

543:                                              ; preds = %538
  %544 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %545 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = icmp sle i32 %546, 64
  br i1 %547, label %548, label %553

548:                                              ; preds = %543
  store i32 54, i32* %12, align 4
  %549 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %550 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %549, i32 39, i32 54)
  %551 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %552 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %551, i32 45, i32 235)
  br label %576

553:                                              ; preds = %543, %538
  %554 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %555 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = icmp sge i32 %556, 100
  br i1 %557, label %558, label %569

558:                                              ; preds = %553
  %559 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %560 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = icmp sle i32 %561, 128
  br i1 %562, label %563, label %569

563:                                              ; preds = %558
  store i32 50, i32* %12, align 4
  %564 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %565 = load i32, i32* %12, align 4
  %566 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %564, i32 39, i32 %565)
  %567 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %568 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %567, i32 45, i32 179)
  br label %575

569:                                              ; preds = %558, %553
  store i32 48, i32* %12, align 4
  %570 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %571 = load i32, i32* %12, align 4
  %572 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %570, i32 39, i32 %571)
  %573 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %574 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %573, i32 45, i32 155)
  br label %575

575:                                              ; preds = %569, %563
  br label %576

576:                                              ; preds = %575, %548
  br label %577

577:                                              ; preds = %576, %532
  ret void
}

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2x00_get_field8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
