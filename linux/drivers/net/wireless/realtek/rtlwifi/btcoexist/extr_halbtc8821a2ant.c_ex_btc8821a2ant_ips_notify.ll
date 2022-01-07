; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_ips_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_ips_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_IPS_ENTER = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_IPS_LEAVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a2ant_ips_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 0
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load i64, i64* @BTC_IPS_ENTER, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = call i32 @btc8821a2ant_wifi_off_hw_cfg(%struct.btc_coexist* %19)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = load i32, i32* @FORCE_EXEC, align 4
  %23 = call i32 @btc8821a2ant_ignore_wlan_act(%struct.btc_coexist* %21, i32 %22, i32 1)
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = call i32 @btc8821a2ant_coex_all_off(%struct.btc_coexist* %24)
  br label %44

26:                                               ; preds = %2
  %27 = load i64, i64* @BTC_IPS_LEAVE, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = load i32, i32* @COMP_BT_COEXIST, align 4
  %33 = load i32, i32* @DBG_LOUD, align 4
  %34 = call i32 @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %38 = call i32 @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist* %37)
  %39 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %40 = call i32 @btc8821a2ant_init_coex_dm(%struct.btc_coexist* %39)
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %42 = call i32 @btc8821a2ant_query_bt_info(%struct.btc_coexist* %41)
  br label %43

43:                                               ; preds = %30, %26
  br label %44

44:                                               ; preds = %43, %12
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a2ant_wifi_off_hw_cfg(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_ignore_wlan_act(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a2ant_coex_all_off(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_init_coex_dm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_query_bt_info(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
