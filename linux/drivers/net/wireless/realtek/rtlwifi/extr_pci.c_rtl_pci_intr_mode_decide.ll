; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_intr_mode_decide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_intr_mode_decide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci_priv = type { i32 }
%struct.rtl_pci = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl_pci_intr_mode_decide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_pci_intr_mode_decide(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_pci_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %6)
  store %struct.rtl_pci_priv* %7, %struct.rtl_pci_priv** %3, align 8
  %8 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %3, align 8
  %9 = call %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv* %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %4, align 8
  %10 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @rtl_pci_intr_mode_msi(%struct.ieee80211_hw* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @rtl_pci_intr_mode_legacy(%struct.ieee80211_hw* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %14
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @rtl_pci_intr_mode_legacy(%struct.ieee80211_hw* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(%struct.rtl_pci_priv*) #1

declare dso_local i32 @rtl_pci_intr_mode_msi(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_pci_intr_mode_legacy(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
