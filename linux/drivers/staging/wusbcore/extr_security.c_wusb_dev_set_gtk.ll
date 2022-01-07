; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_security.c_wusb_dev_set_gtk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_security.c_wusb_dev_set_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wusb_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@WUSB_KEY_INDEX_TYPE_GTK = common dso_local global i32 0, align 4
@WUSB_KEY_INDEX_ORIGINATOR_HOST = common dso_local global i32 0, align 4
@USB_REQ_SET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DT_KEY = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, %struct.wusb_dev*)* @wusb_dev_set_gtk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_dev_set_gtk(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %7 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %8 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %7, i32 0, i32 0
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %5, align 8
  %10 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %11 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WUSB_KEY_INDEX_TYPE_GTK, align 4
  %14 = load i32, i32* @WUSB_KEY_INDEX_ORIGINATOR_HOST, align 4
  %15 = call i32 @wusb_key_index(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %18 = call i32 @usb_sndctrlpipe(%struct.usb_device* %17, i32 0)
  %19 = load i32, i32* @USB_REQ_SET_DESCRIPTOR, align 4
  %20 = load i32, i32* @USB_DIR_OUT, align 4
  %21 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_DT_KEY, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %30 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %33 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %38 = call i32 @usb_control_msg(%struct.usb_device* %16, i32 %18, i32 %19, i32 %24, i32 %28, i32 0, %struct.TYPE_4__* %31, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @wusb_key_index(i32, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
