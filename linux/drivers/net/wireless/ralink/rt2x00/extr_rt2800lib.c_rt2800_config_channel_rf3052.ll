; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3052.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3052.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_2__, %struct.rt2800_drv_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt2800_drv_data = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32, i32 }
%struct.channel_info = type { i32, i32 }

@RFCSR6_R1 = common dso_local global i32 0, align 4
@RFCSR6_TXDIV = common dso_local global i32 0, align 4
@RFCSR5_R1 = common dso_local global i32 0, align 4
@RFCSR12_DR0 = common dso_local global i32 0, align 4
@RFCSR12_TX_POWER = common dso_local global i32 0, align 4
@RFCSR13_DR0 = common dso_local global i32 0, align 4
@RFCSR13_TX_POWER = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX2_PD = common dso_local global i32 0, align 4
@RFCSR1_TX2_PD = common dso_local global i32 0, align 4
@RFCSR23_FREQ_OFFSET = common dso_local global i32 0, align 4
@RFCSR16_TXMIXER_GAIN = common dso_local global i32 0, align 4
@RFCSR7_BIT2 = common dso_local global i32 0, align 4
@RFCSR7_BIT3 = common dso_local global i32 0, align 4
@RFCSR7_BIT4 = common dso_local global i32 0, align 4
@RFCSR7_BITS67 = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR7 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL7 = common dso_local global i32 0, align 4
@RFCSR7_RF_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3052 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3052(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca %struct.rt2800_drv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 2
  %14 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %13, align 8
  store %struct.rt2800_drv_data* %14, %struct.rt2800_drv_data** %9, align 8
  %15 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %16 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 14
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %22 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %20, i32 25, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %27 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %25, i32 26, i32 %28)
  br label %35

30:                                               ; preds = %4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %31, i32 25, i32 9)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %34 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %33, i32 26, i32 255)
  br label %35

35:                                               ; preds = %30, %19
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %38 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 2, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %42 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %43 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %41, i32 3, i32 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %46, i32 6)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @RFCSR6_R1, align 4
  %49 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %50 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rt2x00_set_field8(i32* %10, i32 %48, i32 %51)
  %53 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %54 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %55, 14
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* @RFCSR6_TXDIV, align 4
  %59 = call i32 @rt2x00_set_field8(i32* %10, i32 %58, i32 2)
  br label %63

60:                                               ; preds = %35
  %61 = load i32, i32* @RFCSR6_TXDIV, align 4
  %62 = call i32 @rt2x00_set_field8(i32* %10, i32 %61, i32 1)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 6, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %67, i32 5)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %70 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 14
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @RFCSR5_R1, align 4
  %75 = call i32 @rt2x00_set_field8(i32* %10, i32 %74, i32 1)
  br label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @RFCSR5_R1, align 4
  %78 = call i32 @rt2x00_set_field8(i32* %10, i32 %77, i32 2)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %80, i32 5, i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %84 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %83, i32 12)
  store i32 %84, i32* %10, align 4
  %85 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %86 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %87, 14
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i32, i32* @RFCSR12_DR0, align 4
  %91 = call i32 @rt2x00_set_field8(i32* %10, i32 %90, i32 3)
  %92 = load i32, i32* @RFCSR12_TX_POWER, align 4
  %93 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %94 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rt2x00_set_field8(i32* %10, i32 %92, i32 %95)
  br label %112

97:                                               ; preds = %79
  %98 = load i32, i32* @RFCSR12_DR0, align 4
  %99 = call i32 @rt2x00_set_field8(i32* %10, i32 %98, i32 7)
  %100 = load i32, i32* @RFCSR12_TX_POWER, align 4
  %101 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %102 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 3
  %105 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %106 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 12
  %109 = shl i32 %108, 1
  %110 = or i32 %104, %109
  %111 = call i32 @rt2x00_set_field8(i32* %10, i32 %100, i32 %110)
  br label %112

112:                                              ; preds = %97, %89
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %113, i32 12, i32 %114)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %117 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %116, i32 13)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %119 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %120, 14
  br i1 %121, label %122, label %130

122:                                              ; preds = %112
  %123 = load i32, i32* @RFCSR13_DR0, align 4
  %124 = call i32 @rt2x00_set_field8(i32* %10, i32 %123, i32 3)
  %125 = load i32, i32* @RFCSR13_TX_POWER, align 4
  %126 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %127 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @rt2x00_set_field8(i32* %10, i32 %125, i32 %128)
  br label %145

