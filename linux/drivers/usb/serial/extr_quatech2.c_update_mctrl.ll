; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_update_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_update_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt2_port_private = type { i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"update_mctrl - DTR|RTS not being set|cleared\0A\00", align 1
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"update_mctrl - Error from MODEM_CTRL urb: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qt2_port_private*, i32, i32)* @update_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_mctrl(%struct.qt2_port_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qt2_port_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qt2_port_private* %0, %struct.qt2_port_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %13 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %12, i32 0, i32 1
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %13, align 8
  store %struct.usb_serial_port* %14, %struct.usb_serial_port** %8, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TIOCM_DTR, align 4
  %24 = load i32, i32* @TIOCM_RTS, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %71

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TIOCM_DTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @UART_MCR_DTR, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @TIOCM_RTS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @UART_MCR_RTS, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %56 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %57 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UART_MCR, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @qt2_setregister(%struct.usb_device* %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %66 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %65, i32 0, i32 0
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %54
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @qt2_setregister(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
