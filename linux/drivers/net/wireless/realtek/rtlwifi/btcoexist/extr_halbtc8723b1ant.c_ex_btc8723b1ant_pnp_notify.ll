; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_pnp_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_pnp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.btc_coexist = type { i32, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[BTCoex], Pnp notify\0A\00", align 1
@BTC_WIFI_PNP_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", align 1
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_PS_WIFI_NATIVE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_WIFI_PNP_WAKE_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_pnp_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 1
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = load i32, i32* @COMP_BT_COEXIST, align 4
  %11 = load i32, i32* @DBG_LOUD, align 4
  %12 = call i32 @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @BTC_WIFI_PNP_SLEEP, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = load i32, i32* @COMP_BT_COEXIST, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = call i32 @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %23 = load i32, i32* @FORCE_EXEC, align 4
  %24 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %21, i32 %22, i32 %23, i32 0, i32 1)
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %26 = load i32, i32* @BTC_PS_WIFI_NATIVE, align 4
  %27 = call i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist* %25, i32 %26, i32 0, i32 0)
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = load i32, i32* @NORMAL_EXEC, align 4
  %30 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %28, i32 %29, i32 0, i32 0)
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = load i32, i32* @NORMAL_EXEC, align 4
  %33 = call i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist* %31, i32 %32, i32 2)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %58

40:                                               ; preds = %2
  %41 = load i64, i64* @BTC_WIFI_PNP_WAKE_UP, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %46 = load i32, i32* @COMP_BT_COEXIST, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = call i32 @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %50 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %52 = call i32 @halbtc8723b1ant_init_hw_config(%struct.btc_coexist* %51, i32 0, i32 0)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = call i32 @halbtc8723b1ant_init_coex_dm(%struct.btc_coexist* %53)
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = call i32 @halbtc8723b1ant_query_bt_info(%struct.btc_coexist* %55)
  br label %57

57:                                               ; preds = %44, %40
  br label %58

58:                                               ; preds = %57, %16
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_power_save_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_init_hw_config(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_init_coex_dm(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_query_bt_info(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
