; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.rtl8xxxu_priv = type { %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.rtl8xxxu_priv*)* }
%struct.ieee80211_hw = type { %struct.rtl8xxxu_priv* }

@.str = private unnamed_addr constant [15 x i8] c"disconnecting\0A\00", align 1
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Device still attached, trying to reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @rtl8xxxu_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %8, align 8
  store %struct.rtl8xxxu_priv* %9, %struct.rtl8xxxu_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %10)
  %12 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.rtl8xxxu_priv*)*, i32 (%struct.rtl8xxxu_priv*)** %15, align 8
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %18 = call i32 %16(%struct.rtl8xxxu_priv* %17)
  %19 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %20 = call i32 @usb_set_intfdata(%struct.usb_interface* %19, i32* null)
  %21 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %30, i32 0, i32 2
  %32 = call i32 @mutex_destroy(i32* %31)
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %33, i32 0, i32 1
  %35 = call i32 @mutex_destroy(i32* %34)
  %36 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %1
  %44 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = call i32 @usb_reset_device(%struct.TYPE_5__* %51)
  br label %53

53:                                               ; preds = %43, %1
  %54 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %55 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @usb_put_dev(%struct.TYPE_5__* %56)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %59 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %58)
  ret void
}

declare dso_local %struct.ieee80211_hw* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @usb_reset_device(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_5__*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
