; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.rtl8180_tx_ring* }
%struct.rtl8180_tx_ring = type { i64, i32, i32, %struct.rtl8180_tx_desc* }
%struct.rtl8180_tx_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RTL818X_TX_DESC_FLAG_OWN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_TX_OK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @rtl8180_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_handle_tx(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca %struct.rtl8180_tx_ring*, align 8
  %7 = alloca %struct.rtl8180_tx_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %12, align 8
  store %struct.rtl8180_priv* %13, %struct.rtl8180_priv** %5, align 8
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %14, i32 0, i32 1
  %16 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %16, i64 %18
  store %struct.rtl8180_tx_ring* %19, %struct.rtl8180_tx_ring** %6, align 8
  br label %20

20:                                               ; preds = %115, %2
  %21 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %21, i32 0, i32 2
  %23 = call i32 @skb_queue_len(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %116

25:                                               ; preds = %20
  %26 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %26, i32 0, i32 3
  %28 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %27, align 8
  %29 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %28, i64 %31
  store %struct.rtl8180_tx_desc* %32, %struct.rtl8180_tx_desc** %7, align 8
  %33 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %7, align 8
  %34 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @RTL818X_TX_DESC_FLAG_OWN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %116

42:                                               ; preds = %25
  %43 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %44 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  %47 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %48 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = urem i64 %46, %50
  %52 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %53 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %54, i32 0, i32 2
  %56 = call %struct.sk_buff* @__skb_dequeue(i32* %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %8, align 8
  %57 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %58 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %7, align 8
  %61 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %68 = call i32 @pci_unmap_single(i32 %59, i32 %63, i32 %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %69)
  store %struct.ieee80211_tx_info* %70, %struct.ieee80211_tx_info** %9, align 8
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %72 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %71)
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %42
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @RTL818X_TX_DESC_FLAG_TX_OK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %86 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %87 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79, %42
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 255
  %93 = add nsw i32 %92, 1
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %95 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %93, i32* %99, align 4
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %100, %struct.sk_buff* %101)
  %103 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %104 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %6, align 8
  %107 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %106, i32 0, i32 2
  %108 = call i32 @skb_queue_len(i32* %107)
  %109 = sub nsw i32 %105, %108
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %115

111:                                              ; preds = %90
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ieee80211_wake_queue(%struct.ieee80211_hw* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %90
  br label %20

116:                                              ; preds = %41, %20
  ret void
}

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
