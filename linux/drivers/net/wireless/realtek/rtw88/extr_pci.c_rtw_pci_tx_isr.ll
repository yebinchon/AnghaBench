; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_tx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_tx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_3__*, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtw_pci = type { i32, %struct.rtw_pci_tx_ring* }
%struct.rtw_pci_tx_ring = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.rtw_pci_tx_data = type { i32, i32 }
%struct.sk_buff = type { i32 }

@rtw_pci_tx_queue_idx_addr = common dso_local global i32* null, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_H2C = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_NOACK_TRANSMITTED = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci*, i64)* @rtw_pci_tx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_tx_isr(%struct.rtw_dev* %0, %struct.rtw_pci* %1, i64 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_pci*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.rtw_pci_tx_ring*, align 8
  %10 = alloca %struct.rtw_pci_tx_data*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_pci* %1, %struct.rtw_pci** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %18, align 8
  store %struct.ieee80211_hw* %19, %struct.ieee80211_hw** %7, align 8
  %20 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %21 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %20, i32 0, i32 1
  %22 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %22, i64 %23
  store %struct.rtw_pci_tx_ring* %24, %struct.rtw_pci_tx_ring** %9, align 8
  %25 = load i32*, i32** @rtw_pci_tx_queue_idx_addr, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @rtw_read32(%struct.rtw_dev* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = and i32 %34, 4095
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %38 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %45 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %43, %47
  store i32 %48, i32* %12, align 4
  br label %61

49:                                               ; preds = %3
  %50 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %51 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %55 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %53, %59
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %49, %42
  br label %62

62:                                               ; preds = %159, %133, %86, %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %165

66:                                               ; preds = %62
  %67 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %68 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %67, i32 0, i32 2
  %69 = call %struct.sk_buff* @skb_dequeue(i32* %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call %struct.rtw_pci_tx_data* @rtw_pci_get_tx_data(%struct.sk_buff* %70)
  store %struct.rtw_pci_tx_data* %71, %struct.rtw_pci_tx_data** %10, align 8
  %72 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %73 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rtw_pci_tx_data*, %struct.rtw_pci_tx_data** %10, align 8
  %76 = getelementptr inbounds %struct.rtw_pci_tx_data, %struct.rtw_pci_tx_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %82 = call i32 @pci_unmap_single(i32 %74, i32 %77, i32 %80, i32 %81)
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @RTW_TX_QUEUE_H2C, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %66
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %87)
  br label %62

89:                                               ; preds = %66
  %90 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %91 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %96 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %100 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %104 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @avail_desc(i32 %98, i32 %102, i32 %106)
  %108 = icmp sgt i32 %107, 4
  br i1 %108, label %109, label %117

109:                                              ; preds = %94
  %110 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %111 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %110)
  store i32 %111, i32* %16, align 4
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @ieee80211_wake_queue(%struct.ieee80211_hw* %112, i32 %113)
  %115 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %116 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %94, %89
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %120 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @skb_pull(%struct.sk_buff* %118, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %125)
  store %struct.ieee80211_tx_info* %126, %struct.ieee80211_tx_info** %8, align 8
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %117
  %134 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = load %struct.rtw_pci_tx_data*, %struct.rtw_pci_tx_data** %10, align 8
  %137 = getelementptr inbounds %struct.rtw_pci_tx_data, %struct.rtw_pci_tx_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rtw_tx_report_enqueue(%struct.rtw_dev* %134, %struct.sk_buff* %135, i32 %138)
  br label %62

140:                                              ; preds = %117
  %141 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %142 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i32, i32* @IEEE80211_TX_STAT_NOACK_TRANSMITTED, align 4
  %149 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %159

153:                                              ; preds = %140
  %154 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %155 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %156 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %147
  %160 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %161 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %160)
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %164 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %162, %struct.sk_buff* %163)
  br label %62

165:                                              ; preds = %62
  %166 = load i32, i32* %15, align 4
  %167 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %168 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.rtw_pci_tx_data* @rtw_pci_get_tx_data(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @avail_desc(i32, i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtw_tx_report_enqueue(%struct.rtw_dev*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
