; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_rx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_rx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, i32, %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_rx_status*)* }
%struct.rtw_rx_pkt_stat = type { i32, i32, i32, i32, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.rtw_pci = type { %struct.rtw_pci_rx_ring* }
%struct.rtw_pci_rx_ring = type { %struct.TYPE_4__, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i32* }

@RTW_RX_QUEUE_MPDU = common dso_local global i64 0, align 8
@RTK_PCI_RXBD_IDX_MPDUQ = common dso_local global i32 0, align 4
@RTK_PCI_RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rx routine starvation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.rtw_pci*, i32)* @rtw_pci_rx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_rx_isr(%struct.rtw_dev* %0, %struct.rtw_pci* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_pci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca %struct.rtw_pci_rx_ring*, align 8
  %9 = alloca %struct.rtw_rx_pkt_stat, align 8
  %10 = alloca %struct.ieee80211_rx_status, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_pci* %1, %struct.rtw_pci** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %23, i32 0, i32 2
  %25 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %24, align 8
  store %struct.rtw_chip_info* %25, %struct.rtw_chip_info** %7, align 8
  %26 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %27 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %18, align 4
  %29 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %30 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %19, align 4
  %32 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %32, i32 0, i32 0
  %34 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %33, align 8
  %35 = load i64, i64* @RTW_RX_QUEUE_MPDU, align 8
  %36 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %34, i64 %35
  store %struct.rtw_pci_rx_ring* %36, %struct.rtw_pci_rx_ring** %8, align 8
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %38 = load i32, i32* @RTK_PCI_RXBD_IDX_MPDUQ, align 4
  %39 = call i32 @rtw_read32(%struct.rtw_dev* %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 4095
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %46 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %3
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %53 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %51, %55
  store i32 %56, i32* %16, align 4
  br label %69

57:                                               ; preds = %3
  %58 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %59 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %63 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %61, %67
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %57, %50
  %70 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %71 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %182, %69
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %16, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %183

78:                                               ; preds = %74
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %80 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @rtw_pci_dma_check(%struct.rtw_dev* %79, %struct.rtw_pci_rx_ring* %80, i32 %81)
  %83 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %84 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %83, i32 0, i32 1
  %85 = load %struct.sk_buff**, %struct.sk_buff*** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %85, i64 %87
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %11, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %22, align 4
  %95 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %96 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* @RTK_PCI_RX_BUF_SIZE, align 4
  %100 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %101 = call i32 @dma_sync_single_for_cpu(i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %21, align 8
  %105 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %106 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32 (%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_rx_status*)*, i32 (%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_rx_status*)** %108, align 8
  %110 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %111 = load i32*, i32** %21, align 8
  %112 = call i32 %109(%struct.rtw_dev* %110, i32* %111, %struct.rtw_rx_pkt_stat* %9, %struct.ieee80211_rx_status* %10)
  %113 = load i32, i32* %18, align 4
  %114 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %113, %115
  %117 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %9, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %116, %118
  store i32 %119, i32* %17, align 4
  %120 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %9, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call %struct.sk_buff* @dev_alloc_skb(i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %12, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @WARN_ONCE(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %78
  br label %167

133:                                              ; preds = %78
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @skb_put_data(%struct.sk_buff* %134, i32* %137, i32 %138)
  %140 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %9, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %133
  %144 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %145 = load i32, i32* %17, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = call i32 @rtw_fw_c2h_cmd_rx_irqsafe(%struct.rtw_dev* %144, i32 %145, %struct.sk_buff* %146)
  br label %166

148:                                              ; preds = %133
  %149 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @skb_pull(%struct.sk_buff* %149, i32 %150)
  %152 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %153 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %9, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %156 = call i32 @rtw_rx_stats(%struct.rtw_dev* %152, i32 %154, %struct.sk_buff* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @memcpy(i64 %159, %struct.ieee80211_rx_status* %10, i32 4)
  %161 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %162 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %165 = call i32 @ieee80211_rx_irqsafe(i32 %163, %struct.sk_buff* %164)
  br label %166

166:                                              ; preds = %148, %143
  br label %167

167:                                              ; preds = %166, %132
  %168 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %169 = load i32, i32* %22, align 4
  %170 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @rtw_pci_sync_rx_desc_device(%struct.rtw_dev* %168, i32 %169, %struct.rtw_pci_rx_ring* %170, i32 %171, i32 %172)
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  %176 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %177 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sge i32 %175, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %181, %167
  br label %74

183:                                              ; preds = %74
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %186 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %190 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %193 = load i32, i32* @RTK_PCI_RXBD_IDX_MPDUQ, align 4
  %194 = load %struct.rtw_pci_rx_ring*, %struct.rtw_pci_rx_ring** %8, align 8
  %195 = getelementptr inbounds %struct.rtw_pci_rx_ring, %struct.rtw_pci_rx_ring* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @rtw_write16(%struct.rtw_dev* %192, i32 %193, i32 %197)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_pci_dma_check(%struct.rtw_dev*, %struct.rtw_pci_rx_ring*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @rtw_fw_c2h_cmd_rx_irqsafe(%struct.rtw_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rtw_rx_stats(%struct.rtw_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i64, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @ieee80211_rx_irqsafe(i32, %struct.sk_buff*) #1

declare dso_local i32 @rtw_pci_sync_rx_desc_device(%struct.rtw_dev*, i32, %struct.rtw_pci_rx_ring*, i32, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
