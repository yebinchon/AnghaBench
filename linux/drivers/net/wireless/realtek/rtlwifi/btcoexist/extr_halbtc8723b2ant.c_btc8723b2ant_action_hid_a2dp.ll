; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_hid_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_hid_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)* }

@BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_RF_A = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_LEGACY = common dso_local global i64 0, align 8
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@BTC_PS_LPS_ON = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_hid_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_hid_a2dp(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %14, i32 0, i32 2, i32 15, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %16, i32 1, i32 2, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %24, i32 3, i32 %25, i32 37)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %27, i32 0, i32 4
  %29 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = load i32, i32* @BTC_RF_A, align 4
  %32 = call i32 %29(%struct.btc_coexist* %30, i32 %31, i32 1, i32 1048575, i32 0)
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = load i32, i32* @NORMAL_EXEC, align 4
  %35 = call i32 @btc8723b2ant_limited_rx(%struct.btc_coexist* %33, i32 %34, i32 0, i32 1, i32 5)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = load i32, i32* @NORMAL_EXEC, align 4
  %38 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %36, i32 %37, i32 6)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %39, i32 0, i32 3
  %41 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %40, align 8
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %44 = call i32 %41(%struct.btc_coexist* %42, i32 %43, i64* %6)
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @BTC_WIFI_BW_LEGACY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %1
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @BTC_RSSI_HIGH(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = load i32, i32* @NORMAL_EXEC, align 4
  %55 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %53, i32 %54, i32 2)
  br label %69

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @BTC_RSSI_MEDIUM(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = load i32, i32* @NORMAL_EXEC, align 4
  %63 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %61, i32 %62, i32 2)
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = load i32, i32* @NORMAL_EXEC, align 4
  %67 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %52
  br label %100

70:                                               ; preds = %1
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @BTC_RSSI_HIGH(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = load i32, i32* @NORMAL_EXEC, align 4
  %80 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %78, i32 %79, i32 4)
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %83 = load i32, i32* @NORMAL_EXEC, align 4
  %84 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %82, i32 %83, i32 2)
  br label %85

85:                                               ; preds = %81, %77
  br label %99

86:                                               ; preds = %70
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @BTC_RSSI_MEDIUM(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %91, i32 %92, i32 2)
  br label %98

94:                                               ; preds = %86
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %96 = load i32, i32* @NORMAL_EXEC, align 4
  %97 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %69
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @BTC_RSSI_HIGH(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @BTC_RSSI_HIGH(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %110 = load i32, i32* @NORMAL_EXEC, align 4
  %111 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %109, i32 %110, i32 7)
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %113 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %114 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %112, i32 %113, i32 0, i32 0)
  br label %122

115:                                              ; preds = %104, %100
  %116 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %117 = load i32, i32* @NORMAL_EXEC, align 4
  %118 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %116, i32 %117, i32 14)
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %120 = load i32, i32* @BTC_PS_LPS_ON, align 4
  %121 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %119, i32 %120, i32 80, i32 4)
  br label %122

122:                                              ; preds = %115, %108
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @BTC_RSSI_HIGH(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 10
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %131 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %130, i32 1, i32 0, i32 1)
  br label %135

132:                                              ; preds = %126
  %133 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %134 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %133, i32 1, i32 0, i32 3)
  br label %135

135:                                              ; preds = %132, %129
  br label %169

136:                                              ; preds = %122
  %137 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %138 = load i32, i32* @NORMAL_EXEC, align 4
  %139 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %137, i32 %138, i32 18)
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %141 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %140, i32 0, i32 2
  %142 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %141, align 8
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %144 = call i32 %142(%struct.btc_coexist* %143, i32 1110, i32 56)
  %145 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %146 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %145, i32 0, i32 1
  %147 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %146, align 8
  %148 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %149 = call i32 %147(%struct.btc_coexist* %148, i32 1066, i32 2056)
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %151 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %150, i32 0, i32 0
  %152 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %151, align 8
  %153 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %154 = call i32 %152(%struct.btc_coexist* %153, i32 1072, i32 0)
  %155 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %156 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %155, i32 0, i32 0
  %157 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %156, align 8
  %158 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %159 = call i32 %157(%struct.btc_coexist* %158, i32 1076, i32 16842752)
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 10
  br i1 %161, label %162, label %165

162:                                              ; preds = %136
  %163 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %164 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %163, i32 1, i32 1, i32 1)
  br label %168

165:                                              ; preds = %136
  %166 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %167 = call i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist* %166, i32 1, i32 1, i32 3)
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %135
  %170 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %171 = load i64, i64* %6, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %175 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %174, i32 1, i32 1, i32 0, i32 0)
  br label %179

176:                                              ; preds = %169
  %177 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %178 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %177, i32 0, i32 1, i32 0, i32 0)
  br label %179

179:                                              ; preds = %176, %173
  ret void
}

declare dso_local i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i64 @BTC_RSSI_MEDIUM(i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
