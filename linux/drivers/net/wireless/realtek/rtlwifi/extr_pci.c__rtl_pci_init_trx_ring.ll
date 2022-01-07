; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_trx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_init_trx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@RTL_PCI_MAX_RX_QUEUE = common dso_local global i32 0, align 4
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl_pci_init_trx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_pci_init_trx_ring(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_pci* @rtl_pcidev(i32 %9)
  store %struct.rtl_pci* %10, %struct.rtl_pci** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RTL_PCI_MAX_RX_QUEUE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @_rtl_pci_init_rx_ring(%struct.ieee80211_hw* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %97

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %11

27:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @_rtl_pci_init_tx_ring(%struct.ieee80211_hw* %33, i32 %34, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %51

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %28

50:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %97

51:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %60, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @RTL_PCI_MAX_RX_QUEUE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @_rtl_pci_free_rx_ring(%struct.ieee80211_hw* %57, i32 %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %52

63:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %93, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %68
  %79 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %80 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78, %68
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @_rtl_pci_free_tx_ring(%struct.ieee80211_hw* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %64

96:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %50, %21
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_pci_init_rx_ring(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl_pci_init_tx_ring(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl_pci_free_rx_ring(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl_pci_free_tx_ring(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
