; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, i64 }
%struct.rtw_tx_pkt_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtw_pci = type { %struct.rtw_pci_tx_ring* }
%struct.rtw_pci_tx_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.sk_buff*)* @rtw_pci_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_tx(%struct.rtw_dev* %0, %struct.rtw_tx_pkt_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_tx_pkt_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtw_pci*, align 8
  %9 = alloca %struct.rtw_pci_tx_ring*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store %struct.rtw_tx_pkt_info* %1, %struct.rtw_tx_pkt_info** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rtw_pci*
  store %struct.rtw_pci* %15, %struct.rtw_pci** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i64 @rtw_hw_queue_mapping(%struct.sk_buff* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %19 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @rtw_pci_xmit(%struct.rtw_dev* %18, %struct.rtw_tx_pkt_info* %19, %struct.sk_buff* %20, i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %3
  %28 = load %struct.rtw_pci*, %struct.rtw_pci** %8, align 8
  %29 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %28, i32 0, i32 0
  %30 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %30, i64 %31
  store %struct.rtw_pci_tx_ring* %32, %struct.rtw_pci_tx_ring** %9, align 8
  %33 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %34 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %38 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %42 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @avail_desc(i32 %36, i32 %40, i32 %44)
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %27
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %49 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %51)
  %53 = call i32 @ieee80211_stop_queue(i32 %50, i32 %52)
  %54 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %9, align 8
  %55 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %27
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @rtw_hw_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @rtw_pci_xmit(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.sk_buff*, i64) #1

declare dso_local i32 @avail_desc(i32, i32, i32) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
