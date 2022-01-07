; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_rx_parse_phystats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_rx_parse_phystats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32 }
%struct.rtl8723au_phy_stats = type { i32, i32, i64 }

@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@DESC_RATE_6M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, %struct.ieee80211_rx_status*, %struct.rtl8723au_phy_stats*, i64)* @rtl8xxxu_rx_parse_phystats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_rx_parse_phystats(%struct.rtl8xxxu_priv* %0, %struct.ieee80211_rx_status* %1, %struct.rtl8723au_phy_stats* %2, i64 %3) #0 {
  %5 = alloca %struct.rtl8xxxu_priv*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.rtl8723au_phy_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %5, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %6, align 8
  store %struct.rtl8723au_phy_stats* %2, %struct.rtl8723au_phy_stats** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.rtl8723au_phy_stats*, %struct.rtl8723au_phy_stats** %7, align 8
  %11 = getelementptr inbounds %struct.rtl8723au_phy_stats, %struct.rtl8723au_phy_stats* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %16 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @DESC_RATE_6M, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.rtl8723au_phy_stats*, %struct.rtl8723au_phy_stats** %7, align 8
  %26 = getelementptr inbounds %struct.rtl8723au_phy_stats, %struct.rtl8723au_phy_stats* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 192
  switch i32 %29, label %54 [
    i32 192, label %30
    i32 128, label %36
    i32 64, label %42
    i32 0, label %48
  ]

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 62
  %33 = sub nsw i32 -46, %32
  %34 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %54

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 62
  %39 = sub nsw i32 -26, %38
  %40 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %54

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 62
  %45 = sub nsw i32 -12, %44
  %46 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %54

48:                                               ; preds = %24
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 62
  %51 = sub nsw i32 16, %50
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %24, %48, %42, %36, %30
  br label %63

55:                                               ; preds = %20
  %56 = load %struct.rtl8723au_phy_stats*, %struct.rtl8723au_phy_stats** %7, align 8
  %57 = getelementptr inbounds %struct.rtl8723au_phy_stats, %struct.rtl8723au_phy_stats* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 1
  %60 = sub nsw i32 %59, 110
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
