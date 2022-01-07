; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_bus.c_usb_serial_bus_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_bus.c_usb_serial_bus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_driver = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@usb_serial_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_serial_bus_register(%struct.usb_serial_driver* %0) #0 {
  %2 = alloca %struct.usb_serial_driver*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_serial_driver* %0, %struct.usb_serial_driver** %2, align 8
  %4 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %5 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32* @usb_serial_bus_type, i32** %6, align 8
  %7 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %8 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %12 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %2, align 8
  %16 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %15, i32 0, i32 0
  %17 = call i32 @driver_register(%struct.TYPE_4__* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @driver_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
