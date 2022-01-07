; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_latency_timer_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_latency_timer_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_serial_port = type { i32 }
%struct.ftdi_private = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @latency_timer_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @latency_timer_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_serial_port*, align 8
  %11 = alloca %struct.ftdi_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_serial_port* @to_usb_serial_port(%struct.device* %14)
  store %struct.usb_serial_port* %15, %struct.usb_serial_port** %10, align 8
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %17 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %16)
  store %struct.ftdi_private* %17, %struct.ftdi_private** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtou8(i8* %18, i32 10, i32* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %37

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.ftdi_private*, %struct.ftdi_private** %11, align 8
  %27 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  %29 = call i32 @write_latency_timer(%struct.usb_serial_port* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* @EIO, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %35, %32, %21
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local %struct.usb_serial_port* @to_usb_serial_port(%struct.device*) #1

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @write_latency_timer(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
