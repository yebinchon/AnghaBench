; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_hw_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_hw_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_usb = type { i32 }

@REG_LDOHCI12_CTRL = common dso_local global i32 0, align 4
@REG_HWSEQ_CTRL = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92cu_hw_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_hw_configure(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_usb* @rtl_usbdev(i32 %8)
  store %struct.rtl_usb* %9, %struct.rtl_usb** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = load i32, i32* @REG_LDOHCI12_CTRL, align 4
  %12 = call i32 @rtl_write_byte(%struct.rtl_priv* %10, i32 %11, i32 15)
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = call i32 @rtl_write_byte(%struct.rtl_priv* %13, i32 21, i32 233)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* @REG_HWSEQ_CTRL, align 4
  %17 = call i32 @rtl_write_byte(%struct.rtl_priv* %15, i32 %16, i32 255)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = call i32 @rtl_write_byte(%struct.rtl_priv* %18, i32 65088, i32 224)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 65089, i32 141)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 65090, i32 128)
  %24 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %24, i32 0, i32 0
  store i32 24, i32* %25, align 4
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @REG_BCN_CTRL, align 4
  %28 = load %struct.rtl_usb*, %struct.rtl_usb** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rtl_write_byte(%struct.rtl_priv* %26, i32 %27, i32 %30)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
