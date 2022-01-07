; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32 }
%struct.channel_info = type { i8*, i8*, i8* }

@RF3322_RFCSR30_TX_H20M = common dso_local global i32 0, align 4
@RF3322_RFCSR30_RX_H20M = common dso_local global i32 0, align 4
@RFCSR30_TX_H20M = common dso_local global i32 0, align 4
@RFCSR30_RX_H20M = common dso_local global i32 0, align 4
@RFCSR3_VCOCAL_EN = common dso_local global i32 0, align 4
@RT3352 = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@RT6352 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@TX_BAND_CFG = common dso_local global i32 0, align 4
@TX_BAND_CFG_HT40_MINUS = common dso_local global i32 0, align 4
@TX_BAND_CFG_A = common dso_local global i32 0, align 4
@TX_BAND_CFG_BG = common dso_local global i32 0, align 4
@TX_PIN_CFG = common dso_local global i32 0, align 4
@TX_PIN_CFG_RFRX_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_A0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_PA_PE_G0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_A2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_G2_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_A1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_G1_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_A0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_LNA_PE_G0_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_RFTR_EN = common dso_local global i32 0, align 4
@TX_PIN_CFG_TRSW_EN = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR8 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL8 = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR4 = common dso_local global i32 0, align 4
@GPIO_CTRL_DIR7 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL4 = common dso_local global i32 0, align 4
@GPIO_CTRL_VAL7 = common dso_local global i32 0, align 4
@RT5592 = common dso_local global i32 0, align 4
@BBP4_BANDWIDTH = common dso_local global i32 0, align 4
@BBP3_HT40_MINUS = common dso_local global i32 0, align 4
@RT2860 = common dso_local global i32 0, align 4
@REV_RT2860C = common dso_local global i32 0, align 4
@CH_IDLE_STA = common dso_local global i32 0, align 4
@CH_BUSY_STA = common dso_local global i32 0, align 4
@CH_BUSY_STA_SEC = common dso_local global i32 0, align 4
@RT5350 = common dso_local global i32 0, align 4
@BBP49_UPDATE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %14 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %15 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %18 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @rt2800_txpower_to_dev(%struct.rt2x00_dev* %13, i32 %16, i8* %19)
  %21 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %22 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %24 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %25 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %28 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @rt2800_txpower_to_dev(%struct.rt2x00_dev* %23, i32 %26, i8* %29)
  %31 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %32 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %49

38:                                               ; preds = %4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %40 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %41 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %44 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @rt2800_txpower_to_dev(%struct.rt2x00_dev* %39, i32 %42, i8* %45)
  %47 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %48 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %38, %4
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %58 [
    i32 128, label %54
  ]

54:                                               ; preds = %49
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %56 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %57 = call i32 @rt3883_bbp_adjust(%struct.rt2x00_dev* %55, %struct.rf_channel* %56)
  br label %58

58:                                               ; preds = %49, %54
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %60 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %117 [
    i32 148, label %63
    i32 147, label %63
    i32 146, label %63
    i32 145, label %63
    i32 140, label %63
    i32 144, label %69
    i32 143, label %75
    i32 141, label %81
    i32 139, label %87
    i32 138, label %93
    i32 142, label %99
    i32 137, label %99
    i32 136, label %99
    i32 135, label %99
    i32 134, label %99
    i32 133, label %99
    i32 132, label %99
    i32 131, label %99
    i32 130, label %105
    i32 129, label %111
  ]

63:                                               ; preds = %58, %58, %58, %58, %58
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %66 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %67 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %68 = call i32 @rt2800_config_channel_rf3xxx(%struct.rt2x00_dev* %64, %struct.ieee80211_conf* %65, %struct.rf_channel* %66, %struct.channel_info* %67)
  br label %123

69:                                               ; preds = %58
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %71 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %72 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %73 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %74 = call i32 @rt2800_config_channel_rf3052(%struct.rt2x00_dev* %70, %struct.ieee80211_conf* %71, %struct.rf_channel* %72, %struct.channel_info* %73)
  br label %123

75:                                               ; preds = %58
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %77 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %78 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %79 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %80 = call i32 @rt2800_config_channel_rf3053(%struct.rt2x00_dev* %76, %struct.ieee80211_conf* %77, %struct.rf_channel* %78, %struct.channel_info* %79)
  br label %123

