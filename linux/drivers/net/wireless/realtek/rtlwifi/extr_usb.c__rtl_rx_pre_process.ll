; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_rx_pre_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_rx_pre_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.rtl_usb = type { i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*, %struct.sk_buff_head*)* }
%struct.ieee80211_hw.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @_rtl_rx_pre_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_rx_pre_process(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_usb* @rtl_usbdev(i32 %9)
  store %struct.rtl_usb* %10, %struct.rtl_usb** %7, align 8
  %11 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %6)
  %12 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %13 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %12, i32 0, i32 0
  %14 = load i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*, %struct.sk_buff_head*)*, i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*, %struct.sk_buff_head*)** %13, align 8
  %15 = icmp ne i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*, %struct.sk_buff_head*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %18 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %17, i32 0, i32 0
  %19 = load i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*, %struct.sk_buff_head*)*, i32 (%struct.ieee80211_hw.0*, %struct.sk_buff*, %struct.sk_buff_head*)** %18, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = bitcast %struct.ieee80211_hw* %20 to %struct.ieee80211_hw.0*
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 %19(%struct.ieee80211_hw.0* %21, %struct.sk_buff* %22, %struct.sk_buff_head* %6)
  br label %24

24:                                               ; preds = %16, %2
  %25 = call i32 @skb_queue_empty(%struct.sk_buff_head* %6)
  %26 = call i32 @WARN_ON(i32 %25)
  br label %27

27:                                               ; preds = %31, %24
  %28 = call i32 @skb_queue_empty(%struct.sk_buff_head* %6)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %6)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @_rtl_usb_rx_process_agg(%struct.ieee80211_hw* %33, %struct.sk_buff* %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @ieee80211_rx(%struct.ieee80211_hw* %36, %struct.sk_buff* %37)
  br label %27

39:                                               ; preds = %27
  ret void
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @_rtl_usb_rx_process_agg(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
