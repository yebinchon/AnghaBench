; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }

@UART_FCR = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @ark3116_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ark3116_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.usb_serial*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %4, i32 0, i32 1
  %6 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  store %struct.usb_serial* %6, %struct.usb_serial** %3, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %8 = load i32, i32* @UART_FCR, align 4
  %9 = call i32 @ark3116_write_reg(%struct.usb_serial* %7, i32 %8, i32 0)
  %10 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %11 = load i32, i32* @UART_IER, align 4
  %12 = call i32 @ark3116_write_reg(%struct.usb_serial* %10, i32 %11, i32 0)
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %14 = call i32 @usb_serial_generic_close(%struct.usb_serial_port* %13)
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_kill_urb(i32 %17)
  ret void
}

declare dso_local i32 @ark3116_write_reg(%struct.usb_serial*, i32, i32) #1

declare dso_local i32 @usb_serial_generic_close(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
