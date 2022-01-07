; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c__out_ep_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c__out_ep_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_usb_priv = type { i32 }
%struct.rtl_usb = type { i32, %struct.rtl_ep_map }
%struct.rtl_ep_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_out_ep_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_out_ep_mapping(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_usb_priv*, align 8
  %8 = alloca %struct.rtl_usb*, align 8
  %9 = alloca %struct.rtl_ep_map*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(i32 %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw* %13)
  store %struct.rtl_usb_priv* %14, %struct.rtl_usb_priv** %7, align 8
  %15 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %7, align 8
  %16 = call %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv* %15)
  store %struct.rtl_usb* %16, %struct.rtl_usb** %8, align 8
  %17 = load %struct.rtl_usb*, %struct.rtl_usb** %8, align 8
  %18 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %17, i32 0, i32 1
  store %struct.rtl_ep_map* %18, %struct.rtl_ep_map** %9, align 8
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IS_NORMAL_CHIP(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.rtl_usb*, %struct.rtl_usb** %8, align 8
  %24 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %47 [
    i32 2, label %26
    i32 3, label %32
    i32 1, label %43
  ]

26:                                               ; preds = %1
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %9, align 8
  %31 = call i32 @twooutepmapping(%struct.ieee80211_hw* %27, i32 %28, i32 %29, %struct.rtl_ep_map* %30)
  br label %50

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %9, align 8
  %42 = call i32 @threeoutepmapping(%struct.ieee80211_hw* %39, i32 %40, %struct.rtl_ep_map* %41)
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %9, align 8
  %46 = call i32 @oneoutepmapping(%struct.ieee80211_hw* %44, %struct.rtl_ep_map* %45)
  br label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %43, %38, %26
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv*) #1

declare dso_local i32 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @twooutepmapping(%struct.ieee80211_hw*, i32, i32, %struct.rtl_ep_map*) #1

declare dso_local i32 @threeoutepmapping(%struct.ieee80211_hw*, i32, %struct.rtl_ep_map*) #1

declare dso_local i32 @oneoutepmapping(%struct.ieee80211_hw*, %struct.rtl_ep_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
