; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_set_beacon_related_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_set_beacon_related_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_mac = type { i32 }

@REG_ATIMWND = common dso_local global i32 0, align 4
@REG_BCN_INTERVAL = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_CCK = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@REG_RXTSF_OFFSET_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92de_set_beacon_related_registers(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %4, align 8
  %12 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @REG_ATIMWND, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @rtl_write_word(%struct.rtl_priv* %15, i32 %16, i32 %17)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @REG_BCN_INTERVAL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rtl_write_word(%struct.rtl_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = load i32, i32* @REG_BCNTCFG, align 4
  %25 = call i32 @rtl_write_word(%struct.rtl_priv* %23, i32 %24, i32 26127)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @REG_RXTSF_OFFSET_CCK, align 4
  %28 = call i32 @rtl_write_byte(%struct.rtl_priv* %26, i32 %27, i32 32)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BAND_ON_5G, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @REG_RXTSF_OFFSET_OFDM, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 48)
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = load i32, i32* @REG_RXTSF_OFFSET_OFDM, align 4
  %42 = call i32 @rtl_write_byte(%struct.rtl_priv* %40, i32 %41, i32 32)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = call i32 @rtl_write_byte(%struct.rtl_priv* %44, i32 1542, i32 48)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
