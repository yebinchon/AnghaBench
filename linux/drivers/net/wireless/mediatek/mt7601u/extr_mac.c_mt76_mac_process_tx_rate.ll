; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_process_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_process_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_rate = type { i32, i32, i32 }

@MT_TXWI_RATE_MCS = common dso_local global i32 0, align 4
@MT_TXWI_RATE_PHY_MODE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MT_TXWI_RATE_BW = common dso_local global i32 0, align 4
@MT_PHY_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@MT_TXWI_RATE_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_tx_rate*, i32)* @mt76_mac_process_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_mac_process_tx_rate(%struct.ieee80211_tx_rate* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_tx_rate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_tx_rate* %0, %struct.ieee80211_tx_rate** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MT_TXWI_RATE_MCS, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @FIELD_GET(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @MT_TXWI_RATE_PHY_MODE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @FIELD_GET(i32 %15, i32 %16)
  switch i32 %17, label %48 [
    i32 128, label %18
    i32 131, label %23
    i32 129, label %33
    i32 130, label %39
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 4
  %21 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 8
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %73

33:                                               ; preds = %2
  %34 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %35 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %2, %33
  %40 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %41 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %50

48:                                               ; preds = %2
  %49 = call i32 @WARN_ON(i32 1)
  br label %73

50:                                               ; preds = %39
  %51 = load i32, i32* @MT_TXWI_RATE_BW, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @FIELD_GET(i32 %51, i32 %52)
  %54 = load i32, i32* @MT_PHY_BW_40, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %58 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @MT_TXWI_RATE_SGI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %69 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %18, %29, %48, %67, %62
  ret void
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
