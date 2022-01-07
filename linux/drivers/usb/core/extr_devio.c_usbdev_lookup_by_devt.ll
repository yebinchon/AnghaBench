; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_usbdev_lookup_by_devt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_usbdev_lookup_by_devt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.device = type { i32 }

@usb_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_device* (i32)* @usbdev_lookup_by_devt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_device* @usbdev_lookup_by_devt(i32 %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.device* @bus_find_device_by_devt(i32* @usb_bus_type, i32 %5)
  store %struct.device* %6, %struct.device** %4, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.usb_device* null, %struct.usb_device** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.usb_device* @to_usb_device(%struct.device* %11)
  store %struct.usb_device* %12, %struct.usb_device** %2, align 8
  br label %13

13:                                               ; preds = %10, %9
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  ret %struct.usb_device* %14
}

declare dso_local %struct.device* @bus_find_device_by_devt(i32*, i32) #1

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
