; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@UART_MCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error from flowcontrol urb\0A\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @ssu100_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssu100_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = load i32, i32* @UART_MCR, align 4
  %16 = call i64 @ssu100_setregister(%struct.usb_device* %14, i32 0, i32 %15, i32 0)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = load i32, i32* @TIOCM_RTS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @set_mctrl(%struct.usb_device* %27, i32 %30)
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %34 = load i32, i32* @TIOCM_DTR, align 4
  %35 = load i32, i32* @TIOCM_RTS, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @clear_mctrl(%struct.usb_device* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  ret void
}

declare dso_local i64 @ssu100_setregister(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_mctrl(%struct.usb_device*, i32) #1

declare dso_local i32 @clear_mctrl(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
