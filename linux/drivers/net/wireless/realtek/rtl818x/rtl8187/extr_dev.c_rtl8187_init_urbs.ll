; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_init_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_init_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32, i64, i32 }
%struct.urb = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtl8187_rx_info = type { %struct.ieee80211_hw*, %struct.urb* }

@RTL8187_MAX_RX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtl8187_rx_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187_init_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_init_urbs(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtl8187_rx_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %10, align 8
  store %struct.rtl8187_priv* %11, %struct.rtl8187_priv** %4, align 8
  store %struct.urb* null, %struct.urb** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %87, %1
  %13 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %13, i32 0, i32 1
  %15 = call i32 @skb_queue_len(i32* %14)
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %90

17:                                               ; preds = %12
  %18 = load i32, i32* @RTL8187_MAX_RX, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @__dev_alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %92

26:                                               ; preds = %17
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %27)
  store %struct.urb* %28, %struct.urb** %5, align 8
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %92

34:                                               ; preds = %26
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %40 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %43 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 3, i32 1
  %48 = call i32 @usb_rcvbulkpipe(i32 %41, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @skb_tail_pointer(%struct.sk_buff* %49)
  %51 = load i32, i32* @RTL8187_MAX_RX, align 4
  %52 = load i32, i32* @rtl8187_rx_cb, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @usb_fill_bulk_urb(%struct.urb* %35, i32 %38, i32 %48, i32 %50, i32 %51, i32 %52, %struct.sk_buff* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.rtl8187_rx_info*
  store %struct.rtl8187_rx_info* %58, %struct.rtl8187_rx_info** %7, align 8
  %59 = load %struct.urb*, %struct.urb** %5, align 8
  %60 = load %struct.rtl8187_rx_info*, %struct.rtl8187_rx_info** %7, align 8
  %61 = getelementptr inbounds %struct.rtl8187_rx_info, %struct.rtl8187_rx_info* %60, i32 0, i32 1
  store %struct.urb* %59, %struct.urb** %61, align 8
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load %struct.rtl8187_rx_info*, %struct.rtl8187_rx_info** %7, align 8
  %64 = getelementptr inbounds %struct.rtl8187_rx_info, %struct.rtl8187_rx_info* %63, i32 0, i32 0
  store %struct.ieee80211_hw* %62, %struct.ieee80211_hw** %64, align 8
  %65 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %66 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %65, i32 0, i32 1
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @skb_queue_tail(i32* %66, %struct.sk_buff* %67)
  %69 = load %struct.urb*, %struct.urb** %5, align 8
  %70 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %71 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %70, i32 0, i32 0
  %72 = call i32 @usb_anchor_urb(%struct.urb* %69, i32* %71)
  %73 = load %struct.urb*, %struct.urb** %5, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @usb_submit_urb(%struct.urb* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %34
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %81 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %80, i32 0, i32 1
  %82 = call i32 @skb_unlink(%struct.sk_buff* %79, i32* %81)
  %83 = load %struct.urb*, %struct.urb** %5, align 8
  %84 = call i32 @usb_unanchor_urb(%struct.urb* %83)
  %85 = load %struct.urb*, %struct.urb** %5, align 8
  %86 = call i32 @usb_put_urb(%struct.urb* %85)
  br label %92

87:                                               ; preds = %34
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = call i32 @usb_put_urb(%struct.urb* %88)
  br label %12

90:                                               ; preds = %12
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %99

92:                                               ; preds = %78, %31, %23
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  %95 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %96 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %95, i32 0, i32 0
  %97 = call i32 @usb_kill_anchored_urbs(i32* %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %90
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_put_urb(%struct.urb*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
