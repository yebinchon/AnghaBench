; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtl_tcb_desc = type { i32 }
%struct.rtl_usb = type { i32 (i32, i32)* }
%struct.rtl_hal = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*)* @rtl_usb_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_usb_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, %struct.rtl_tcb_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtl_tcb_desc*, align 8
  %10 = alloca %struct.rtl_usb*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.rtl_tcb_desc* %3, %struct.rtl_tcb_desc** %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_usb* @rtl_usbdev(i32 %16)
  store %struct.rtl_usb* %17, %struct.rtl_usb** %10, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = call i32 @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_hal* @rtl_hal(i32 %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %12, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.rtl_hal*, %struct.rtl_hal** %11, align 8
  %29 = call i32 @is_hal_stop(%struct.rtl_hal* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %51

33:                                               ; preds = %4
  %34 = load %struct.rtl_usb*, %struct.rtl_usb** %10, align 8
  %35 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %38)
  %40 = call i32 %36(i32 %37, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @_rtl_usb_tx_preprocess(%struct.ieee80211_hw* %41, %struct.ieee80211_sta* %42, %struct.sk_buff* %43, i32 %44)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @_rtl_usb_transmit(%struct.ieee80211_hw* %46, %struct.sk_buff* %47, i32 %48)
  %50 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %32
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %52)
  %54 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %33
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @_rtl_usb_tx_preprocess(%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.sk_buff*, i32) #1

declare dso_local i32 @_rtl_usb_transmit(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
