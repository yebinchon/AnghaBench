; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.appledisplay = type { i32*, i32, i32 }

@USB_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ACD_USB_BRIGHTNESS = common dso_local global i32 0, align 4
@ACD_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @appledisplay_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appledisplay_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.appledisplay*, align 8
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.appledisplay* @bl_get_data(%struct.backlight_device* %6)
  store %struct.appledisplay* %7, %struct.appledisplay** %4, align 8
  %8 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %9 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %12 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 16, i32* %14, align 4
  %15 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %16 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %20 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %24 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %27 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_sndctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @USB_REQ_SET_REPORT, align 4
  %31 = load i32, i32* @USB_DIR_OUT, align 4
  %32 = load i32, i32* @USB_TYPE_CLASS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ACD_USB_BRIGHTNESS, align 4
  %37 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %38 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @ACD_USB_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %30, i32 %35, i32 %36, i32 0, i32* %39, i32 2, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %43 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.appledisplay* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
