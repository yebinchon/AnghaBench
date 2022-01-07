; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_query_protection_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_query_protection_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_tcb_desc = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@RTL_RC_OFDM_RATE24M = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_tcb_desc*, %struct.ieee80211_tx_info*)* @_rtl_query_protection_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_query_protection_mode(%struct.ieee80211_hw* %0, %struct.rtl_tcb_desc* %1, %struct.ieee80211_tx_info* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.rtl_tcb_desc*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.rtl_tcb_desc* %1, %struct.rtl_tcb_desc** %5, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %19 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %25 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %28, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %3
  %35 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %36 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %35, i32 0, i32 5
  store i32 1, i32* %36, align 4
  %37 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @RTL_RC_OFDM_RATE24M, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %48 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  br label %68

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %56 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %55, i32 0, i32 5
  store i32 1, i32* %56, align 4
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %58 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RTL_RC_OFDM_RATE24M, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %66 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %54, %49
  br label %68

68:                                               ; preds = %67, %34
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
