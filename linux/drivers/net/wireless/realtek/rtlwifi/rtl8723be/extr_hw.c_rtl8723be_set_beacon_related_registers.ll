; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_set_beacon_related_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_set_beacon_related_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32 }

@REG_ATIMWND = common dso_local global i32 0, align 4
@REG_BCN_INTERVAL = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_CCK = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_set_beacon_related_registers(%struct.ieee80211_hw* %0) #0 {
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
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @rtl8723be_disable_interrupt(%struct.ieee80211_hw* %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @REG_ATIMWND, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rtl_write_word(%struct.rtl_priv* %17, i32 %18, i32 %19)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @REG_BCN_INTERVAL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @rtl_write_word(%struct.rtl_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i32, i32* @REG_BCNTCFG, align 4
  %27 = call i32 @rtl_write_word(%struct.rtl_priv* %25, i32 %26, i32 26127)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @REG_RXTSF_OFFSET_CCK, align 4
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i32 %29, i32 24)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @REG_RXTSF_OFFSET_OFDM, align 4
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i32 %32, i32 24)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = call i32 @rtl_write_byte(%struct.rtl_priv* %34, i32 1542, i32 48)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @rtl8723be_enable_interrupt(%struct.ieee80211_hw* %36)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8723be_disable_interrupt(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8723be_enable_interrupt(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
