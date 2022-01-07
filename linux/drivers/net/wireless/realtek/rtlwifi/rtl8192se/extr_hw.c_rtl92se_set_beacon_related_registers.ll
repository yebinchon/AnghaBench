; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_set_beacon_related_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_set_beacon_related_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32, i64 }

@ATIMWND = common dso_local global i32 0, align 4
@BCN_INTERVAL = common dso_local global i32 0, align 4
@BCN_DRV_EARLY_INT = common dso_local global i32 0, align 4
@BCN_DMATIME = common dso_local global i32 0, align 4
@BCN_ERR_THRESH = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BCN_TCFG_CW_SHIFT = common dso_local global i32 0, align 4
@BCN_TCFG_IFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92se_set_beacon_related_registers(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 15, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i32, i32* @ATIMWND, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @rtl_write_word(%struct.rtl_priv* %14, i32 %15, i32 %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i32, i32* @BCN_INTERVAL, align 4
  %20 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rtl_write_word(%struct.rtl_priv* %18, i32 %19, i32 %22)
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i32, i32* @BCN_DRV_EARLY_INT, align 4
  %26 = call i32 @rtl_write_word(%struct.rtl_priv* %24, i32 %25, i32 160)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @BCN_DMATIME, align 4
  %29 = call i32 @rtl_write_word(%struct.rtl_priv* %27, i32 %28, i32 256)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = load i32, i32* @BCN_ERR_THRESH, align 4
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %30, i32 %31, i32 100)
  %33 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BCN_TCFG_CW_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %1
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BCN_TCFG_IFS, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %51 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @rtl92s_phy_set_beacon_hwreg(%struct.ieee80211_hw* %50, i32 %53)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92s_phy_set_beacon_hwreg(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
