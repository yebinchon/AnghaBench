; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_bt_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_action_bt_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_SCAN = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_LINK = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_ROAM = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[BTCoex], Wifi link process + BT Inq/Page!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[BTCoex], Wifi connected + BT Inq/Page!!\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*)* @btc8723b2ant_action_bt_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_action_bt_inquiry(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %10 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %9, i32 0, i32 2
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 1
  %14 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %13, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %17 = call i32 %14(%struct.btc_coexist* %15, i32 %16, i32* %5)
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 0
  %20 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %23 = call i32 %20(%struct.btc_coexist* %21, i32 %22, i32* %4)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 0
  %26 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = load i32, i32* @BTC_GET_BL_WIFI_SCAN, align 4
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 %28, i32* %6)
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 0
  %32 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %31, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = load i32, i32* @BTC_GET_BL_WIFI_LINK, align 4
  %35 = call i32 %32(%struct.btc_coexist* %33, i32 %34, i32* %7)
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %36, i32 0, i32 0
  %38 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %37, align 8
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %40 = load i32, i32* @BTC_GET_BL_WIFI_ROAM, align 4
  %41 = call i32 %38(%struct.btc_coexist* %39, i32 %40, i32* %8)
  %42 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %43 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %44 = call i32 @btc8723b2ant_power_save_state(%struct.btc_coexist* %42, i32 %43, i32 0, i32 0)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %1
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %51 = load i32, i32* @NORMAL_EXEC, align 4
  %52 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %50, i32 %51, i32 1, i32 23)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %54 = load i32, i32* @NORMAL_EXEC, align 4
  %55 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %53, i32 %54, i32 3)
  br label %99

56:                                               ; preds = %1
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62, %59, %56
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = load i32, i32* @COMP_BT_COEXIST, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = call i32 @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %71 = load i32, i32* @NORMAL_EXEC, align 4
  %72 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %70, i32 %71, i32 15)
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %74 = load i32, i32* @NORMAL_EXEC, align 4
  %75 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %73, i32 %74, i32 1, i32 22)
  br label %98

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @COMP_BT_COEXIST, align 4
  %82 = load i32, i32* @DBG_LOUD, align 4
  %83 = call i32 @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %85 = load i32, i32* @NORMAL_EXEC, align 4
  %86 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %84, i32 %85, i32 15)
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %88 = load i32, i32* @NORMAL_EXEC, align 4
  %89 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %87, i32 %88, i32 1, i32 22)
  br label %97

90:                                               ; preds = %76
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %92 = load i32, i32* @NORMAL_EXEC, align 4
  %93 = call i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist* %91, i32 %92, i32 0)
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %95 = load i32, i32* @NORMAL_EXEC, align 4
  %96 = call i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist* %94, i32 %95, i32 0, i32 1)
  br label %97

97:                                               ; preds = %90, %79
  br label %98

98:                                               ; preds = %97, %65
  br label %99

99:                                               ; preds = %98, %49
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %101 = load i32, i32* @FORCE_EXEC, align 4
  %102 = call i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist* %100, i32 %101, i32 6)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %104 = load i32, i32* @NORMAL_EXEC, align 4
  %105 = call i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist* %103, i32 %104, i32 0)
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %107 = call i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist* %106, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @btc8723b2ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8723b2ant_fw_dac_swing_lvl(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_dec_bt_pwr(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8723b2ant_sw_mechanism(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
