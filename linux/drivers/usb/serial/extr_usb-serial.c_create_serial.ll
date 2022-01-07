; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_create_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_create_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i64, i32, i32, i32, %struct.usb_serial_driver*, i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_serial_driver = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_serial* (%struct.usb_device*, %struct.usb_interface*, %struct.usb_serial_driver*)* @create_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_serial* @create_serial(%struct.usb_device* %0, %struct.usb_interface* %1, %struct.usb_serial_driver* %2) #0 {
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_serial_driver*, align 8
  %8 = alloca %struct.usb_serial*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_serial_driver* %2, %struct.usb_serial_driver** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.usb_serial* @kzalloc(i32 40, i32 %9)
  store %struct.usb_serial* %10, %struct.usb_serial** %8, align 8
  %11 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %12 = icmp ne %struct.usb_serial* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.usb_serial* null, %struct.usb_serial** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = call i32 @usb_get_dev(%struct.usb_device* %15)
  %17 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %7, align 8
  %20 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %21 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %20, i32 0, i32 4
  store %struct.usb_serial_driver* %19, %struct.usb_serial_driver** %21, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %23 = call i32 @usb_get_intf(%struct.usb_interface* %22)
  %24 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %25 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %27 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %26, i32 0, i32 2
  %28 = call i32 @kref_init(i32* %27)
  %29 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %30 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %33 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  store %struct.usb_serial* %34, %struct.usb_serial** %4, align 8
  br label %35

35:                                               ; preds = %14, %13
  %36 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  ret %struct.usb_serial* %36
}

declare dso_local %struct.usb_serial* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
