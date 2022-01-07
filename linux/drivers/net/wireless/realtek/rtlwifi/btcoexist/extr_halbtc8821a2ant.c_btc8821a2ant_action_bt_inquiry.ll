; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_bt_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_action_bt_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[BTCoex], Wifi link process + BT Inq/Page!!\0A\00", align 1
@NORMAL_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"[BTCoex], Wifi connected + BT Inq/Page!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[BTCoex], Wifi no-link + BT Inq/Page!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8821a2ant_action_bt_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_action_bt_inquiry(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 2
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %15, i32 0, i32 2, i32 15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %18 = load i32, i32* @BT_8821A_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %19 = call i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %17, i32 1, i32 2, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %21 = load i32, i32* @BT_8821A_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %22 = call i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %20, i32 2, i32 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 1
  %25 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %24, align 8
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %27 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %28 = call i32 %25(%struct.btc_coexist* %26, i32 %27, i32* %8)
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 0
  %31 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %30, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %33 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %34 = call i32 %31(%struct.btc_coexist* %32, i32 %33, i32* %7)
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %36 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %35, i32 0, i32 0
  %37 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %36, align 8
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %39 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %40 = call i32 %37(%struct.btc_coexist* %38, i32 %39, i32* %9)
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %42 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %41, i32 0, i32 0
  %43 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %42, align 8
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %45 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %46 = call i32 %43(%struct.btc_coexist* %44, i32 %45, i32* %10)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %48 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %47, i32 0, i32 0
  %49 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %48, align 8
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %52 = call i32 %49(%struct.btc_coexist* %50, i32 %51, i32* %11)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %55 = call i32 @btc8821a2ant_power_save_state(%struct.btc_coexist* %53, i32 %54, i32 0, i32 0)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %1
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61, %58, %1
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = call i32 @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %70 = load i32, i32* @NORMAL_EXEC, align 4
  %71 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %69, i32 %70, i32 15)
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %73 = load i32, i32* @NORMAL_EXEC, align 4
  %74 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %72, i32 %73, i32 1, i32 22)
  br label %101

75:                                               ; preds = %61
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @COMP_BT_COEXIST, align 4
  %81 = load i32, i32* @DBG_LOUD, align 4
  %82 = call i32 @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %84 = load i32, i32* @NORMAL_EXEC, align 4
  %85 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %83, i32 %84, i32 15)
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %87 = load i32, i32* @NORMAL_EXEC, align 4
  %88 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %86, i32 %87, i32 1, i32 22)
  br label %100

89:                                               ; preds = %75
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = load i32, i32* @COMP_BT_COEXIST, align 4
  %92 = load i32, i32* @DBG_LOUD, align 4
  %93 = call i32 @RT_TRACE(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = load i32, i32* @NORMAL_EXEC, align 4
  %96 = call i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist* %94, i32 %95, i32 0)
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %98 = load i32, i32* @NORMAL_EXEC, align 4
  %99 = call i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist* %97, i32 %98, i32 0, i32 1)
  br label %100

100:                                              ; preds = %89, %78
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %103 = load i32, i32* @FORCE_EXEC, align 4
  %104 = call i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist* %102, i32 %103, i32 6)
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %106 = load i32, i32* @NORMAL_EXEC, align 4
  %107 = call i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist* %105, i32 %106, i32 0)
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %109 = call i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist* %108, i32 0, i32 0, i32 0, i32 0)
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %111 = call i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist* %110, i32 0, i32 0, i32 0, i32 24)
  ret void
}

declare dso_local i32 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism1(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a2ant_sw_mechanism2(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
