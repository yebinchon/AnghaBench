; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_read_latency_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_read_latency_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.ftdi_private = type { i64, i32 }

@SIO = common dso_local global i64 0, align 8
@FT8U232AM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to read latency timer: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @read_latency_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_latency_timer(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ftdi_private*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %6)
  store %struct.ftdi_private* %7, %struct.ftdi_private** %4, align 8
  %8 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %9 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SIO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %15 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FT8U232AM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %13
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %24 = call i32 @_read_latency_timer(%struct.usb_serial_port* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %29 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %36 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %27, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @_read_latency_timer(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
