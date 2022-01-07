; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_get_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, i32, i32 }
%struct.serial_struct = type { i32, i8*, i8*, i64, i32, i32, i32, i32 }

@PORT_16654 = common dso_local global i32 0, align 4
@CLOSING_DELAY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @whiteheat_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whiteheat_get_serial(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  store %struct.usb_serial_port* %8, %struct.usb_serial_port** %5, align 8
  %9 = load i32, i32* @PORT_16654, align 4
  %10 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %11 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %16 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %21 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 0
  %24 = call i32 @kfifo_size(i32* %23)
  %25 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %26 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %28 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %29, i32 0, i32 0
  store i32 460800, i32* %30, align 8
  %31 = load i8*, i8** @CLOSING_DELAY, align 8
  %32 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %33 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @CLOSING_DELAY, align 8
  %35 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %36 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  ret i32 0
}

declare dso_local i32 @kfifo_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
