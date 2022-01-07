; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_trx_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_trx_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i32*, i32, i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8192EE = common dso_local global i64 0, align 8
@TX_DESC_NUM_92E = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8822BE = common dso_local global i64 0, align 8
@TX_DESC_NUM_8822B = common dso_local global i32 0, align 4
@RT_TXDESC_NUM = common dso_local global i32 0, align 4
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i64 0, align 8
@BEACON_QUEUE = common dso_local global i64 0, align 8
@RT_TXDESC_NUM_BE_QUEUE = common dso_local global i32 0, align 4
@BE_QUEUE = common dso_local global i64 0, align 8
@RTL_PCI_MAX_RX_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_pci_init_trx_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_init_trx_var(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_pci*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_pci* @rtl_pcidev(i32 %9)
  store %struct.rtl_pci* %10, %struct.rtl_pci** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %5, align 8
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HARDWARE_TYPE_RTL8192EE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @TX_DESC_NUM_92E, align 4
  store i32 %21, i32* %7, align 4
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HARDWARE_TYPE_RTL8822BE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @TX_DESC_NUM_8822B, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @RT_TXDESC_NUM, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %20
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %41 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @BEACON_QUEUE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 2, i32* %53, align 4
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %54)
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @RT_TXDESC_NUM_BE_QUEUE, align 4
  %61 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @BE_QUEUE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %48
  %67 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %68 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %67, i32 0, i32 1
  store i32 9100, i32* %68, align 8
  %69 = load i32, i32* @RTL_PCI_MAX_RX_COUNT, align 4
  %70 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %71 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
