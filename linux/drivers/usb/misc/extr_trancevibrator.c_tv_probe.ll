; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_trancevibrator.c_tv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_trancevibrator.c_tv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.trancevibrator = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @tv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.trancevibrator*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.trancevibrator* @kzalloc(i32 4, i32 %11)
  store %struct.trancevibrator* %12, %struct.trancevibrator** %7, align 8
  %13 = load %struct.trancevibrator*, %struct.trancevibrator** %7, align 8
  %14 = icmp ne %struct.trancevibrator* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = call i32 @usb_get_dev(%struct.usb_device* %19)
  %21 = load %struct.trancevibrator*, %struct.trancevibrator** %7, align 8
  %22 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = load %struct.trancevibrator*, %struct.trancevibrator** %7, align 8
  %25 = call i32 @usb_set_intfdata(%struct.usb_interface* %23, %struct.trancevibrator* %24)
  store i32 0, i32* %3, align 4
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.trancevibrator*, %struct.trancevibrator** %7, align 8
  %28 = call i32 @kfree(%struct.trancevibrator* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.trancevibrator* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.trancevibrator*) #1

declare dso_local i32 @kfree(%struct.trancevibrator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
