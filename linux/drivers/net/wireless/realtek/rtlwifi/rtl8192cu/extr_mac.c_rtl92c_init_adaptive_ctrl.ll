; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_init_adaptive_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_init_adaptive_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_RRSR = common dso_local global i32 0, align 4
@RATE_BITMAP_ALL = common dso_local global i32 0, align 4
@RATE_RRSR_CCK_ONLY_1M = common dso_local global i32 0, align 4
@REG_SPEC_SIFS = common dso_local global i32 0, align 4
@REG_RL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_init_adaptive_ctrl(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %9 = load i32, i32* @REG_RRSR, align 4
  %10 = call i32 @rtl_read_dword(%struct.rtl_priv* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RATE_BITMAP_ALL, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @RATE_RRSR_CCK_ONLY_1M, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = load i32, i32* @REG_RRSR, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @rtl_write_dword(%struct.rtl_priv* %18, i32 %19, i32 %20)
  %22 = call i32 @_SPEC_SIFS_CCK(i32 16)
  %23 = call i32 @_SPEC_SIFS_OFDM(i32 16)
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = load i32, i32* @REG_SPEC_SIFS, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @rtl_write_word(%struct.rtl_priv* %25, i32 %26, i32 %27)
  %29 = call i32 @_LRL(i32 48)
  %30 = call i32 @_SRL(i32 48)
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %33 = load i32, i32* @REG_RL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @rtl_write_dword(%struct.rtl_priv* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_SPEC_SIFS_CCK(i32) #1

declare dso_local i32 @_SPEC_SIFS_OFDM(i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_LRL(i32) #1

declare dso_local i32 @_SRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