81:                                               ; preds = %58
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %83 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %84 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %85 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %86 = call i32 @rt2800_config_channel_rf3290(%struct.rt2x00_dev* %82, %struct.ieee80211_conf* %83, %struct.rf_channel* %84, %struct.channel_info* %85)
  br label %123

87:                                               ; preds = %58
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %89 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %90 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %91 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %92 = call i32 @rt2800_config_channel_rf3322(%struct.rt2x00_dev* %88, %struct.ieee80211_conf* %89, %struct.rf_channel* %90, %struct.channel_info* %91)
  br label %123

93:                                               ; preds = %58
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %95 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %96 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %97 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %98 = call i32 @rt2800_config_channel_rf3853(%struct.rt2x00_dev* %94, %struct.ieee80211_conf* %95, %struct.rf_channel* %96, %struct.channel_info* %97)
  br label %123

99:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %101 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %102 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %103 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %104 = call i32 @rt2800_config_channel_rf53xx(%struct.rt2x00_dev* %100, %struct.ieee80211_conf* %101, %struct.rf_channel* %102, %struct.channel_info* %103)
  br label %123

105:                                              ; preds = %58
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %107 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %108 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %109 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %110 = call i32 @rt2800_config_channel_rf55xx(%struct.rt2x00_dev* %106, %struct.ieee80211_conf* %107, %struct.rf_channel* %108, %struct.channel_info* %109)
  br label %123

111:                                              ; preds = %58
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %113 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %114 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %115 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %116 = call i32 @rt2800_config_channel_rf7620(%struct.rt2x00_dev* %112, %struct.ieee80211_conf* %113, %struct.rf_channel* %114, %struct.channel_info* %115)
  br label %123

117:                                              ; preds = %58
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %119 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %120 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %121 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %122 = call i32 @rt2800_config_channel_rf2xxx(%struct.rt2x00_dev* %118, %struct.ieee80211_conf* %119, %struct.rf_channel* %120, %struct.channel_info* %121)
  br label %123

123:                                              ; preds = %117, %111, %105, %99, %93, %87, %81, %75, %69, %63
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %125 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %124, i32 142)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %163, label %127

127:                                              ; preds = %123
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %129 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %128, i32 141)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %163, label %131

131:                                              ; preds = %127
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %133 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %132, i32 139)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %163, label %135

135:                                              ; preds = %131
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %137 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %136, i32 137)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %135
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %141 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %140, i32 136)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %139
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %145 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %144, i32 135)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %143
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %149 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %148, i32 134)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %153 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %152, i32 133)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %157 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %156, i32 132)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %161 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %160, i32 131)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %198

163:                                              ; preds = %159, %155, %151, %147, %143, %139, %135, %131, %127, %123
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %165 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %164, i32 30)
  store i32 %165, i32* %12, align 4
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %167 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %166, i32 139)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %163
  %170 = load i32, i32* @RF3322_RFCSR30_TX_H20M, align 4
  %171 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %172 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %171)
  %173 = call i32 @rt2x00_set_field8(i32* %12, i32 %170, i32 %172)
  %174 = load i32, i32* @RF3322_RFCSR30_RX_H20M, align 4
  %175 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %176 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %175)
  %177 = call i32 @rt2x00_set_field8(i32* %12, i32 %174, i32 %176)
  br label %187

178:                                              ; preds = %163
  %179 = load i32, i32* @RFCSR30_TX_H20M, align 4
  %180 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %181 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %180)
  %182 = call i32 @rt2x00_set_field8(i32* %12, i32 %179, i32 %181)
  %183 = load i32, i32* @RFCSR30_RX_H20M, align 4
  %184 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %185 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %184)
  %186 = call i32 @rt2x00_set_field8(i32* %12, i32 %183, i32 %185)
  br label %187

187:                                              ; preds = %178, %169
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %188, i32 30, i32 %189)
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %192 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %191, i32 3)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %194 = call i32 @rt2x00_set_field8(i32* %12, i32 %193, i32 1)
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %195, i32 3, i32 %196)
  br label %198

198:                                              ; preds = %187, %159
  %199 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %200 = load i32, i32* @RT3352, align 4
  %201 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %242

