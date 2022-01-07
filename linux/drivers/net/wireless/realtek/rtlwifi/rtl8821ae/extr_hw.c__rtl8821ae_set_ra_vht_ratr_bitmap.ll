; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_set_ra_vht_ratr_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_set_ra_vht_ratr_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64 }

@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@WIRELESS_MODE_AC_5G = common dso_local global i32 0, align 4
@WIRELESS_MODE_AC_24G = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@BIT21 = common dso_local global i32 0, align 4
@BIT31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl8821ae_set_ra_vht_ratr_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_set_ra_vht_ratr_bitmap(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %8, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %16 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %22 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %9, align 4
  br label %56

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WIRELESS_MODE_AC_5G, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @WIRELESS_MODE_AC_24G, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32, %28
  %37 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %38 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RF_1T1R, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @BIT21, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %9, align 4
  br label %54

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @BIT31, align 4
  %50 = load i32, i32* @BIT21, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
