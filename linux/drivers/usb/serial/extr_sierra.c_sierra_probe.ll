; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_device*, %struct.TYPE_2__* }
%struct.usb_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.sierra_iface_info = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Selecting alt setting for interface %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Ignoring blacklisted interface #%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_device_id*)* @sierra_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_probe(%struct.usb_serial* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %13 = call i32 @sierra_interface_num(%struct.usb_serial* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @usb_set_interface(%struct.usb_device* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.sierra_iface_info*
  %34 = call i64 @is_blacklisted(i32 %29, %struct.sierra_iface_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %38 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %37, i32 0, i32 0
  %39 = load %struct.usb_device*, %struct.usb_device** %38, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @sierra_interface_num(%struct.usb_serial*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @is_blacklisted(i32, %struct.sierra_iface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