203:                                              ; preds = %198
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %205 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %206 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 55, %207
  %209 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %204, i32 62, i32 %208)
  %210 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %211 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %212 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 55, %213
  %215 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %210, i32 63, i32 %214)
  %216 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %217 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %218 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 55, %219
  %221 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %216, i32 64, i32 %220)
  %222 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %223 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %222, i32 27, i32 0)
  %224 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %225 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %226 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 38, %227
  %229 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %224, i32 66, i32 %228)
  %230 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %231 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %230, i32 27, i32 32)
  %232 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %233 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %234 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 38, %235
  %237 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %232, i32 66, i32 %236)
  %238 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %239 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %238, i32 86, i32 56)
  %240 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %241 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %240, i32 83, i32 106)
  br label %347

242:                                              ; preds = %198
  %243 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %244 = load i32, i32* @RT3593, align 4
  %245 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %289

247:                                              ; preds = %242
  %248 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %249 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp sgt i32 %250, 14
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %254 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %253, i32 70, i32 0)
  br label %258

255:                                              ; preds = %247
  %256 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %257 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %256, i32 70, i32 10)
  br label %258

258:                                              ; preds = %255, %252
  %259 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %260 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %264 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %263, i32 105, i32 4)
  br label %268

265:                                              ; preds = %258
  %266 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %267 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %266, i32 105, i32 52)
  br label %268

268:                                              ; preds = %265, %262
  %269 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %270 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %271 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 55, %272
  %274 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %269, i32 62, i32 %273)
  %275 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %276 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %277 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 55, %278
  %280 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %275, i32 63, i32 %279)
  %281 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %282 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %283 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 55, %284
  %286 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %281, i32 64, i32 %285)
  %287 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %288 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %287, i32 77, i32 152)
  br label %346

289:                                              ; preds = %242
  %290 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %291 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %290, i32 128)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %324

293:                                              ; preds = %289
  %294 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %295 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %296 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 55, %297
  %299 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %294, i32 62, i32 %298)
  %300 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %301 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %302 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 55, %303
  %305 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %300, i32 63, i32 %304)
  %306 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %307 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %308 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 55, %309
  %311 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %306, i32 64, i32 %310)
  %312 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %313 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp sgt i32 %315, 1
  br i1 %316, label %317, label %320

317:                                              ; preds = %293
  %318 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %319 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %318, i32 86, i32 70)
  br label %323

320:                                              ; preds = %293
  %321 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %322 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %321, i32 86, i32 0)
  br label %323

323:                                              ; preds = %320, %317
  br label %345

324:                                              ; preds = %289
  %325 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %326 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %327 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 55, %328
  %330 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %325, i32 62, i32 %329)
  %331 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %332 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %333 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 55, %334
  %336 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %331, i32 63, i32 %335)
  %337 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %338 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %339 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 55, %340
  %342 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %337, i32 64, i32 %341)
  %343 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %344 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %343, i32 86, i32 0)
  br label %345

345:                                              ; preds = %324, %323
  br label %346

346:                                              ; preds = %345, %268
  br label %347

347:                                              ; preds = %346, %203
  %348 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %349 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = icmp sle i32 %350, 14
  br i1 %351, label %352, label %406

352:                                              ; preds = %347
  %353 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %354 = load i32, i32* @RT5390, align 4
  %355 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %353, i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %405, label %357

357:                                              ; preds = %352
  %358 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %359 = load i32, i32* @RT5392, align 4
  %360 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %358, i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %405, label %362

362:                                              ; preds = %357
  %363 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %364 = load i32, i32* @RT6352, align 4
  %365 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %363, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %405, label %367

367:                                              ; preds = %362
  %368 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %369 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %378

371:                                              ; preds = %367
  %372 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %373 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %372, i32 82, i32 98)
  %374 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %375 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %374, i32 82, i32 98)
  %376 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %377 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %376, i32 75, i32 70)
  br label %392

378:                                              ; preds = %367
  %379 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %380 = load i32, i32* @RT3593, align 4
  %381 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %379, i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %385 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %384, i32 82, i32 98)
  br label %389

386:                                              ; preds = %378
  %387 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %388 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %387, i32 82, i32 132)
  br label %389

