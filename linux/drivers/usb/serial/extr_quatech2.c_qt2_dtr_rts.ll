; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.qt2_port_private = type { i32 }

@UART_MCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error from flowcontrol urb\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @qt2_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qt2_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.qt2_port_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %5, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = call %struct.qt2_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.qt2_port_private* %13, %struct.qt2_port_private** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %18 = load %struct.qt2_port_private*, %struct.qt2_port_private** %6, align 8
  %19 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UART_MCR, align 4
  %22 = call i64 @qt2_setregister(%struct.usb_device* %17, i32 %20, i32 %21, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %26 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %16
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.qt2_port_private*, %struct.qt2_port_private** %6, align 8
  %34 = load i32, i32* @TIOCM_DTR, align 4
  %35 = load i32, i32* @TIOCM_RTS, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @update_mctrl(%struct.qt2_port_private* %33, i32 %36, i32 0)
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.qt2_port_private*, %struct.qt2_port_private** %6, align 8
  %40 = load i32, i32* @TIOCM_DTR, align 4
  %41 = load i32, i32* @TIOCM_RTS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @update_mctrl(%struct.qt2_port_private* %39, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  ret void
}

declare dso_local %struct.qt2_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @qt2_setregister(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @update_mctrl(%struct.qt2_port_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
