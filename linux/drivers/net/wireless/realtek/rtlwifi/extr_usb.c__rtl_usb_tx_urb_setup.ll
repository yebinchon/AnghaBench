; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_tx_urb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_tx_urb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.rtl_usb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_rtl_tx_complete = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.ieee80211_hw*, %struct.sk_buff*, i32)* @_rtl_usb_tx_urb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @_rtl_usb_tx_urb_setup(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_usb*, align 8
  %9 = alloca %struct.urb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_usb* @rtl_usbdev(i32 %11)
  store %struct.rtl_usb* %12, %struct.rtl_usb** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp eq %struct.sk_buff* null, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %9, align 8
  %19 = load %struct.urb*, %struct.urb** %9, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  store %struct.urb* null, %struct.urb** %4, align 8
  br label %53

24:                                               ; preds = %3
  %25 = load %struct.rtl_usb*, %struct.rtl_usb** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @_rtl_install_trx_info(%struct.rtl_usb* %25, %struct.sk_buff* %26, i32 %27)
  %29 = load %struct.urb*, %struct.urb** %9, align 8
  %30 = load %struct.rtl_usb*, %struct.rtl_usb** %8, align 8
  %31 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtl_usb*, %struct.rtl_usb** %8, align 8
  %34 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @usb_sndbulkpipe(i32 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @_rtl_tx_complete, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @usb_fill_bulk_urb(%struct.urb* %29, i32 %32, i32 %37, i32 %40, i32 %43, i32 %44, %struct.sk_buff* %45)
  %47 = load i32, i32* @URB_ZERO_PACKET, align 4
  %48 = load %struct.urb*, %struct.urb** %9, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.urb*, %struct.urb** %9, align 8
  store %struct.urb* %52, %struct.urb** %4, align 8
  br label %53

53:                                               ; preds = %24, %21
  %54 = load %struct.urb*, %struct.urb** %4, align 8
  ret %struct.urb* %54
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @_rtl_install_trx_info(%struct.rtl_usb*, %struct.sk_buff*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
