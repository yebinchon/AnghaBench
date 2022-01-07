; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i64* }
%struct.rtl_usb = type { i32 }
%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @_rtl_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_tx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.rtl_usb*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.sk_buff*
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %12)
  store %struct.ieee80211_tx_info* %13, %struct.ieee80211_tx_info** %4, align 8
  %14 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.rtl_usb*
  store %struct.rtl_usb* %19, %struct.rtl_usb** %5, align 8
  %20 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ieee80211_hw* @usb_get_intfdata(i32 %22)
  store %struct.ieee80211_hw* %23, %struct.ieee80211_hw** %6, align 8
  %24 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %25 = call i32 @IS_USB_STOP(%struct.rtl_usb* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @_usb_tx_post(%struct.ieee80211_hw* %30, %struct.urb* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %28, %36, %29
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_USB_STOP(%struct.rtl_usb*) #1

declare dso_local i32 @_usb_tx_post(%struct.ieee80211_hw*, %struct.urb*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
