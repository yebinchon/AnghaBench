; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i64, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  store %struct.usb_serial_port* %8, %struct.usb_serial_port** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %13 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %15 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %14, i32 0, i32 5
  store i32 0, i32* %15, align 8
  %16 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %17 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %22 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %24 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %23, i32 0, i32 0
  store i32 9600, i32* %24, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 5, %25
  %27 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %28 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 30, %29
  %31 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %32 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
