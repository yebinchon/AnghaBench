; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_get_msr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.spcp8x5_private = type { i32 }

@SPCP825_QUIRK_NO_UART_STATUS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GET_UART_STATUS = common dso_local global i32 0, align 4
@GET_UART_STATUS_TYPE = common dso_local global i32 0, align 4
@GET_UART_STATUS_MSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get modem status: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"0xc0:0x22:0:6  %d - 0x02%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32*)* @spcp8x5_get_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spcp8x5_get_msr(%struct.usb_serial_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spcp8x5_private*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %10)
  store %struct.spcp8x5_private* %11, %struct.spcp8x5_private** %6, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  %17 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %6, align 8
  %18 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SPCP825_QUIRK_NO_UART_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %70

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 1, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %26
  %35 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %37 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %36, i32 0)
  %38 = load i32, i32* @GET_UART_STATUS, align 4
  %39 = load i32, i32* @GET_UART_STATUS_TYPE, align 4
  %40 = load i32, i32* @GET_UART_STATUS_MSR, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @usb_control_msg(%struct.usb_device* %35, i32 %37, i32 %38, i32 %39, i32 0, i32 %40, i32* %41, i32 1, i32 100)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %34
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %45
  br label %66

56:                                               ; preds = %34
  %57 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %58 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %56, %55
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %31, %23
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
