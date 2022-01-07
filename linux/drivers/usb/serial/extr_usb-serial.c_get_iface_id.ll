; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_get_iface_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_get_iface_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_serial_driver = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"static descriptor matches\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dynamic descriptor matches\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_device_id* (%struct.usb_serial_driver*, %struct.usb_interface*)* @get_iface_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_device_id* @get_iface_id(%struct.usb_serial_driver* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usb_serial_driver*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_serial_driver* %0, %struct.usb_serial_driver** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %7 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.usb_device_id* @usb_match_id(%struct.usb_interface* %6, i32 %9)
  store %struct.usb_device_id* %10, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %12 = icmp ne %struct.usb_device_id* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %3, align 8
  %20 = call %struct.usb_device_id* @match_dynamic_id(%struct.usb_interface* %18, %struct.usb_serial_driver* %19)
  store %struct.usb_device_id* %20, %struct.usb_device_id** %5, align 8
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %22 = icmp ne %struct.usb_device_id* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  ret %struct.usb_device_id* %29
}

declare dso_local %struct.usb_device_id* @usb_match_id(%struct.usb_interface*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.usb_device_id* @match_dynamic_id(%struct.usb_interface*, %struct.usb_serial_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
