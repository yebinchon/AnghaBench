; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.moschip_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PORT_16550A = common dso_local global i32 0, align 4
@NUM_URBS = common dso_local global i32 0, align 4
@URB_TRANSFER_BUFFER_SIZE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.moschip_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  store %struct.usb_serial_port* %9, %struct.usb_serial_port** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %11 = call %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.moschip_port* %11, %struct.moschip_port** %6, align 8
  %12 = load i32, i32* @PORT_16550A, align 4
  %13 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %14 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %16 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.moschip_port*, %struct.moschip_port** %6, align 8
  %23 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %28 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @NUM_URBS, align 4
  %32 = load i32, i32* @URB_TRANSFER_BUFFER_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %35 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %37 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %36, i32 0, i32 1
  store i32 9600, i32* %37, align 4
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 5, %38
  %40 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %41 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 30, %42
  %44 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %45 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  ret i32 0
}

declare dso_local %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
