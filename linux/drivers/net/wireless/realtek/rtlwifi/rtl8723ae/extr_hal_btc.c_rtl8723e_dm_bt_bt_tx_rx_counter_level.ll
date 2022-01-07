; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_bt_tx_rx_counter_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_bt_tx_rx_counter_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[BTCoex], BT TxRx Counters = %d\0A\00", align 1
@BT_COEX_STATE_BT_CNT_LEVEL_0 = common dso_local global i32 0, align 4
@BT_COEX_STATE_BT_CNT_LEVEL_1 = common dso_local global i32 0, align 4
@BT_COEX_STATE_BT_CNT_LEVEL_2 = common dso_local global i32 0, align 4
@BT_TXRX_CNT_THRES_3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT TxRx Counters at level 3\0A\00", align 1
@BT_TXRX_CNT_LEVEL_3 = common dso_local global i32 0, align 4
@BT_COEX_STATE_BT_CNT_LEVEL_3 = common dso_local global i32 0, align 4
@BT_TXRX_CNT_THRES_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT TxRx Counters at level 2\0A\00", align 1
@BT_TXRX_CNT_LEVEL_2 = common dso_local global i32 0, align 4
@BT_TXRX_CNT_THRES_1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT TxRx Counters at level 1\0A\00", align 1
@BT_TXRX_CNT_LEVEL_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT TxRx Counters at level 0\0A\00", align 1
@BT_TXRX_CNT_LEVEL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_bt_tx_rx_counter_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723e_dm_bt_bt_tx_rx_counter_level(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i64 @rtl8723e_dm_bt_tx_rx_couter_h(%struct.ieee80211_hw* %8)
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i64 @rtl8723e_dm_bt_tx_rx_couter_l(%struct.ieee80211_hw* %10)
  %12 = add nsw i64 %9, %11
  store i64 %12, i64* %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_DMESG, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_0, align 4
  %19 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_1, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_2, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @BT_TXRX_CNT_THRES_3, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i32, i32* @COMP_BT_COEXIST, align 4
  %35 = load i32, i32* @DBG_DMESG, align 4
  %36 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @BT_TXRX_CNT_LEVEL_3, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_3, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %90

44:                                               ; preds = %1
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @BT_TXRX_CNT_THRES_2, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @COMP_BT_COEXIST, align 4
  %51 = load i32, i32* @DBG_DMESG, align 4
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @BT_TXRX_CNT_LEVEL_2, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_2, align 4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %89

60:                                               ; preds = %44
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @BT_TXRX_CNT_THRES_1, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_DMESG, align 4
  %68 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @BT_TXRX_CNT_LEVEL_1, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_1, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %88

76:                                               ; preds = %60
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = load i32, i32* @COMP_BT_COEXIST, align 4
  %79 = load i32, i32* @DBG_DMESG, align 4
  %80 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @BT_TXRX_CNT_LEVEL_0, align 4
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @BT_COEX_STATE_BT_CNT_LEVEL_0, align 4
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76, %64
  br label %89

89:                                               ; preds = %88, %48
  br label %90

90:                                               ; preds = %89, %32
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_tx_rx_couter_h(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl8723e_dm_bt_tx_rx_couter_l(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
