; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_init_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c_rtl_usb_init_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_mac = type { i32, i32, i32, i64, i64 }
%struct.rtl_hal = type { %struct.ieee80211_hw* }
%struct.rtl_ps_ctl = type { i32, i32, i32, i32, i32, i32 }
%struct.rtl_usb = type { i32*, i32, i32 }

@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@EACMWAY2_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_usb_init_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_usb_init_sw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_mac*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_priv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_mac* @rtl_mac(i32 %8)
  store %struct.rtl_mac* %9, %struct.rtl_mac** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_hal* @rtl_hal(i32 %11)
  store %struct.rtl_hal* %12, %struct.rtl_hal** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_ps_ctl* @rtl_psc(i32 %14)
  store %struct.rtl_ps_ctl* %15, %struct.rtl_ps_ctl** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_usb* @rtl_usbdev(i32 %17)
  store %struct.rtl_usb* %18, %struct.rtl_usb** %6, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %20, i32 0, i32 0
  store %struct.ieee80211_hw* %19, %struct.ieee80211_hw** %21, align 8
  %22 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %25 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %28, i32 0, i32 3
  store i32 3, i32* %29, align 4
  %30 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %31 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %30, i32 0, i32 4
  store i32 5, i32* %31, align 4
  %32 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %33 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 0
  store i32 100, i32* %36, align 8
  %37 = load %struct.rtl_mac*, %struct.rtl_mac** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.rtl_mac*, %struct.rtl_mac** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %41, i32 0, i32 1
  store i32 7, i32* %42, align 4
  %43 = load %struct.rtl_mac*, %struct.rtl_mac** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %43, i32 0, i32 2
  store i32 3, i32* %44, align 8
  %45 = load i32, i32* @EACMWAY2_SW, align 4
  %46 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %47 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %49 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 -1, i32* %51, align 4
  %52 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %53 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.rtl_usb*, %struct.rtl_usb** %6, align 8
  %57 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(i32) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
