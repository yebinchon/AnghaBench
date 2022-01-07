; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_tx_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_tx_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.urb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_usb = type { i32 (%struct.ieee80211_hw.0*, %struct.urb*, %struct.sk_buff*)* }
%struct.ieee80211_hw.0 = type opaque
%struct.ieee80211_tx_info = type { i32 }

@RTL_TX_HEADER_SIZE = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Urb has error status 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.urb*, %struct.sk_buff*)* @_usb_tx_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_usb_tx_post(%struct.ieee80211_hw* %0, %struct.urb* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtl_usb*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_usb* @rtl_usbdev(i32 %10)
  store %struct.rtl_usb* %11, %struct.rtl_usb** %7, align 8
  %12 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %13 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %12, i32 0, i32 0
  %14 = load i32 (%struct.ieee80211_hw.0*, %struct.urb*, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw.0*, %struct.urb*, %struct.sk_buff*)** %13, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = bitcast %struct.ieee80211_hw* %15 to %struct.ieee80211_hw.0*
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 %14(%struct.ieee80211_hw.0* %16, %struct.urb* %17, %struct.sk_buff* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %22 = call i32 @skb_pull(%struct.sk_buff* %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %23)
  store %struct.ieee80211_tx_info* %24, %struct.ieee80211_tx_info** %8, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %26 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %25)
  %27 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %43, %struct.sk_buff* %44)
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
