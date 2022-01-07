; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_ips_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_ips_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", align 1
@BTC_IPS_ENTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_ANT_PATH_BT = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_IPS_LEAVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_ips_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %8 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %7, i32 0, i32 3
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  br label %74

20:                                               ; preds = %14
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %22, align 8
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %25 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %26 = call i32 %23(%struct.btc_coexist* %24, i32 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %31 = load i32, i32* @COMP_BT_COEXIST, align 4
  %32 = load i32, i32* @DBG_LOUD, align 4
  %33 = call i32 @RT_TRACE(%struct.rtl_priv* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = call i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist* %34)
  br label %74

36:                                               ; preds = %20
  %37 = load i64, i64* @BTC_IPS_ENTER, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = load i32, i32* @COMP_BT_COEXIST, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = load i32, i32* @BTC_ANT_PATH_BT, align 4
  %49 = call i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist* %47, i32 %48, i32 0, i32 1)
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %51 = load i32, i32* @NORMAL_EXEC, align 4
  %52 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %50, i32 %51, i32 0, i32 0)
  %53 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %54 = load i32, i32* @NORMAL_EXEC, align 4
  %55 = call i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist* %53, i32 %54, i32 0)
  br label %74

56:                                               ; preds = %36
  %57 = load i64, i64* @BTC_IPS_LEAVE, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %68 = call i32 @btc8821a1ant_init_hw_config(%struct.btc_coexist* %67, i32 0, i32 0)
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %70 = call i32 @btc8821a1ant_init_coex_dm(%struct.btc_coexist* %69)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = call i32 @btc8821a1ant_query_bt_info(%struct.btc_coexist* %71)
  br label %73

73:                                               ; preds = %60, %56
  br label %74

74:                                               ; preds = %19, %29, %73, %40
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_coex_table_with_type(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a1ant_init_hw_config(%struct.btc_coexist*, i32, i32) #1

declare dso_local i32 @btc8821a1ant_init_coex_dm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_query_bt_info(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
