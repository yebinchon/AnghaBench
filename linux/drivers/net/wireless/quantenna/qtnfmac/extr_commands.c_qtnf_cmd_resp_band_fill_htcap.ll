; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_band_fill_htcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_resp_band_fill_htcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_ht_cap = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_ht_cap = type { i32, i32, i32 }

@IEEE80211_HT_AMPDU_PARM_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY = common dso_local global i32 0, align 4
@IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ieee80211_sta_ht_cap*)* @qtnf_cmd_resp_band_fill_htcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cmd_resp_band_fill_htcap(i32* %0, %struct.ieee80211_sta_ht_cap* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca %struct.ieee80211_ht_cap*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %7, %struct.ieee80211_ht_cap** %5, align 8
  %8 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_FACTOR, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %32, i32 0, i32 3
  %34 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %34, i32 0, i32 1
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
