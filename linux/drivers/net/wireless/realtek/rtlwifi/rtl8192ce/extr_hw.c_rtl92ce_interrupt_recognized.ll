; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_interrupt_recognized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_interrupt_recognized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_int = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32* }

@ISR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_interrupt_recognized(%struct.ieee80211_hw* %0, %struct.rtl_int* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_int*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_int* %1, %struct.rtl_int** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_pci* @rtl_pcidev(i32 %10)
  store %struct.rtl_pci* %11, %struct.rtl_pci** %6, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @ISR, align 4
  %14 = call i32 @rtl_read_dword(%struct.rtl_priv* %12, i32 %13)
  %15 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %16 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %14, %19
  %21 = load %struct.rtl_int*, %struct.rtl_int** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = load i32, i32* @ISR, align 4
  %25 = load %struct.rtl_int*, %struct.rtl_int** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_int, %struct.rtl_int* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rtl_write_dword(%struct.rtl_priv* %23, i32 %24, i32 %27)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
