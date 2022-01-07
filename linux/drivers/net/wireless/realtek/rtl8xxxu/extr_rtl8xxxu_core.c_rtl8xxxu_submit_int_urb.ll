; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_submit_int_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_submit_int_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8xxxu_priv* }
%struct.rtl8xxxu_priv = type { i32, i32, i32, i32 }
%struct.urb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_INTR_CONTENT_LENGTH = common dso_local global i32 0, align 4
@rtl8xxxu_int_complete = common dso_local global i32 0, align 4
@REG_USB_HIMR = common dso_local global i32 0, align 4
@USB_HIMR_CPWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8xxxu_submit_int_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_submit_int_urb(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl8xxxu_priv*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %9, align 8
  store %struct.rtl8xxxu_priv* %10, %struct.rtl8xxxu_priv** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %21 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_INTR_CONTENT_LENGTH, align 4
  %30 = load i32, i32* @rtl8xxxu_int_complete, align 4
  %31 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %32 = call i32 @usb_fill_int_urb(%struct.urb* %19, i32 %22, i32 %25, i32 %28, i32 %29, i32 %30, %struct.rtl8xxxu_priv* %31, i32 1)
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %35 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %34, i32 0, i32 0
  %36 = call i32 @usb_anchor_urb(%struct.urb* %33, i32* %35)
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @usb_submit_urb(%struct.urb* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = call i32 @usb_unanchor_urb(%struct.urb* %43)
  br label %56

45:                                               ; preds = %18
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %47 = load i32, i32* @REG_USB_HIMR, align 4
  %48 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @USB_HIMR_CPWM, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %53 = load i32, i32* @REG_USB_HIMR, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %42
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
