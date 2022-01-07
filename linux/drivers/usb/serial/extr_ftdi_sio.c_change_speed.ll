; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ftdi_private = type { i64, i32 }

@FT2232C = common dso_local global i64 0, align 8
@FT2232H = common dso_local global i64 0, align 8
@FT4232H = common dso_local global i64 0, align 8
@FT232H = common dso_local global i64 0, align 8
@FTDI_SIO_SET_BAUDRATE_REQUEST = common dso_local global i32 0, align 4
@FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE = common dso_local global i32 0, align 4
@WDR_SHORT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_speed(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.ftdi_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %4, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.ftdi_private* %11, %struct.ftdi_private** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %14 = call i32 @get_ftdi_divisor(%struct.tty_struct* %12, %struct.usb_serial_port* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %19 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FT2232C, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %2
  %24 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %25 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FT2232H, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %31 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FT4232H, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %37 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FT232H, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35, %29, %23, %2
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.ftdi_private*, %struct.ftdi_private** %5, align 8
  %45 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %43, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %50 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_sndctrlpipe(i32 %58, i32 0)
  %60 = load i32, i32* @FTDI_SIO_SET_BAUDRATE_REQUEST, align 4
  %61 = load i32, i32* @FTDI_SIO_SET_BAUDRATE_REQUEST_TYPE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @WDR_SHORT_TIMEOUT, align 4
  %65 = call i32 @usb_control_msg(i32 %53, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32* null, i32 0, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @get_ftdi_divisor(%struct.tty_struct*, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