389:                                              ; preds = %386, %383
  %390 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %391 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %390, i32 75, i32 80)
  br label %392

392:                                              ; preds = %389, %371
  %393 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %394 = load i32, i32* @RT3593, align 4
  %395 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %393, i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %392
  %398 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %399 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %398, i32 128)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %397, %392
  %402 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %403 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %402, i32 83, i32 138)
  br label %404

404:                                              ; preds = %401, %397
  br label %405

405:                                              ; preds = %404, %362, %357, %352
  br label %459

406:                                              ; preds = %347
  %407 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %408 = load i32, i32* @RT3572, align 4
  %409 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %407, i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %406
  %412 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %413 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %412, i32 82, i32 148)
  br label %436

414:                                              ; preds = %406
  %415 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %416 = load i32, i32* @RT3593, align 4
  %417 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %415, i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %423, label %419

419:                                              ; preds = %414
  %420 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %421 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %420, i32 128)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %419, %414
  %424 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %425 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %424, i32 82, i32 130)
  br label %435

426:                                              ; preds = %419
  %427 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %428 = load i32, i32* @RT6352, align 4
  %429 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %427, i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %426
  %432 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %433 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %432, i32 82, i32 242)
  br label %434

434:                                              ; preds = %431, %426
  br label %435

435:                                              ; preds = %434, %423
  br label %436

436:                                              ; preds = %435, %411
  %437 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %438 = load i32, i32* @RT3593, align 4
  %439 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %437, i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %445, label %441

441:                                              ; preds = %436
  %442 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %443 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %442, i32 128)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %441, %436
  %446 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %447 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %446, i32 83, i32 154)
  br label %448

448:                                              ; preds = %445, %441
  %449 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %450 = call i64 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %448
  %453 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %454 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %453, i32 75, i32 70)
  br label %458

455:                                              ; preds = %448
  %456 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %457 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %456, i32 75, i32 80)
  br label %458

458:                                              ; preds = %455, %452
  br label %459

459:                                              ; preds = %458, %405
  %460 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %461 = load i32, i32* @TX_BAND_CFG, align 4
  %462 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %460, i32 %461)
  store i32 %462, i32* %9, align 4
  %463 = load i32, i32* @TX_BAND_CFG_HT40_MINUS, align 4
  %464 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %465 = call i32 @conf_is_ht40_minus(%struct.ieee80211_conf* %464)
  %466 = call i32 @rt2x00_set_field32(i32* %9, i32 %463, i32 %465)
  %467 = load i32, i32* @TX_BAND_CFG_A, align 4
  %468 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %469 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp sgt i32 %470, 14
  %472 = zext i1 %471 to i32
  %473 = call i32 @rt2x00_set_field32(i32* %9, i32 %467, i32 %472)
  %474 = load i32, i32* @TX_BAND_CFG_BG, align 4
  %475 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %476 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = icmp sle i32 %477, 14
  %479 = zext i1 %478 to i32
  %480 = call i32 @rt2x00_set_field32(i32* %9, i32 %474, i32 %479)
  %481 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %482 = load i32, i32* @TX_BAND_CFG, align 4
  %483 = load i32, i32* %9, align 4
  %484 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %481, i32 %482, i32 %483)
  %485 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %486 = load i32, i32* @RT3572, align 4
  %487 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %485, i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %459
  %490 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %491 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %490, i32 8, i32 0)
  br label %492

492:                                              ; preds = %489, %459
  %493 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %494 = load i32, i32* @RT6352, align 4
  %495 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %493, i32 %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %492
  %498 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %499 = load i32, i32* @TX_PIN_CFG, align 4
  %500 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %498, i32 %499)
  store i32 %500, i32* %10, align 4
  %501 = load i32, i32* @TX_PIN_CFG_RFRX_EN, align 4
  %502 = call i32 @rt2x00_set_field32(i32* %10, i32 %501, i32 1)
  br label %504

503:                                              ; preds = %492
  store i32 0, i32* %10, align 4
  br label %504

504:                                              ; preds = %503, %497
  %505 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %506 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  switch i32 %508, label %562 [
    i32 3, label %509
    i32 2, label %524
    i32 1, label %539
  ]

