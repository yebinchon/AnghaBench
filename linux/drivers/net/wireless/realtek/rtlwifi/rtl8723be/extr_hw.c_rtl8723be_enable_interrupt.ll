; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32*, i32, i32 }

@REG_HIMR = common dso_local global i32 0, align 4
@REG_HIMRE = common dso_local global i32 0, align 4
@REG_HSIMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_enable_interrupt(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_pci* @rtl_pcidev(i32 %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = load i32, i32* @REG_HIMR, align 4
  %12 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rtl_write_dword(%struct.rtl_priv* %10, i32 %11, i32 %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i32, i32* @REG_HIMRE, align 4
  %20 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtl_write_dword(%struct.rtl_priv* %18, i32 %19, i32 %24)
  %26 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @REG_HSIMR, align 4
  %30 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %31 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtl_write_dword(%struct.rtl_priv* %28, i32 %29, i32 %32)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
