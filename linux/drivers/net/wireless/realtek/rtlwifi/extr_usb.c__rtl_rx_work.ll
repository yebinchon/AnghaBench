; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_rx_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_usb = type { i32, i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"rx agg not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @_rtl_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_rx_work(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rtl_usb*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.rtl_usb*
  store %struct.rtl_usb* %7, %struct.rtl_usb** %3, align 8
  %8 = load %struct.rtl_usb*, %struct.rtl_usb** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ieee80211_hw* @usb_get_intfdata(i32 %10)
  store %struct.ieee80211_hw* %11, %struct.ieee80211_hw** %4, align 8
  br label %12

12:                                               ; preds = %43, %22, %1
  %13 = load %struct.rtl_usb*, %struct.rtl_usb** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %13, i32 0, i32 1
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load %struct.rtl_usb*, %struct.rtl_usb** %3, align 8
  %19 = call i32 @IS_USB_STOP(%struct.rtl_usb* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %23)
  br label %12

25:                                               ; preds = %17
  %26 = load %struct.rtl_usb*, %struct.rtl_usb** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @_rtl_usb_rx_process_noagg(%struct.ieee80211_hw* %35, %struct.sk_buff* %36)
  br label %43

38:                                               ; preds = %25
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @_rtl_rx_pre_process(%struct.ieee80211_hw* %39, %struct.sk_buff* %40)
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %34
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_USB_STOP(%struct.rtl_usb*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @_rtl_usb_rx_process_noagg(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @_rtl_rx_pre_process(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
