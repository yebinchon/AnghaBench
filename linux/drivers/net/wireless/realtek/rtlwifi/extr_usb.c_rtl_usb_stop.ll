; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_usb = type { i32, i32, i32, i32 }
%struct.urb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_usb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_usb_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_usb*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %10)
  store %struct.rtl_hal* %11, %struct.rtl_hal** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_usb* @rtl_usbdev(i32 %13)
  store %struct.rtl_usb* %14, %struct.rtl_usb** %5, align 8
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %16 = call i32 @set_hal_stop(%struct.rtl_hal* %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %22 = call i32 @SET_USB_STOP(%struct.rtl_usb* %21)
  %23 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %23, i32 0, i32 3
  %25 = call i32 @usb_kill_anchored_urbs(i32* %24)
  %26 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %26, i32 0, i32 2
  %28 = call i32 @tasklet_kill(i32* %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @flush_workqueue(i32 %36)
  %38 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %39 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %38, i32 0, i32 1
  %40 = call i32 @skb_queue_purge(i32* %39)
  br label %41

41:                                               ; preds = %46, %1
  %42 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %43 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %42, i32 0, i32 0
  %44 = call %struct.urb* @usb_get_from_anchor(i32* %43)
  store %struct.urb* %44, %struct.urb** %6, align 8
  %45 = icmp ne %struct.urb* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.urb*, %struct.urb** %6, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_free_coherent(i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = call i32 @usb_free_urb(%struct.urb* %60)
  br label %41

62:                                               ; preds = %41
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %68, align 8
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 %69(%struct.ieee80211_hw* %70)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_hal_stop(%struct.rtl_hal*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @SET_USB_STOP(%struct.rtl_usb*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

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
