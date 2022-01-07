; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.ftdi_private = type { i32 }

@FTDI_SIO_RESET_REQUEST = common dso_local global i32 0, align 4
@FTDI_SIO_RESET_REQUEST_TYPE = common dso_local global i32 0, align 4
@FTDI_SIO_RESET_SIO = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @ftdi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.ftdi_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %4, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %5, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ftdi_private* %13, %struct.ftdi_private** %6, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = call i32 @usb_sndctrlpipe(%struct.usb_device* %15, i32 0)
  %17 = load i32, i32* @FTDI_SIO_RESET_REQUEST, align 4
  %18 = load i32, i32* @FTDI_SIO_RESET_REQUEST_TYPE, align 4
  %19 = load i32, i32* @FTDI_SIO_RESET_SIO, align 4
  %20 = load %struct.ftdi_private*, %struct.ftdi_private** %6, align 8
  %21 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WDR_TIMEOUT, align 4
  %24 = call i32 @usb_control_msg(%struct.usb_device* %14, i32 %16, i32 %17, i32 %18, i32 %19, i32 %22, i32* null, i32 0, i32 %23)
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = icmp ne %struct.tty_struct* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %30 = call i32 @ftdi_set_termios(%struct.tty_struct* %28, %struct.usb_serial_port* %29, i32* null)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %34 = call i32 @usb_serial_generic_open(%struct.tty_struct* %32, %struct.usb_serial_port* %33)
  ret i32 %34
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @ftdi_set_termios(%struct.tty_struct*, %struct.usb_serial_port*, i32*) #1

declare dso_local i32 @usb_serial_generic_open(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
