; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_usb = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"USB device is stopping...\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't allocate urb. Drop skb!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, i32)* @_rtl_usb_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_usb_transmit(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_usb* @rtl_usbdev(i32 %12)
  store %struct.rtl_usb* %13, %struct.rtl_usb** %7, align 8
  store %struct.urb* null, %struct.urb** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %14 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %15 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* null, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %21 = call i32 @IS_USB_STOP(%struct.rtl_usb* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @kfree_skb(%struct.sk_buff* %26)
  br label %56

28:                                               ; preds = %3
  %29 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %10, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.urb* @_rtl_usb_tx_urb_setup(%struct.ieee80211_hw* %38, %struct.sk_buff* %39, i32 %40)
  store %struct.urb* %41, %struct.urb** %9, align 8
  %42 = load %struct.urb*, %struct.urb** %9, align 8
  %43 = icmp ne %struct.urb* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %28
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %56

52:                                               ; preds = %28
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %54 = load %struct.urb*, %struct.urb** %9, align 8
  %55 = call i32 @_rtl_submit_tx_urb(%struct.ieee80211_hw* %53, %struct.urb* %54)
  br label %56

56:                                               ; preds = %52, %48, %24
  ret void
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_USB_STOP(%struct.rtl_usb*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.urb* @_rtl_usb_tx_urb_setup(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @_rtl_submit_tx_urb(%struct.ieee80211_hw*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
