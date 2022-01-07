; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i64 }
%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Set speed to high-speed\0A\00", align 1
@HPRT0_SPD_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Set speed to full-speed\0A\00", align 1
@HPRT0_SPD_FULL_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.usb_device*)* @dwc2_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_reset_device(%struct.usb_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %8 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %7)
  store %struct.dwc2_hsotg* %8, %struct.dwc2_hsotg** %6, align 8
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USB_SPEED_HIGH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %27 = load i32, i32* @HPRT0_SPD_HIGH_SPEED, align 4
  %28 = call i32 @dwc2_change_bus_speed(%struct.usb_hcd* %26, i32 %27)
  br label %50

29:                                               ; preds = %15
  %30 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_SPEED_FULL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USB_SPEED_LOW, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35, %29
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %43 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %47 = load i32, i32* @HPRT0_SPD_FULL_SPEED, align 4
  %48 = call i32 @dwc2_change_bus_speed(%struct.usb_hcd* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %21
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dwc2_change_bus_speed(%struct.usb_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
