; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_pnp_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_ex_btc8821a2ant_pnp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[BTCoex], Pnp notify\0A\00", align 1
@BTC_WIFI_PNP_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"[BTCoex], Pnp notify to SLEEP\0A\00", align 1
@BTC_WIFI_PNP_WAKE_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], Pnp notify to WAKE UP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a2ant_pnp_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 0
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = load i32, i32* @COMP_BT_COEXIST, align 4
  %11 = load i32, i32* @DBG_LOUD, align 4
  %12 = call i32 @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @BTC_WIFI_PNP_SLEEP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = load i32, i32* @COMP_BT_COEXIST, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = call i32 @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %37

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @BTC_WIFI_PNP_WAKE_UP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = load i32, i32* @COMP_BT_COEXIST, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = call i32 @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = call i32 @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist* %30)
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = call i32 @btc8821a2ant_init_coex_dm(%struct.btc_coexist* %32)
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = call i32 @btc8821a2ant_query_bt_info(%struct.btc_coexist* %34)
  br label %36

36:                                               ; preds = %25, %21
  br label %37

37:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @ex_btc8821a2ant_init_hwconfig(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_init_coex_dm(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a2ant_query_bt_info(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
