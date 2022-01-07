; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_driver_release_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_driver_release_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i64, %struct.device }
%struct.device = type { i32* }

@USB_INTERFACE_BOUND = common dso_local global i64 0, align 8
@USB_INTERFACE_UNBINDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_driver_release_interface(%struct.usb_driver* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usb_driver*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.usb_driver* %0, %struct.usb_driver** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %7 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %17 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = icmp ne i32* %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12, %2
  br label %47

21:                                               ; preds = %12
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_INTERFACE_BOUND, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %47

28:                                               ; preds = %21
  %29 = load i64, i64* @USB_INTERFACE_UNBINDING, align 8
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i64 @device_is_registered(%struct.device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @device_release_driver(%struct.device* %36)
  br label %47

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @device_lock(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @usb_unbind_interface(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @device_unlock(%struct.device* %45)
  br label %47

47:                                               ; preds = %20, %27, %38, %35
  ret void
}

declare dso_local i64 @device_is_registered(%struct.device*) #1

declare dso_local i32 @device_release_driver(%struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @usb_unbind_interface(%struct.device*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
