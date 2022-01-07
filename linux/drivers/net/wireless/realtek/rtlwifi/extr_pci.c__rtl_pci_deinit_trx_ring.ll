; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_deinit_trx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_deinit_trx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RTL_PCI_MAX_RX_QUEUE = common dso_local global i64 0, align 8
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl_pci_deinit_trx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_pci_deinit_trx_ring(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @RTL_PCI_MAX_RX_QUEUE, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @_rtl_pci_free_rx_ring(%struct.ieee80211_hw* %10, i64 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %4, align 8
  br label %5

16:                                               ; preds = %5
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @_rtl_pci_free_tx_ring(%struct.ieee80211_hw* %22, i64 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %17

28:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @_rtl_pci_free_rx_ring(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @_rtl_pci_free_tx_ring(%struct.ieee80211_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
