; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_free_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dwc2_hsotg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Set speed to default high-speed\0A\00", align 1
@HPRT0_SPD_HIGH_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_device*)* @dwc2_free_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_free_dev(%struct.usb_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %6)
  store %struct.dwc2_hsotg* %7, %struct.dwc2_hsotg** %5, align 8
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_SPEED_HIGH, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_info(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = load i32, i32* @HPRT0_SPD_HIGH_SPEED, align 4
  %42 = call i32 @dwc2_change_bus_speed(%struct.usb_hcd* %40, i32 %41)
  br label %43

43:                                               ; preds = %13, %35, %27, %19, %14
  ret void
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