130:                                              ; preds = %112
  %131 = load i32, i32* @RFCSR13_DR0, align 4
  %132 = call i32 @rt2x00_set_field8(i32* %10, i32 %131, i32 7)
  %133 = load i32, i32* @RFCSR13_TX_POWER, align 4
  %134 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %135 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 3
  %138 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %139 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 12
  %142 = shl i32 %141, 1
  %143 = or i32 %137, %142
  %144 = call i32 @rt2x00_set_field8(i32* %10, i32 %133, i32 %143)
  br label %145

145:                                              ; preds = %130, %122
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %146, i32 13, i32 %147)
  %149 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %150 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %149, i32 1)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %152 = call i32 @rt2x00_set_field8(i32* %10, i32 %151, i32 0)
  %153 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %154 = call i32 @rt2x00_set_field8(i32* %10, i32 %153, i32 0)
  %155 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %156 = call i32 @rt2x00_set_field8(i32* %10, i32 %155, i32 0)
  %157 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %158 = call i32 @rt2x00_set_field8(i32* %10, i32 %157, i32 0)
  %159 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %160 = call i32 @rt2x00_set_field8(i32* %10, i32 %159, i32 0)
  %161 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %162 = call i32 @rt2x00_set_field8(i32* %10, i32 %161, i32 0)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %164 = call i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %145
  %167 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %168 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp sle i32 %169, 14
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %173 = call i32 @rt2x00_set_field8(i32* %10, i32 %172, i32 1)
  %174 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %175 = call i32 @rt2x00_set_field8(i32* %10, i32 %174, i32 1)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %178 = call i32 @rt2x00_set_field8(i32* %10, i32 %177, i32 1)
  %179 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %180 = call i32 @rt2x00_set_field8(i32* %10, i32 %179, i32 1)
  br label %204

181:                                              ; preds = %145
  %182 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %183 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %192 [
    i32 1, label %186
    i32 2, label %189
  ]

186:                                              ; preds = %181
  %187 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %188 = call i32 @rt2x00_set_field8(i32* %10, i32 %187, i32 1)
  br label %189

189:                                              ; preds = %181, %186
  %190 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %191 = call i32 @rt2x00_set_field8(i32* %10, i32 %190, i32 1)
  br label %192

192:                                              ; preds = %181, %189
  %193 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %194 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  switch i32 %196, label %203 [
    i32 1, label %197
    i32 2, label %200
  ]

197:                                              ; preds = %192
  %198 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %199 = call i32 @rt2x00_set_field8(i32* %10, i32 %198, i32 1)
  br label %200

200:                                              ; preds = %192, %197
  %201 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %202 = call i32 @rt2x00_set_field8(i32* %10, i32 %201, i32 1)
  br label %203

203:                                              ; preds = %192, %200
  br label %204

204:                                              ; preds = %203, %176
  %205 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %205, i32 1, i32 %206)
  %208 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %209 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %208, i32 23)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* @RFCSR23_FREQ_OFFSET, align 4
  %211 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %212 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @rt2x00_set_field8(i32* %10, i32 %210, i32 %213)
  %215 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %215, i32 23, i32 %216)
  %218 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %219 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %204
  %222 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %223 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %224 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %222, i32 24, i32 %225)
  %227 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %228 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %229 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %227, i32 31, i32 %230)
  br label %243

232:                                              ; preds = %204
  %233 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %234 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %235 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %233, i32 24, i32 %236)
  %238 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %239 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %240 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %238, i32 31, i32 %241)
  br label %243

243:                                              ; preds = %232, %221
  %244 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %245 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp sle i32 %246, 14
  br i1 %247, label %248, label %281

248:                                              ; preds = %243
  %249 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %250 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %249, i32 7, i32 216)
  %251 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %252 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %251, i32 9, i32 195)
  %253 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %254 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %253, i32 10, i32 241)
  %255 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %256 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %255, i32 11, i32 185)
  %257 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %258 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %257, i32 15, i32 83)
  store i32 76, i32* %10, align 4
  %259 = load i32, i32* @RFCSR16_TXMIXER_GAIN, align 4
  %260 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %261 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @rt2x00_set_field8(i32* %10, i32 %259, i32 %262)
  %264 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %264, i32 16, i32 %265)
  %267 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %268 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %267, i32 17, i32 35)
  %269 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %270 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %269, i32 19, i32 147)
  %271 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %272 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %271, i32 20, i32 179)
  %273 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %274 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %273, i32 25, i32 21)
  %275 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %276 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %275, i32 26, i32 133)
  %277 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %278 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %277, i32 27, i32 0)
  %279 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %280 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %279, i32 29, i32 155)
  br label %351