509:                                              ; preds = %504
  %510 = load i32, i32* @TX_PIN_CFG_PA_PE_A2_EN, align 4
  %511 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %512 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = icmp sgt i32 %513, 14
  %515 = zext i1 %514 to i32
  %516 = call i32 @rt2x00_set_field32(i32* %10, i32 %510, i32 %515)
  %517 = load i32, i32* @TX_PIN_CFG_PA_PE_G2_EN, align 4
  %518 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %519 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = icmp sle i32 %520, 14
  %522 = zext i1 %521 to i32
  %523 = call i32 @rt2x00_set_field32(i32* %10, i32 %517, i32 %522)
  br label %524

524:                                              ; preds = %504, %509
  %525 = load i32, i32* @TX_PIN_CFG_PA_PE_A1_EN, align 4
  %526 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %527 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = icmp sgt i32 %528, 14
  %530 = zext i1 %529 to i32
  %531 = call i32 @rt2x00_set_field32(i32* %10, i32 %525, i32 %530)
  %532 = load i32, i32* @TX_PIN_CFG_PA_PE_G1_EN, align 4
  %533 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %534 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = icmp sle i32 %535, 14
  %537 = zext i1 %536 to i32
  %538 = call i32 @rt2x00_set_field32(i32* %10, i32 %532, i32 %537)
  br label %539

539:                                              ; preds = %504, %524
  %540 = load i32, i32* @TX_PIN_CFG_PA_PE_A0_EN, align 4
  %541 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %542 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = icmp sgt i32 %543, 14
  %545 = zext i1 %544 to i32
  %546 = call i32 @rt2x00_set_field32(i32* %10, i32 %540, i32 %545)
  %547 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %548 = call i32 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev* %547)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %539
  %551 = load i32, i32* @TX_PIN_CFG_PA_PE_G0_EN, align 4
  %552 = call i32 @rt2x00_set_field32(i32* %10, i32 %551, i32 1)
  br label %561

553:                                              ; preds = %539
  %554 = load i32, i32* @TX_PIN_CFG_PA_PE_G0_EN, align 4
  %555 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %556 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = icmp sle i32 %557, 14
  %559 = zext i1 %558 to i32
  %560 = call i32 @rt2x00_set_field32(i32* %10, i32 %554, i32 %559)
  br label %561

561:                                              ; preds = %553, %550
  br label %562

562:                                              ; preds = %504, %561
  %563 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %564 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  switch i32 %566, label %582 [
    i32 3, label %567
    i32 2, label %572
    i32 1, label %577
  ]

567:                                              ; preds = %562
  %568 = load i32, i32* @TX_PIN_CFG_LNA_PE_A2_EN, align 4
  %569 = call i32 @rt2x00_set_field32(i32* %10, i32 %568, i32 1)
  %570 = load i32, i32* @TX_PIN_CFG_LNA_PE_G2_EN, align 4
  %571 = call i32 @rt2x00_set_field32(i32* %10, i32 %570, i32 1)
  br label %572

572:                                              ; preds = %562, %567
  %573 = load i32, i32* @TX_PIN_CFG_LNA_PE_A1_EN, align 4
  %574 = call i32 @rt2x00_set_field32(i32* %10, i32 %573, i32 1)
  %575 = load i32, i32* @TX_PIN_CFG_LNA_PE_G1_EN, align 4
  %576 = call i32 @rt2x00_set_field32(i32* %10, i32 %575, i32 1)
  br label %577

577:                                              ; preds = %562, %572
  %578 = load i32, i32* @TX_PIN_CFG_LNA_PE_A0_EN, align 4
  %579 = call i32 @rt2x00_set_field32(i32* %10, i32 %578, i32 1)
  %580 = load i32, i32* @TX_PIN_CFG_LNA_PE_G0_EN, align 4
  %581 = call i32 @rt2x00_set_field32(i32* %10, i32 %580, i32 1)
  br label %582

