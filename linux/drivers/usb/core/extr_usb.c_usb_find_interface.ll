; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_find_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_find_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.find_interface_arg = type { i32, i32* }
%struct.device = type { i32 }

@usb_bus_type = common dso_local global i32 0, align 4
@__find_interface = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_interface* @usb_find_interface(%struct.usb_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.find_interface_arg, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.usb_driver* %0, %struct.usb_driver** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.find_interface_arg, %struct.find_interface_arg* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %10 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.find_interface_arg, %struct.find_interface_arg* %5, i32 0, i32 1
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* @__find_interface, align 4
  %14 = call %struct.device* @bus_find_device(i32* @usb_bus_type, i32* null, %struct.find_interface_arg* %5, i32 %13)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @put_device(%struct.device* %15)
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.usb_interface* @to_usb_interface(%struct.device* %20)
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi %struct.usb_interface* [ %21, %19 ], [ null, %22 ]
  ret %struct.usb_interface* %24
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.find_interface_arg*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
