; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @rtl8187_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8187_priv*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = icmp ne %struct.ieee80211_hw* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call i32 @rtl8187_rfkill_exit(%struct.ieee80211_hw* %11)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %13)
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %16, align 8
  store %struct.rtl8187_priv* %17, %struct.rtl8187_priv** %4, align 8
  %18 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %19 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_reset_device(i32 %20)
  %22 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %23 = call i32 @interface_to_usbdev(%struct.usb_interface* %22)
  %24 = call i32 @usb_put_dev(i32 %23)
  %25 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %4, align 8
  %26 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %29)
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @rtl8187_rfkill_exit(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
