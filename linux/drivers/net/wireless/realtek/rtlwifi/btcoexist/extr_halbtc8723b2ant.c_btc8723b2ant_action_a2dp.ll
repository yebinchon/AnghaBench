; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_a2dp(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %14, i32 0, i32 2, i32 15, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %16, i32 1, i32 2, i32 40, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %18, i32 2, i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %22, align 8
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %26 = bitcast i32* %7 to i64*
  %27 = call i32 %23(%struct.btc_coexist* %24, i32 %25, i64* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 10
  br i1 %29, label %30, label %69

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @BTC_RSSI_HIGH(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %35, i32 0, i32 1
  %37 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %36, align 8
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %39 = load i32, i32* @BTC_RF_A, align 4
  %40 = call i32 %37(%struct.btc_coexist* %38, i32 %39, i32 1, i32 1048575, i32 0)
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %42 = load i32, i32* @NORMAL_EXEC, align 4
  %43 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %41, i32 %42, i32 6)
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %45 = load i32, i32* @NORMAL_EXEC, align 4
  %46 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %44, i32 %45, i32 0)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %47, i32 %48, i32 0)
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = load i32, i32* @NORMAL_EXEC, align 4
  %52 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %50, i32 %51, i32 0, i32 1)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %53, i32 0, i32 0
  %55 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %54, align 8
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %57 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %58 = call i32 %55(%struct.btc_coexist* %56, i32 %57, i64* %6)
  %59 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %34
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %64 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %63, i32 1, i32 0, i32 0, i32 0)
  br label %68

65:                                               ; preds = %34
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %67 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %66, i32 0, i32 0, i32 0, i32 0)
  br label %68

68:                                               ; preds = %65, %62
  br label %145

69:                                               ; preds = %30, %1
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 1
  %72 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = load i32, i32* @BTC_RF_A, align 4
  %75 = call i32 %72(%struct.btc_coexist* %73, i32 %74, i32 1, i32 1048575, i32 0)
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %77 = load i32, i32* @NORMAL_EXEC, align 4
  %78 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %76, i32 %77, i32 0, i32 0, i32 8)
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %80 = load i32, i32* @NORMAL_EXEC, align 4
  %81 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %79, i32 %80, i32 6)
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @BTC_RSSI_HIGH(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %69
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %87 = load i32, i32* @NORMAL_EXEC, align 4
  %88 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %86, i32 %87, i32 2)
  br label %93

89:                                               ; preds = %69
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = load i32, i32* @NORMAL_EXEC, align 4
  %92 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @BTC_RSSI_HIGH(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @BTC_RSSI_HIGH(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = load i32, i32* @NORMAL_EXEC, align 4
  %104 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %102, i32 %103, i32 7)
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %107 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %105, i32 %106, i32 0, i32 0)
  br label %115

108:                                              ; preds = %97, %93
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = load i32, i32* @NORMAL_EXEC, align 4
  %111 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %109, i32 %110, i32 13)
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %113 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %114 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %112, i32 %113, i32 80, i32 4)
  br label %115

115:                                              ; preds = %108, %101
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119, %115
  %124 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %125 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %124, i32 0, i32 0, i32 1)
  br label %129

126:                                              ; preds = %119
  %127 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %128 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %127, i32 0, i32 1, i32 1)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %131 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %130, i32 0, i32 0
  %132 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %131, align 8
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %134 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %135 = call i32 %132(%struct.btc_coexist* %133, i32 %134, i64* %6)
  %136 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %137 = load i64, i64* %6, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %141 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %140, i32 1, i32 0, i32 0, i32 0)
  br label %145

142:                                              ; preds = %129
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %144 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %143, i32 0, i32 0, i32 0, i32 0)
  br label %145

145:                                              ; preds = %68, %142, %139
  ret void
}

declare dso_local i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
