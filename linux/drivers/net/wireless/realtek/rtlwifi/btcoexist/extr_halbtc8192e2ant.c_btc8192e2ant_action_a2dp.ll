; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_action_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[BTCoex], A2dp, wifi/bt rssi both LOW!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8192e2ant_action_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_action_a2dp(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 1
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = call i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist* %12, i32 0, i32 2, i32 15, i32 0)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %15 = call i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist* %14, i32 3, i32 34, i32 42)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19, %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @COMP_BT_COEXIST, align 4
  %34 = load i32, i32* @DBG_LOUD, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %27, %19
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = load i32, i32* @NORMAL_EXEC, align 4
  %42 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %40, i32 %41, i32 2)
  %43 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %44 = load i32, i32* @NORMAL_EXEC, align 4
  %45 = call i32 @btc8192e2ant_limited_rx(%struct.btc_coexist* %43, i32 %44, i32 0, i32 1, i32 4)
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = load i32, i32* @NORMAL_EXEC, align 4
  %49 = call i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist* %47, i32 %48, i32 1)
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = load i32, i32* @NORMAL_EXEC, align 4
  %52 = call i32 @btc8192e2ant_limited_rx(%struct.btc_coexist* %50, i32 %51, i32 0, i32 0, i32 8)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %55 = load i32, i32* @NORMAL_EXEC, align 4
  %56 = call i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist* %54, i32 %55, i32 6)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %61 = load i32, i32* @NORMAL_EXEC, align 4
  %62 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %60, i32 %61, i32 0)
  br label %67

63:                                               ; preds = %53
  %64 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %65 = load i32, i32* @NORMAL_EXEC, align 4
  %66 = call i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist* %64, i32 %65, i32 2)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %72 = load i32, i32* @NORMAL_EXEC, align 4
  %73 = call i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist* %71, i32 %72, i32 1, i32 17)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  %76 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %77 = load i32, i32* @NORMAL_EXEC, align 4
  %78 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %76, i32 %77, i32 0)
  br label %124

79:                                               ; preds = %67
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83, %79
  %88 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %89 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %88, i32 0, i32 1, i32 1)
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = load i32, i32* @NORMAL_EXEC, align 4
  %92 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %90, i32 %91, i32 0)
  br label %123

93:                                               ; preds = %83
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97, %93
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %102, i32 0, i32 0, i32 1)
  %104 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %105 = load i32, i32* @NORMAL_EXEC, align 4
  %106 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %104, i32 %105, i32 2)
  br label %122

107:                                              ; preds = %97
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111, %107
  %116 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %117 = call i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist* %116, i32 0, i32 0, i32 1)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %119 = load i32, i32* @NORMAL_EXEC, align 4
  %120 = call i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist* %118, i32 %119, i32 4)
  br label %121

121:                                              ; preds = %115, %111
  br label %122

122:                                              ; preds = %121, %101
  br label %123

123:                                              ; preds = %122, %87
  br label %124

124:                                              ; preds = %123, %70
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %126 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %125, i32 0, i32 0
  %127 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %126, align 8
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %129 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %130 = call i32 %127(%struct.btc_coexist* %128, i32 %129, i64* %6)
  %131 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %132 = load i64, i64* %6, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %124
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138, %134
  %143 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %144 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %143, i32 1, i32 0, i32 0, i32 0)
  %145 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %146 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %145, i32 1, i32 0, i32 0, i32 24)
  br label %152

147:                                              ; preds = %138
  %148 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %149 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %148, i32 1, i32 0, i32 0, i32 0)
  %150 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %151 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %150, i32 0, i32 0, i32 0, i32 24)
  br label %152

152:                                              ; preds = %147, %142
  br label %172

153:                                              ; preds = %124
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %153
  %162 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %163 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %162, i32 0, i32 0, i32 0, i32 0)
  %164 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %165 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %164, i32 1, i32 0, i32 0, i32 24)
  br label %171

166:                                              ; preds = %157
  %167 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %168 = call i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist* %167, i32 0, i32 0, i32 0, i32 0)
  %169 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %170 = call i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist* %169, i32 0, i32 0, i32 0, i32 24)
  br label %171

171:                                              ; preds = %166, %161
  br label %172

172:                                              ; preds = %171, %152
  ret void
}

declare dso_local i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i64 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8192e2ant_switch_ss_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8192e2ant_tdma_duration_adjust(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8192e2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
