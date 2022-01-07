; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"IEEE80211_AMPDU_TX_START: TID:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"IEEE80211_AMPDU_TX_STOP: TID:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"IEEE80211_AMPDU_TX_OPERATIONAL:TID:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"IEEE80211_AMPDU_RX_START:TID:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"IEEE80211_AMPDU_RX_STOP:TID:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"IEEE80211_AMPDU_ERR!!!!:\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_ampdu_params*)* @rtl_op_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_op_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %8, align 8
  %15 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %16, align 8
  store %struct.ieee80211_sta* %17, %struct.ieee80211_sta** %9, align 8
  %18 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %24, i32 0, i32 1
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %80 [
    i32 131, label %27
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
    i32 132, label %50
    i32 134, label %60
    i32 133, label %70
  ]

27:                                               ; preds = %3
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %29 = load i32, i32* @COMP_MAC80211, align 4
  %30 = load i32, i32* @DBG_TRACE, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @rtl_tx_agg_start(%struct.ieee80211_hw* %33, %struct.ieee80211_vif* %34, %struct.ieee80211_sta* %35, i32 %36, i32* %37)
  store i32 %38, i32* %4, align 4
  br label %85

39:                                               ; preds = %3, %3, %3
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %41 = load i32, i32* @COMP_MAC80211, align 4
  %42 = load i32, i32* @DBG_TRACE, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @rtl_tx_agg_stop(%struct.ieee80211_hw* %45, %struct.ieee80211_vif* %46, %struct.ieee80211_sta* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %85

50:                                               ; preds = %3
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %52 = load i32, i32* @COMP_MAC80211, align 4
  %53 = load i32, i32* @DBG_TRACE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @rtl_tx_agg_oper(%struct.ieee80211_hw* %56, %struct.ieee80211_sta* %57, i32 %58)
  br label %84

60:                                               ; preds = %3
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %62 = load i32, i32* @COMP_MAC80211, align 4
  %63 = load i32, i32* @DBG_TRACE, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @rtl_rx_agg_start(%struct.ieee80211_hw* %66, %struct.ieee80211_sta* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %3
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %72 = load i32, i32* @COMP_MAC80211, align 4
  %73 = load i32, i32* @DBG_TRACE, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @rtl_rx_agg_stop(%struct.ieee80211_hw* %76, %struct.ieee80211_sta* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %3
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %80, %70, %60, %39, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @rtl_tx_agg_start(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @rtl_tx_agg_stop(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rtl_tx_agg_oper(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rtl_rx_agg_start(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rtl_rx_agg_stop(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
