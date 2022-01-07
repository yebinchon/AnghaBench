; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ftdi_private = type { i32 }

@FTDI_SIO_SET_FLOW_CTRL_REQUEST = common dso_local global i32 0, align 4
@FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error from flowcontrol urb\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @ftdi_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ftdi_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %6)
  store %struct.ftdi_private* %7, %struct.ftdi_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_sndctrlpipe(i32 %20, i32 0)
  %22 = load i32, i32* @FTDI_SIO_SET_FLOW_CTRL_REQUEST, align 4
  %23 = load i32, i32* @FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE, align 4
  %24 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %25 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WDR_TIMEOUT, align 4
  %28 = call i64 @usb_control_msg(i32 %15, i32 %21, i32 %22, i32 %23, i32 0, i32 %26, i32* null, i32 0, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %10
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %32 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %10
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %40 = load i32, i32* @TIOCM_DTR, align 4
  %41 = load i32, i32* @TIOCM_RTS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @set_mctrl(%struct.usb_serial_port* %39, i32 %42)
  br label %50

44:                                               ; preds = %35
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = load i32, i32* @TIOCM_DTR, align 4
  %47 = load i32, i32* @TIOCM_RTS, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @clear_mctrl(%struct.usb_serial_port* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %38
  ret void
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_mctrl(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @clear_mctrl(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
