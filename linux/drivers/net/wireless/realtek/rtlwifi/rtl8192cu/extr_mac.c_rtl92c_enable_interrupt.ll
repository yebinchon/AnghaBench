; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32* }
%struct.rtl_usb = type { i32* }

@REG_HIMR = common dso_local global i32 0, align 4
@REG_HIMRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_enable_interrupt(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_pci* @rtl_pcidev(i32 %9)
  store %struct.rtl_pci* %10, %struct.rtl_pci** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @rtl_usbpriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_usb* @rtl_usbdev(i32 %12)
  store %struct.rtl_usb* %13, %struct.rtl_usb** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = call i64 @IS_HARDWARE_TYPE_8192CE(%struct.rtl_priv* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i32, i32* @REG_HIMR, align 4
  %20 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtl_write_dword(%struct.rtl_priv* %18, i32 %19, i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @REG_HIMRE, align 4
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtl_write_dword(%struct.rtl_priv* %26, i32 %27, i32 %32)
  br label %51

34:                                               ; preds = %1
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @REG_HIMR, align 4
  %37 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rtl_write_dword(%struct.rtl_priv* %35, i32 %36, i32 %41)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i32, i32* @REG_HIMRE, align 4
  %45 = load %struct.rtl_usb*, %struct.rtl_usb** %5, align 8
  %46 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rtl_write_dword(%struct.rtl_priv* %43, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %34, %17
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(i32) #1

declare dso_local i32 @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192CE(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
