; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_led.c__rtl92ee_init_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_led.c__rtl92ee_init_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_led = type { i32, i32, %struct.ieee80211_hw* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.rtl_led*, i32)* @_rtl92ee_init_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_init_led(%struct.ieee80211_hw* %0, %struct.rtl_led* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.rtl_led*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.rtl_led* %1, %struct.rtl_led** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %9 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %8, i32 0, i32 2
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rtl_led*, %struct.rtl_led** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_led, %struct.rtl_led* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
