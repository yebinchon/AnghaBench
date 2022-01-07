; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_a2dp(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %8, i32 0, i32 2, i32 15, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %11 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %12 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %10, i32 1, i32 2, i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %15 = call i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %13, i32 2, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 10
  br i1 %17, label %18, label %74

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @BTC_RSSI_HIGH(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @BTC_RSSI_HIGH(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %29 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %27, i32 %28, i32 0, i32 0)
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 1
  %32 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %31, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = load i32, i32* @BTC_RF_A, align 4
  %35 = call i32 %32(%struct.btc_coexist* %33, i32 %34, i32 1, i32 1048575, i32 0)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = load i32, i32* @NORMAL_EXEC, align 4
  %38 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %36, i32 %37, i32 0, i32 0, i32 8)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @NORMAL_EXEC, align 4
  %41 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %39, i32 %40, i32 6)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @NORMAL_EXEC, align 4
  %44 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %42, i32 %43, i32 2)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %46 = load i32, i32* @NORMAL_EXEC, align 4
  %47 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %45, i32 %46, i32 0)
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %49 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %50 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %48, i32 %49, i32 0, i32 0)
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %52 = load i32, i32* @NORMAL_EXEC, align 4
  %53 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %51, i32 %52, i32 1, i32 23)
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %54, i32 0, i32 0
  %56 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %55, align 8
  %57 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %58 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %59 = call i32 %56(%struct.btc_coexist* %57, i32 %58, i64* %7)
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %26
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %64, i32 1, i32 0, i32 0, i32 0)
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %66, i32 1, i32 0, i32 1, i32 6)
  br label %73

68:                                               ; preds = %26
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %70 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %69, i32 0, i32 0, i32 0, i32 0)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %71, i32 1, i32 0, i32 1, i32 6)
  br label %73

73:                                               ; preds = %68, %63
  br label %184

74:                                               ; preds = %22, %18, %1
  %75 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %76 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %75, i32 0, i32 1
  %77 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %76, align 8
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = load i32, i32* @BTC_RF_A, align 4
  %80 = call i32 %77(%struct.btc_coexist* %78, i32 %79, i32 1, i32 1048575, i32 0)
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %82 = load i32, i32* @NORMAL_EXEC, align 4
  %83 = call i32 @btc8821a2ant_limited_rx(%struct.btc_coexist* %81, i32 %82, i32 0, i32 0, i32 8)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %85 = load i32, i32* @NORMAL_EXEC, align 4
  %86 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %84, i32 %85, i32 6)
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @BTC_RSSI_HIGH(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %91, i32 %92, i32 2)
  br label %98

94:                                               ; preds = %74
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = load i32, i32* @NORMAL_EXEC, align 4
  %97 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @BTC_RSSI_HIGH(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @BTC_RSSI_HIGH(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %108 = load i32, i32* @NORMAL_EXEC, align 4
  %109 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %107, i32 %108, i32 7)
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %111 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %112 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %110, i32 %111, i32 0, i32 0)
  br label %120

113:                                              ; preds = %102, %98
  %114 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %115 = load i32, i32* @NORMAL_EXEC, align 4
  %116 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %114, i32 %115, i32 13)
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %118 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %119 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %117, i32 %118, i32 80, i32 4)
  br label %120

120:                                              ; preds = %113, %106
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124, %120
  %129 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %130 = load i32, i32* @NORMAL_EXEC, align 4
  %131 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %129, i32 %130, i32 1, i32 23)
  br label %136

132:                                              ; preds = %124
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %134 = load i32, i32* @NORMAL_EXEC, align 4
  %135 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %133, i32 %134, i32 1, i32 23)
  br label %136

136:                                              ; preds = %132, %128
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %138 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %137, i32 0, i32 0
  %139 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %138, align 8
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %141 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %142 = call i32 %139(%struct.btc_coexist* %140, i32 %141, i64* %7)
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %136
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150, %146
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %156 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %155, i32 1, i32 0, i32 0, i32 0)
  %157 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %158 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %157, i32 1, i32 0, i32 0, i32 24)
  br label %164

159:                                              ; preds = %150
  %160 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %161 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %160, i32 1, i32 0, i32 0, i32 0)
  %162 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %163 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %162, i32 0, i32 0, i32 0, i32 24)
  br label %164

164:                                              ; preds = %159, %154
  br label %184

165:                                              ; preds = %136
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169, %165
  %174 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %175 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %174, i32 0, i32 0, i32 0, i32 0)
  %176 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %177 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %176, i32 1, i32 0, i32 0, i32 24)
  br label %183

178:                                              ; preds = %169
  %179 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %180 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %179, i32 0, i32 0, i32 0, i32 0)
  %181 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %182 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %181, i32 0, i32 0, i32 0, i32 24)
  br label %183

183:                                              ; preds = %178, %173
  br label %184

184:                                              ; preds = %73, %183, %164
  ret void
}

declare dso_local i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
