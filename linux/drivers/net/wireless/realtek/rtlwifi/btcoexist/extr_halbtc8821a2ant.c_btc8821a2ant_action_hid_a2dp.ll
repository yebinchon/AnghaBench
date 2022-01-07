; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_hid_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_hid_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_hid_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_hid_a2dp(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %8, i32 0, i32 2, i32 15, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %12 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %10, i32 1, i32 2, i32 %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %15 = call i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %13, i32 3, i32 %14, i32 37)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 1
  %18 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %20 = load i32, i32* @BTC_RF_A, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32 1, i32 1048575, i32 0)
  %22 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %23 = load i32, i32* @NORMAL_EXEC, align 4
  %24 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %22, i32 %23, i32 0, i32 1, i32 5)
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %26 = load i32, i32* @NORMAL_EXEC, align 4
  %27 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %25, i32 %26, i32 6)
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 0
  %30 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %33 = bitcast i64* %3 to i32*
  %34 = call i32 %30(%struct.btc_coexist* %31, i32 %32, i32* %33)
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @BTC_RSSI_HIGH(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %43, i32 %44, i32 2)
  br label %59

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @BTC_RSSI_MEDIUM(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %51, i32 %52, i32 2)
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %42
  br label %96

60:                                               ; preds = %1
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @BTC_RSSI_HIGH(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %65, i32 0, i32 0
  %67 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %66, align 8
  %68 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %69 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %70 = call i32 %67(%struct.btc_coexist* %68, i32 %69, i32* %7)
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %75 = load i32, i32* @NORMAL_EXEC, align 4
  %76 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %74, i32 %75, i32 4)
  br label %81

77:                                               ; preds = %64
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = load i32, i32* @NORMAL_EXEC, align 4
  %80 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %78, i32 %79, i32 2)
  br label %81

81:                                               ; preds = %77, %73
  br label %95

82:                                               ; preds = %60
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @BTC_RSSI_MEDIUM(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = load i32, i32* @NORMAL_EXEC, align 4
  %89 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %87, i32 %88, i32 2)
  br label %94

90:                                               ; preds = %82
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %59
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %102 = load i32, i32* @NORMAL_EXEC, align 4
  %103 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %101, i32 %102, i32 7)
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %106 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %104, i32 %105, i32 0, i32 0)
  br label %114

107:                                              ; preds = %96
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %109 = load i32, i32* @NORMAL_EXEC, align 4
  %110 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %108, i32 %109, i32 14)
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %112 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %113 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %111, i32 %112, i32 80, i32 4)
  br label %114

114:                                              ; preds = %107, %100
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118, %114
  %123 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %124 = load i32, i32* @NORMAL_EXEC, align 4
  %125 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %123, i32 %124, i32 1, i32 23)
  br label %130

126:                                              ; preds = %118
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %128 = load i32, i32* @NORMAL_EXEC, align 4
  %129 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %127, i32 %128, i32 1, i32 23)
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i64, i64* %3, align 8
  %132 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138, %134
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %144 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %143, i32 1, i32 1, i32 0, i32 0)
  %145 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %146 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %145, i32 1, i32 0, i32 0, i32 24)
  br label %152

147:                                              ; preds = %138
  %148 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %149 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %148, i32 1, i32 1, i32 0, i32 0)
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %151 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %150, i32 0, i32 0, i32 0, i32 24)
  br label %152

152:                                              ; preds = %147, %142
  br label %172

153:                                              ; preds = %130
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %153
  %162 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %163 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %162, i32 0, i32 1, i32 0, i32 0)
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %165 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %164, i32 1, i32 0, i32 0, i32 24)
  br label %171

166:                                              ; preds = %157
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %168 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %167, i32 0, i32 1, i32 0, i32 0)
  %169 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %170 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %169, i32 0, i32 0, i32 0, i32 24)
  br label %171

171:                                              ; preds = %166, %161
  br label %172

172:                                              ; preds = %171, %152
  ret void
}

declare dso_local i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_MEDIUM(i32) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
