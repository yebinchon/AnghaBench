; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32 }
%struct.f81534_port_private = type { i32 }

@PORT_16550A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @f81534_get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81534_get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.f81534_port_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  store %struct.usb_serial_port* %9, %struct.usb_serial_port** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %11 = call %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.f81534_port_private* %11, %struct.f81534_port_private** %6, align 8
  %12 = load i32, i32* @PORT_16550A, align 4
  %13 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %14 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %19 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %24 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.f81534_port_private*, %struct.f81534_port_private** %6, align 8
  %26 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret i32 0
}

declare dso_local %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
