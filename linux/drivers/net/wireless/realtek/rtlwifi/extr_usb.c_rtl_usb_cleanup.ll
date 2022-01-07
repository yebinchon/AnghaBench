; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_usb = type { i32, i32*, i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*)*, i32* }
%struct.ieee80211_hw.0 = type opaque
%struct.ieee80211_tx_info = type { i32 }

@RTL_USB_MAX_EP_NUM = common dso_local global i64 0, align 8
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_usb_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_usb_cleanup(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_usb*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_usb* @rtl_usbdev(i32 %8)
  store %struct.rtl_usb* %9, %struct.rtl_usb** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @_rtl_usb_cleanup_rx(%struct.ieee80211_hw* %10)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @RTL_USB_MAX_EP_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %25, %16
  %18 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %19 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call %struct.sk_buff* @skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %26, i32 0, i32 2
  %28 = load i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*)** %27, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = bitcast %struct.ieee80211_hw* %29 to %struct.ieee80211_hw.0*
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 %28(%struct.ieee80211_hw.0* %30, %struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %33)
  store %struct.ieee80211_tx_info* %34, %struct.ieee80211_tx_info** %6, align 8
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %36 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %35)
  %37 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %42, %struct.sk_buff* %43)
  br label %17

45:                                               ; preds = %17
  %46 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @usb_kill_anchored_urbs(i32* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %3, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %57 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %56, i32 0, i32 0
  %58 = call i32 @usb_kill_anchored_urbs(i32* %57)
  ret void
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_usb_cleanup_rx(%struct.ieee80211_hw*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
