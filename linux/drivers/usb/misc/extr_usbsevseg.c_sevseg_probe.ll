; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_sevseg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_sevseg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_sevsegdev = type { i32, i32, i32, i32, i64, %struct.usb_interface*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"USB 7 Segment device now attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sevseg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevseg_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_sevsegdev*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  store %struct.usb_sevsegdev* null, %struct.usb_sevsegdev** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usb_sevsegdev* @kzalloc(i32 40, i32 %13)
  store %struct.usb_sevsegdev* %14, %struct.usb_sevsegdev** %7, align 8
  %15 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %16 = icmp ne %struct.usb_sevsegdev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = call i32 @usb_get_dev(%struct.usb_device* %19)
  %21 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %22 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %25 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %24, i32 0, i32 5
  store %struct.usb_interface* %23, %struct.usb_interface** %25, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, %struct.usb_sevsegdev* %27)
  %29 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %30 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %32 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %34 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %33, i32 0, i32 1
  store i32 2, i32* %34, align 4
  %35 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %36 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %35, i32 0, i32 2
  store i32 6, i32* %36, align 8
  %37 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %38 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %37, i32 0, i32 3
  store i32 63, i32* %38, align 4
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 0
  %41 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

42:                                               ; preds = %17
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_sevsegdev* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_sevsegdev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
