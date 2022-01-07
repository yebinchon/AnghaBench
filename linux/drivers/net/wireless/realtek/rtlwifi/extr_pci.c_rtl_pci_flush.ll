; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtl_pci_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_mac = type { i64 }

@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i32 0, align 4
@BEACON_QUEUE = common dso_local global i32 0, align 4
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @rtl_pci_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_pci_flush(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_pci_priv*, align 8
  %9 = alloca %struct.rtl_hal*, align 8
  %10 = alloca %struct.rtl_mac*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl8192_tx_ring*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %17)
  store %struct.rtl_pci_priv* %18, %struct.rtl_pci_priv** %8, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %9, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %23)
  store %struct.rtl_mac* %24, %struct.rtl_mac** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.rtl_mac*, %struct.rtl_mac** %10, align 8
  %26 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %89

30:                                               ; preds = %3
  %31 = load i32, i32* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %88, %66, %42, %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %12, align 4
  %39 = ashr i32 %37, %38
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  br label %33

45:                                               ; preds = %36
  %46 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %8, align 8
  %47 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %49, i64 %51
  store %struct.rtl8192_tx_ring* %52, %struct.rtl8192_tx_ring** %13, align 8
  %53 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %54 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %53, i32 0, i32 0
  %55 = call i32 @skb_queue_len(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @BEACON_QUEUE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @TXCMD_QUEUE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %58, %45
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %12, align 4
  br label %33

69:                                               ; preds = %62
  %70 = call i32 @msleep(i32 20)
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ERFOFF, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %82 = call i64 @is_hal_stop(%struct.rtl_hal* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp sge i32 %85, 200
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %80, %73
  br label %89

88:                                               ; preds = %84
  br label %33

89:                                               ; preds = %29, %87, %33
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