582:                                              ; preds = %562, %577
  %583 = load i32, i32* @TX_PIN_CFG_RFTR_EN, align 4
  %584 = call i32 @rt2x00_set_field32(i32* %10, i32 %583, i32 1)
  %585 = load i32, i32* @TX_PIN_CFG_TRSW_EN, align 4
  %586 = call i32 @rt2x00_set_field32(i32* %10, i32 %585, i32 1)
  %587 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %588 = load i32, i32* @TX_PIN_CFG, align 4
  %589 = load i32, i32* %10, align 4
  %590 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %587, i32 %588, i32 %589)
  %591 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %592 = load i32, i32* @RT3572, align 4
  %593 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %591, i32 %592)
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %619

595:                                              ; preds = %582
  %596 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %597 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %596, i32 8, i32 128)
  %598 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %599 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = icmp sle i32 %600, 14
  br i1 %601, label %602, label %608

602:                                              ; preds = %595
  %603 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %604 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = mul nsw i32 2, %605
  %607 = add nsw i32 28, %606
  store i32 %607, i32* %9, align 4
  br label %615

608:                                              ; preds = %595
  %609 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %610 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = mul nsw i32 %611, 5
  %613 = sdiv i32 %612, 3
  %614 = add nsw i32 34, %613
  store i32 %614, i32* %9, align 4
  br label %615

615:                                              ; preds = %608, %602
  %616 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %617 = load i32, i32* %9, align 4
  %618 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %616, i32 66, i32 %617)
  br label %619

619:                                              ; preds = %615, %582
  %620 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %621 = load i32, i32* @RT3593, align 4
  %622 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %620, i32 %621)
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %624, label %699

624:                                              ; preds = %619
  %625 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %626 = load i32, i32* @GPIO_CTRL, align 4
  %627 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %625, i32 %626)
  store i32 %627, i32* %9, align 4
  %628 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %629 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %628)
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %635, label %631

631:                                              ; preds = %624
  %632 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %633 = call i64 @rt2x00_is_pcie(%struct.rt2x00_dev* %632)
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %649

635:                                              ; preds = %631, %624
  %636 = load i32, i32* @GPIO_CTRL_DIR8, align 4
  %637 = call i32 @rt2x00_set_field32(i32* %9, i32 %636, i32 0)
  %638 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %639 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = icmp sle i32 %640, 14
  br i1 %641, label %642, label %645

642:                                              ; preds = %635
  %643 = load i32, i32* @GPIO_CTRL_VAL8, align 4
  %644 = call i32 @rt2x00_set_field32(i32* %9, i32 %643, i32 1)
  br label %648

645:                                              ; preds = %635
  %646 = load i32, i32* @GPIO_CTRL_VAL8, align 4
  %647 = call i32 @rt2x00_set_field32(i32* %9, i32 %646, i32 0)
  br label %648

648:                                              ; preds = %645, %642
  br label %649

649:                                              ; preds = %648, %631
  %650 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %651 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %650)
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %662

653:                                              ; preds = %649
  %654 = load i32, i32* @GPIO_CTRL_DIR4, align 4
  %655 = call i32 @rt2x00_set_field32(i32* %9, i32 %654, i32 0)
  %656 = load i32, i32* @GPIO_CTRL_DIR7, align 4
  %657 = call i32 @rt2x00_set_field32(i32* %9, i32 %656, i32 0)
  %658 = load i32, i32* @GPIO_CTRL_VAL4, align 4
  %659 = call i32 @rt2x00_set_field32(i32* %9, i32 %658, i32 1)
  %660 = load i32, i32* @GPIO_CTRL_VAL7, align 4
  %661 = call i32 @rt2x00_set_field32(i32* %9, i32 %660, i32 1)
  br label %672

662:                                              ; preds = %649
  %663 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %664 = call i64 @rt2x00_is_pcie(%struct.rt2x00_dev* %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %662
  %667 = load i32, i32* @GPIO_CTRL_DIR4, align 4
  %668 = call i32 @rt2x00_set_field32(i32* %9, i32 %667, i32 0)
  %669 = load i32, i32* @GPIO_CTRL_VAL4, align 4
  %670 = call i32 @rt2x00_set_field32(i32* %9, i32 %669, i32 1)
  br label %671

671:                                              ; preds = %666, %662
  br label %672

672:                                              ; preds = %671, %653
  %673 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %674 = load i32, i32* @GPIO_CTRL, align 4
  %675 = load i32, i32* %9, align 4
  %676 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %673, i32 %674, i32 %675)
  %677 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %678 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = icmp sle i32 %679, 14
  br i1 %680, label %681, label %687

