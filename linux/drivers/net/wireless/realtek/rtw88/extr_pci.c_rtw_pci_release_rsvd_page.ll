; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_release_rsvd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_release_rsvd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_pci = type { i32 }
%struct.rtw_pci_tx_ring = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtw_pci_tx_data = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_pci*, %struct.rtw_pci_tx_ring*)* @rtw_pci_release_rsvd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_release_rsvd_page(%struct.rtw_pci* %0, %struct.rtw_pci_tx_ring* %1) #0 {
  %3 = alloca %struct.rtw_pci*, align 8
  %4 = alloca %struct.rtw_pci_tx_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rtw_pci_tx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_pci* %0, %struct.rtw_pci** %3, align 8
  store %struct.rtw_pci_tx_ring* %1, %struct.rtw_pci_tx_ring** %4, align 8
  %8 = load %struct.rtw_pci_tx_ring*, %struct.rtw_pci_tx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_pci_tx_ring, %struct.rtw_pci_tx_ring* %8, i32 0, i32 0
  %10 = call %struct.sk_buff* @skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.rtw_pci_tx_data* @rtw_pci_get_tx_data(%struct.sk_buff* %15)
  store %struct.rtw_pci_tx_data* %16, %struct.rtw_pci_tx_data** %6, align 8
  %17 = load %struct.rtw_pci_tx_data*, %struct.rtw_pci_tx_data** %6, align 8
  %18 = getelementptr inbounds %struct.rtw_pci_tx_data, %struct.rtw_pci_tx_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rtw_pci*, %struct.rtw_pci** %3, align 8
  %21 = getelementptr inbounds %struct.rtw_pci, %struct.rtw_pci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %28 = call i32 @pci_unmap_single(i32 %22, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.rtw_pci_tx_data* @rtw_pci_get_tx_data(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
