; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_match_one_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_match_one_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_match_one_id(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %9 = icmp eq %struct.usb_device_id* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %6, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %19 = call i32 @usb_match_device(%struct.usb_device* %17, %struct.usb_device_id* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %11
  %23 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %26 = call i32 @usb_match_one_id_intf(%struct.usb_device* %23, %struct.usb_host_interface* %24, %struct.usb_device_id* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_match_device(%struct.usb_device*, %struct.usb_device_id*) #1

declare dso_local i32 @usb_match_one_id_intf(%struct.usb_device*, %struct.usb_host_interface*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