681:                                              ; preds = %672
  %682 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %683 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 4
  %685 = mul nsw i32 2, %684
  %686 = add nsw i32 28, %685
  store i32 %686, i32* %9, align 4
  br label %694

687:                                              ; preds = %672
  %688 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %689 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %688, i32 0, i32 0
  %690 = load i32, i32* %689, align 4
  %691 = mul nsw i32 %690, 5
  %692 = sdiv i32 %691, 3
  %693 = add nsw i32 34, %692
  store i32 %693, i32* %9, align 4
  br label %694

694:                                              ; preds = %687, %681
  %695 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %696 = load i32, i32* %9, align 4
  %697 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %695, i32 66, i32 %696)
  %698 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %699

699:                                              ; preds = %694, %619
  %700 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %701 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %700, i32 128)
  %702 = icmp ne i64 %701, 0
  br i1 %702, label %703, label %735

703:                                              ; preds = %699
  %704 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %705 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %704)
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %703
  %708 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %709 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %708, i32 105, i32 52)
  br label %713

710:                                              ; preds = %703
  %711 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %712 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %711, i32 105, i32 4)
  br label %713

713:                                              ; preds = %710, %707
  %714 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %715 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 4
  %717 = icmp sle i32 %716, 14
  br i1 %717, label %718, label %723

718:                                              ; preds = %713
  %719 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %720 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 4
  %722 = add nsw i32 46, %721
  store i32 %722, i32* %9, align 4
  br label %730

723:                                              ; preds = %713
  %724 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %725 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 4
  %727 = mul nsw i32 %726, 5
  %728 = sdiv i32 %727, 3
  %729 = add nsw i32 32, %728
  store i32 %729, i32* %9, align 4
  br label %730

730:                                              ; preds = %723, %718
  %731 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %732 = load i32, i32* %9, align 4
  %733 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %731, i32 66, i32 %732)
  %734 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %735

735:                                              ; preds = %730, %699
  %736 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %737 = load i32, i32* @RT5592, align 4
  %738 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %736, i32 %737)
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %745, label %740

740:                                              ; preds = %735
  %741 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %742 = load i32, i32* @RT6352, align 4
  %743 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %741, i32 %742)
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %790

745:                                              ; preds = %740, %735
  store i32 16, i32* %9, align 4
  %746 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %747 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %746)
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %765, label %749

749:                                              ; preds = %745
  %750 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %751 = load i32, i32* @RT6352, align 4
  %752 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %750, i32 %751)
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %761

754:                                              ; preds = %749
  %755 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %756 = call i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev* %755)
  %757 = icmp ne i64 %756, 0
  br i1 %757, label %758, label %761

758:                                              ; preds = %754
  %759 = load i32, i32* %9, align 4
  %760 = or i32 %759, 5
  store i32 %760, i32* %9, align 4
  br label %764

761:                                              ; preds = %754, %749
  %762 = load i32, i32* %9, align 4
  %763 = or i32 %762, 10
  store i32 %763, i32* %9, align 4
  br label %764

764:                                              ; preds = %761, %758
  br label %765

765:                                              ; preds = %764, %745
  %766 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %767 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %766, i32 195, i32 141)
  %768 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %769 = load i32, i32* %9, align 4
  %770 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %768, i32 196, i32 %769)
  %771 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %772 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %771, i32 0, i32 0
  %773 = load i32, i32* %772, align 4
  %774 = icmp sle i32 %773, 14
  %775 = zext i1 %774 to i64
  %776 = select i1 %774, i32 28, i32 36
  %777 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %778 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %777, i32 0, i32 0
  %779 = load i32, i32* %778, align 4
  %780 = mul nsw i32 2, %779
  %781 = add nsw i32 %776, %780
  store i32 %781, i32* %9, align 4
  %782 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %783 = load i32, i32* %9, align 4
  %784 = call i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev* %782, i32 66, i32 %783)
  %785 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %786 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %787 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 4
  %789 = call i32 @rt2800_iq_calibrate(%struct.rt2x00_dev* %785, i32 %788)
  br label %790

