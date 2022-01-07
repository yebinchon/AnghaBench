; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_qurey_shortpreamble_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_qurey_shortpreamble_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_tcb_desc = type { i32, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@RTL_RC_CCK_RATE1M = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_tcb_desc*, %struct.ieee80211_tx_info*)* @_rtl_qurey_shortpreamble_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_qurey_shortpreamble_mode(%struct.ieee80211_hw* %0, %struct.rtl_tcb_desc* %1, %struct.ieee80211_tx_info* %2) #0 {
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
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @RTL_RC_CCK_RATE1M, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %22, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %43

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %32
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
