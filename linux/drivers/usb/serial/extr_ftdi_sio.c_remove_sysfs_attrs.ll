; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_remove_sysfs_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_remove_sysfs_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.ftdi_private = type { i64 }

@SIO = common dso_local global i64 0, align 8
@dev_attr_event_char = common dso_local global i32 0, align 4
@FT232BM = common dso_local global i64 0, align 8
@FT2232C = common dso_local global i64 0, align 8
@FT232RL = common dso_local global i64 0, align 8
@FT2232H = common dso_local global i64 0, align 8
@FT4232H = common dso_local global i64 0, align 8
@FT232H = common dso_local global i64 0, align 8
@FTX = common dso_local global i64 0, align 8
@dev_attr_latency_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*)* @remove_sysfs_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_sysfs_attrs(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.ftdi_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %4)
  store %struct.ftdi_private* %5, %struct.ftdi_private** %3, align 8
  %6 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %7 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SIO, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_attr_event_char)
  %15 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %16 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FT232BM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %56, label %20

20:                                               ; preds = %11
  %21 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %22 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FT2232C, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %56, label %26

26:                                               ; preds = %20
  %27 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %28 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FT232RL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %26
  %33 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %34 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FT2232H, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %40 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FT4232H, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %46 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FT232H, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %52 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FTX, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50, %44, %38, %32, %26, %20, %11
  %57 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %58 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %57, i32 0, i32 0
  %59 = call i32 @device_remove_file(i32* %58, i32* @dev_attr_latency_timer)
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60, %1
  ret void
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