790:                                              ; preds = %765, %740
  %791 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %792 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %791, i32 4)
  store i32 %792, i32* %11, align 4
  %793 = load i32, i32* @BBP4_BANDWIDTH, align 4
  %794 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %795 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %794)
  %796 = mul nsw i32 2, %795
  %797 = call i32 @rt2x00_set_field8(i32* %11, i32 %793, i32 %796)
  %798 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %799 = load i32, i32* %11, align 4
  %800 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %798, i32 4, i32 %799)
  %801 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %802 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %801, i32 3)
  store i32 %802, i32* %11, align 4
  %803 = load i32, i32* @BBP3_HT40_MINUS, align 4
  %804 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %805 = call i32 @conf_is_ht40_minus(%struct.ieee80211_conf* %804)
  %806 = call i32 @rt2x00_set_field8(i32* %11, i32 %803, i32 %805)
  %807 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %808 = load i32, i32* %11, align 4
  %809 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %807, i32 3, i32 %808)
  %810 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %811 = load i32, i32* @RT2860, align 4
  %812 = load i32, i32* @REV_RT2860C, align 4
  %813 = call i64 @rt2x00_rt_rev(%struct.rt2x00_dev* %810, i32 %811, i32 %812)
  %814 = icmp ne i64 %813, 0
  br i1 %814, label %815, label %834

815:                                              ; preds = %790
  %816 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %817 = call i32 @conf_is_ht40(%struct.ieee80211_conf* %816)
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %819, label %826

819:                                              ; preds = %815
  %820 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %821 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %820, i32 69, i32 26)
  %822 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %823 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %822, i32 70, i32 10)
  %824 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %825 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %824, i32 73, i32 22)
  br label %833

826:                                              ; preds = %815
  %827 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %828 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %827, i32 69, i32 22)
  %829 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %830 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %829, i32 70, i32 8)
  %831 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %832 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %831, i32 73, i32 17)
  br label %833

833:                                              ; preds = %826, %819
  br label %834

834:                                              ; preds = %833, %790
  %835 = call i32 @usleep_range(i32 1000, i32 1500)
  %836 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %837 = load i32, i32* @CH_IDLE_STA, align 4
  %838 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %836, i32 %837)
  store i32 %838, i32* %9, align 4
  %839 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %840 = load i32, i32* @CH_BUSY_STA, align 4
  %841 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %839, i32 %840)
  store i32 %841, i32* %9, align 4
  %842 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %843 = load i32, i32* @CH_BUSY_STA_SEC, align 4
  %844 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %842, i32 %843)
  store i32 %844, i32* %9, align 4
  %845 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %846 = load i32, i32* @RT3352, align 4
  %847 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %845, i32 %846)
  %848 = icmp ne i64 %847, 0
  br i1 %848, label %854, label %849

849:                                              ; preds = %834
  %850 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %851 = load i32, i32* @RT5350, align 4
  %852 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %850, i32 %851)
  %853 = icmp ne i64 %852, 0
  br i1 %853, label %854, label %862

854:                                              ; preds = %849, %834
  %855 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %856 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %855, i32 49)
  store i32 %856, i32* %11, align 4
  %857 = load i32, i32* @BBP49_UPDATE_FLAG, align 4
  %858 = call i32 @rt2x00_set_field8(i32* %11, i32 %857, i32 0)
  %859 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %860 = load i32, i32* %11, align 4
  %861 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %859, i32 49, i32 %860)
  br label %862

862:                                              ; preds = %854, %849
  ret void
}

declare dso_local i8* @rt2800_txpower_to_dev(%struct.rt2x00_dev*, i32, i8*) #1

declare dso_local i32 @rt3883_bbp_adjust(%struct.rt2x00_dev*, %struct.rf_channel*) #1

declare dso_local i32 @rt2800_config_channel_rf3xxx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3052(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3053(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3290(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3322(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf3853(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf53xx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf55xx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf7620(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i32 @rt2800_config_channel_rf2xxx(%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_has_cap_external_lna_bg(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_has_cap_external_lna_a(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @conf_is_ht40_minus(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_has_cap_bt_coexist(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_bbp_write_with_rx_chain(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_is_pcie(%struct.rt2x00_dev*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rt2800_iq_calibrate(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_rt_rev(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
