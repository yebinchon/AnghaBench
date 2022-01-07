; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_led.c__rtl8821ae_sw_led_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_led.c__rtl8821ae_sw_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtl_led }
%struct.rtl_led = type { i32 }
%struct.rtl_hal = type { i32 }

@HARDWARE_TYPE_RTL8812AE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl8821ae_sw_led_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_sw_led_control(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_led*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rtl_led* %12, %struct.rtl_led** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %7, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %47 [
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %32
  ]

17:                                               ; preds = %2, %2, %2
  %18 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %19 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HARDWARE_TYPE_RTL8812AE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %26 = call i32 @rtl8812ae_sw_led_on(%struct.ieee80211_hw* %24, %struct.rtl_led* %25)
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %30 = call i32 @rtl8821ae_sw_led_on(%struct.ieee80211_hw* %28, %struct.rtl_led* %29)
  br label %31

31:                                               ; preds = %27, %23
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HARDWARE_TYPE_RTL8812AE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %40 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %41 = call i32 @rtl8812ae_sw_led_off(%struct.ieee80211_hw* %39, %struct.rtl_led* %40)
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load %struct.rtl_led*, %struct.rtl_led** %6, align 8
  %45 = call i32 @rtl8821ae_sw_led_off(%struct.ieee80211_hw* %43, %struct.rtl_led* %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %46, %31
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8812ae_sw_led_on(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl8821ae_sw_led_on(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl8812ae_sw_led_off(%struct.ieee80211_hw*, %struct.rtl_led*) #1

declare dso_local i32 @rtl8821ae_sw_led_off(%struct.ieee80211_hw*, %struct.rtl_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
