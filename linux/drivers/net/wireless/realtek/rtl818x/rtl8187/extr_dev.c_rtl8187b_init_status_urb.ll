; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187b_init_status_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187b_init_status_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtl8187b_status_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8187b_init_status_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187b_init_status_urb(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %8, align 8
  store %struct.rtl8187_priv* %9, %struct.rtl8187_priv** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %10)
  store %struct.urb* %11, %struct.urb** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = icmp ne %struct.urb* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_rcvbulkpipe(i32 %24, i32 9)
  %26 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @rtl8187b_status_cb, align 4
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = call i32 @usb_fill_bulk_urb(%struct.urb* %18, i32 %21, i32 %25, i32* %28, i32 4, i32 %29, %struct.ieee80211_hw* %30)
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %34 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %33, i32 0, i32 0
  %35 = call i32 @usb_anchor_urb(%struct.urb* %32, i32* %34)
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @usb_submit_urb(%struct.urb* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %17
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = call i32 @usb_unanchor_urb(%struct.urb* %42)
  br label %44

44:                                               ; preds = %41, %17
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = call i32 @usb_free_urb(%struct.urb* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
