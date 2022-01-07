; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_set_bcn_ctrl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_set_bcn_ctrl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i64 }
%struct.rtl_priv = type { i32 }

@REG_BCN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64)* @_rtl92ee_set_bcn_ctrl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_set_bcn_ctrl_reg(%struct.ieee80211_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_pci* @rtl_pcidev(i32 %10)
  store %struct.rtl_pci* %11, %struct.rtl_pci** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %16 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = or i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* %6, align 8
  %20 = xor i64 %19, -1
  %21 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %26 = load i32, i32* @REG_BCN_CTRL, align 4
  %27 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %28 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i32 %26, i64 %29)
  ret void
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
