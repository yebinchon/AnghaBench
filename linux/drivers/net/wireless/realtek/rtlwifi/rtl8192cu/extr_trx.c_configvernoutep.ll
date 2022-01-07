; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_configvernoutep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_configvernoutep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_usb_priv = type { i32 }
%struct.rtl_usb = type { i32, i32 }

@REG_NORMAL_SIE_EP = common dso_local global i64 0, align 8
@USB_NORMAL_SIE_EP_MASK = common dso_local global i32 0, align 4
@TX_SELE_HQ = common dso_local global i32 0, align 4
@USB_NORMAL_SIE_EP_SHIFT = common dso_local global i32 0, align 4
@TX_SELE_NQ = common dso_local global i32 0, align 4
@TX_SELE_LQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @configvernoutep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configvernoutep(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_usb_priv*, align 8
  %7 = alloca %struct.rtl_usb*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw* %10)
  store %struct.rtl_usb_priv* %11, %struct.rtl_usb_priv** %6, align 8
  %12 = load %struct.rtl_usb_priv*, %struct.rtl_usb_priv** %6, align 8
  %13 = call %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv* %12)
  store %struct.rtl_usb* %13, %struct.rtl_usb** %7, align 8
  %14 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %15 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = load i64, i64* @REG_NORMAL_SIE_EP, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @rtl_read_byte(%struct.rtl_priv* %16, i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @USB_NORMAL_SIE_EP_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @TX_SELE_HQ, align 4
  %26 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %27 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @USB_NORMAL_SIE_EP_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @USB_NORMAL_SIE_EP_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* @TX_SELE_NQ, align 4
  %41 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %42 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %39, %32
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %49 = load i64, i64* @REG_NORMAL_SIE_EP, align 8
  %50 = add nsw i64 %49, 2
  %51 = call i32 @rtl_read_byte(%struct.rtl_priv* %48, i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @USB_NORMAL_SIE_EP_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i32, i32* @TX_SELE_LQ, align 4
  %58 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %59 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %56, %47
  %65 = load %struct.rtl_usb*, %struct.rtl_usb** %7, align 8
  %66 = getelementptr inbounds %struct.rtl_usb, %struct.rtl_usb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %71, %70
  %75 = phi i32 [ 0, %70 ], [ %73, %71 ]
  ret i32 %75
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb_priv* @rtl_usbpriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_usb* @rtl_usbdev(%struct.rtl_usb_priv*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
