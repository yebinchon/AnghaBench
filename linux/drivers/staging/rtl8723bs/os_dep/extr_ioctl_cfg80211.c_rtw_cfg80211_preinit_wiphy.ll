; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_cfg80211_preinit_wiphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_rtw_cfg80211_preinit_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wiphy = type { i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@RTW_SSID_SCAN_AMOUNT = common dso_local global i32 0, align 4
@RTW_SCAN_IE_LEN_MAX = common dso_local global i32 0, align 4
@RTW_MAX_NUM_PMKIDS = common dso_local global i32 0, align 4
@RTW_MAX_REMAIN_ON_CHANNEL_DURATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@rtw_cfg80211_default_mgmt_stypes = common dso_local global i32 0, align 4
@rtw_cipher_suites = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@WIPHY_FLAG_OFFCHAN_TX = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAVE_AP_SME = common dso_local global i32 0, align 4
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@MAX_PNO_LIST_COUNT = common dso_local global i32 0, align 4
@wowlan_stub = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.wiphy*)* @rtw_cfg80211_preinit_wiphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_cfg80211_preinit_wiphy(%struct.adapter* %0, %struct.wiphy* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.wiphy*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.wiphy* %1, %struct.wiphy** %4, align 8
  %5 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %6 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %7 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %6, i32 0, i32 14
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @RTW_SSID_SCAN_AMOUNT, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @RTW_SCAN_IE_LEN_MAX, align 4
  %12 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %13 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @RTW_MAX_NUM_PMKIDS, align 4
  %15 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @RTW_MAX_REMAIN_ON_CHANNEL_DURATION, align 4
  %18 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %19 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = or i32 %27, %29
  %31 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %32 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @rtw_cfg80211_default_mgmt_stypes, align 4
  %34 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %39 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @rtw_cipher_suites, align 4
  %43 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %44 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @rtw_cipher_suites, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %48 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %50 = call i32 @rtw_spt_band_alloc(i64 %49)
  %51 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %52 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %57 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %58 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @WIPHY_FLAG_OFFCHAN_TX, align 4
  %62 = load i32, i32* @WIPHY_FLAG_HAVE_AP_SME, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %65 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %2
  %75 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %76 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %77 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %87

80:                                               ; preds = %2
  %81 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %84 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %80, %74
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rtw_spt_band_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
