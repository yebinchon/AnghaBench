; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_ConstructPSPoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_ConstructPSPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32, i64 }

@WIFI_PSPOLL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32*)* @ConstructPSPoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConstructPSPoll(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  store %struct.mlme_ext_priv* %12, %struct.mlme_ext_priv** %9, align 8
  %13 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %13, i32 0, i32 0
  store %struct.mlme_ext_info* %14, %struct.mlme_ext_info** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %7, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 2
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = call i32 @SetPwrMgt(i64* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @WIFI_PSPOLL, align 4
  %24 = call i32 @SetFrameSubType(i32* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %27 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 49152
  %30 = call i32 @SetDuration(i32* %25, i32 %29)
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 1
  %36 = call i32 @get_my_bssid(i32* %35)
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = call i32 @myid(i32* %43)
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  store i32 16, i32* %47, align 4
  ret void
}

declare dso_local i32 @SetPwrMgt(i64*) #1

declare dso_local i32 @SetFrameSubType(i32*, i32) #1

declare dso_local i32 @SetDuration(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_my_bssid(i32*) #1

declare dso_local i32 @myid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