281:                                              ; preds = %243
  %282 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %283 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %282, i32 7)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* @RFCSR7_BIT2, align 4
  %285 = call i32 @rt2x00_set_field8(i32* %10, i32 %284, i32 1)
  %286 = load i32, i32* @RFCSR7_BIT3, align 4
  %287 = call i32 @rt2x00_set_field8(i32* %10, i32 %286, i32 0)
  %288 = load i32, i32* @RFCSR7_BIT4, align 4
  %289 = call i32 @rt2x00_set_field8(i32* %10, i32 %288, i32 1)
  %290 = load i32, i32* @RFCSR7_BITS67, align 4
  %291 = call i32 @rt2x00_set_field8(i32* %10, i32 %290, i32 0)
  %292 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %292, i32 7, i32 %293)
  %295 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %296 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %295, i32 9, i32 192)
  %297 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %298 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %297, i32 10, i32 241)
  %299 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %300 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %299, i32 11, i32 0)
  %301 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %302 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %301, i32 15, i32 67)
  store i32 122, i32* %10, align 4
  %303 = load i32, i32* @RFCSR16_TXMIXER_GAIN, align 4
  %304 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %305 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @rt2x00_set_field8(i32* %10, i32 %303, i32 %306)
  %308 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %308, i32 16, i32 %309)
  %311 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %312 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %311, i32 17, i32 35)
  %313 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %314 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp sle i32 %315, 64
  br i1 %316, label %317, label %324

317:                                              ; preds = %281
  %318 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %319 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %318, i32 19, i32 183)
  %320 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %321 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %320, i32 20, i32 246)
  %322 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %323 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %322, i32 25, i32 61)
  br label %344

324:                                              ; preds = %281
  %325 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %326 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp sle i32 %327, 128
  br i1 %328, label %329, label %336

329:                                              ; preds = %324
  %330 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %331 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %330, i32 19, i32 116)
  %332 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %333 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %332, i32 20, i32 244)
  %334 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %335 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %334, i32 25, i32 1)
  br label %343

336:                                              ; preds = %324
  %337 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %338 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %337, i32 19, i32 114)
  %339 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %340 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %339, i32 20, i32 243)
  %341 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %342 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %341, i32 25, i32 1)
  br label %343

343:                                              ; preds = %336, %329
  br label %344

344:                                              ; preds = %343, %317
  %345 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %346 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %345, i32 26, i32 135)
  %347 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %348 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %347, i32 27, i32 1)
  %349 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %350 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %349, i32 29, i32 159)
  br label %351

351:                                              ; preds = %344, %248
  %352 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %353 = load i32, i32* @GPIO_CTRL, align 4
  %354 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %352, i32 %353)
  store i32 %354, i32* %11, align 4
  %355 = load i32, i32* @GPIO_CTRL_DIR7, align 4
  %356 = call i32 @rt2x00_set_field32(i32* %11, i32 %355, i32 0)
  %357 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %358 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = icmp sle i32 %359, 14
  br i1 %360, label %361, label %364

361:                                              ; preds = %351
  %362 = load i32, i32* @GPIO_CTRL_VAL7, align 4
  %363 = call i32 @rt2x00_set_field32(i32* %11, i32 %362, i32 1)
  br label %367

364:                                              ; preds = %351
  %365 = load i32, i32* @GPIO_CTRL_VAL7, align 4
  %366 = call i32 @rt2x00_set_field32(i32* %11, i32 %365, i32 0)
  br label %367

367:                                              ; preds = %364, %361
  %368 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %369 = load i32, i32* @GPIO_CTRL, align 4
  %370 = load i32, i32* %11, align 4
  %371 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %368, i32 %369, i32 %370)
  %372 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %373 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %372, i32 7)
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* @RFCSR7_RF_TUNING, align 4
  %375 = call i32 @rt2x00_set_field8(i32* %10, i32 %374, i32 1)
  %376 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %377 = load i32, i32* %10, align 4
  %378 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %376, i32 7, i32 %377)
  ret void
}

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
