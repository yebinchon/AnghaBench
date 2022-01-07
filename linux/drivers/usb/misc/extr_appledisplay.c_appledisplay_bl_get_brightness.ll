; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_appledisplay.c_appledisplay_bl_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.appledisplay = type { i32*, i32, i32 }

@USB_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ACD_USB_BRIGHTNESS = common dso_local global i32 0, align 4
@ACD_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @appledisplay_bl_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appledisplay_bl_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.appledisplay*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.appledisplay* @bl_get_data(%struct.backlight_device* %7)
  store %struct.appledisplay* %8, %struct.appledisplay** %4, align 8
  %9 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %10 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %13 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %16 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_rcvctrlpipe(i32 %17, i32 0)
  %19 = load i32, i32* @USB_REQ_GET_REPORT, align 4
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = load i32, i32* @USB_TYPE_CLASS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ACD_USB_BRIGHTNESS, align 4
  %26 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %27 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @ACD_USB_TIMEOUT, align 4
  %30 = call i32 @usb_control_msg(i32 %14, i32 %18, i32 %19, i32 %24, i32 %25, i32 0, i32* %28, i32 2, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %32 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.appledisplay*, %struct.appledisplay** %4, align 8
  %37 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.appledisplay* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
