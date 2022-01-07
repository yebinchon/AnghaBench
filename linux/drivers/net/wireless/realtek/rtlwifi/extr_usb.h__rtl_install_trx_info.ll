; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.h__rtl_install_trx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.h__rtl_install_trx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_usb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.rtl_usb** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_usb*, %struct.sk_buff*, i64)* @_rtl_install_trx_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_install_trx_info(%struct.rtl_usb* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.rtl_usb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.rtl_usb* %0, %struct.rtl_usb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %8)
  store %struct.ieee80211_tx_info* %9, %struct.ieee80211_tx_info** %7, align 8
  %10 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = load %struct.rtl_usb**, %struct.rtl_usb*** %12, align 8
  %14 = getelementptr inbounds %struct.rtl_usb*, %struct.rtl_usb** %13, i64 0
  store %struct.rtl_usb* %10, %struct.rtl_usb** %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.rtl_usb*
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 0
  %20 = load %struct.rtl_usb**, %struct.rtl_usb*** %19, align 8
  %21 = getelementptr inbounds %struct.rtl_usb*, %struct.rtl_usb** %20, i64 1
  store %struct.rtl_usb* %17, %struct.rtl_usb** %21, align 8
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
