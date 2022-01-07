; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.serial_struct = type { i32, i32, i32 }
%struct.ftdi_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ftdi_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  store %struct.usb_serial_port* %9, %struct.usb_serial_port** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %11 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.ftdi_private* %11, %struct.ftdi_private** %6, align 8
  %12 = load %struct.ftdi_private*, %struct.ftdi_private** %6, align 8
  %13 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %16 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ftdi_private*, %struct.ftdi_private** %6, align 8
  %18 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ftdi_private*, %struct.ftdi_private** %6, align 8
  %23 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %26 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret i32 0
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
