; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_cleanup_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_cleanup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rtl_usb = type { i32, i32, i32, i32 }
%struct.urb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_usb_cleanup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_usb_cleanup_rx(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_usb*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_usb* @rtl_usbdev(i32 %9)
  store %struct.rtl_usb* %10, %struct.rtl_usb** %4, align 8
  %11 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %12 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %11, i32 0, i32 3
  %13 = call i32 @usb_kill_anchored_urbs(i32* %12)
  %14 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %14, i32 0, i32 2
  %16 = call i32 @tasklet_kill(i32* %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @flush_workqueue(i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %31, i32 0, i32 1
  %33 = call i32 @skb_queue_purge(i32* %32)
  br label %34

34:                                               ; preds = %39, %1
  %35 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %35, i32 0, i32 0
  %37 = call %struct.urb* @usb_get_from_anchor(i32* %36)
  store %struct.urb* %37, %struct.urb** %5, align 8
  %38 = icmp ne %struct.urb* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_free_coherent(i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = call i32 @usb_free_urb(%struct.urb* %53)
  br label %34

55:                                               ; preds = %34
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
