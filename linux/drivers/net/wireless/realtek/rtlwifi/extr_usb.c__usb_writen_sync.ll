; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_writen_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_writen_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@REALTEK_USB_VENQT_CMD_REQ = common dso_local global i32 0, align 4
@REALTEK_USB_VENQT_WRITE = common dso_local global i32 0, align 4
@REALTEK_USB_VENQT_CMD_IDX = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, i32, i8*, i64)* @_usb_writen_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_usb_writen_sync(%struct.rtl_priv* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %9, align 8
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = call %struct.usb_device* @to_usb_device(%struct.device* %21)
  store %struct.usb_device* %22, %struct.usb_device** %10, align 8
  %23 = load i32, i32* @REALTEK_USB_VENQT_CMD_REQ, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @REALTEK_USB_VENQT_WRITE, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i64, i64* @REALTEK_USB_VENQT_CMD_IDX, align 8
  store i64 %25, i64* %14, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %27 = call i32 @usb_sndctrlpipe(%struct.usb_device* %26, i32 0)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 65535
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32* @kmemdup(i8* %31, i64 %32, i32 %33)
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  br label %50

38:                                               ; preds = %4
  %39 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @usb_control_msg(%struct.usb_device* %39, i32 %40, i32 %41, i32 %42, i64 %43, i64 %44, i32* %45, i64 %46, i32 50)
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @kfree(i32* %48)
  br label %50

50:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i64, i32*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
