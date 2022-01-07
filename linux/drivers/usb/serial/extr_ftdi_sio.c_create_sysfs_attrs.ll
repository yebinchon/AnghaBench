; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_create_sysfs_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_create_sysfs_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.ftdi_private = type { i64 }

@SIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"sysfs attributes for %s\0A\00", align 1
@ftdi_chip_name = common dso_local global i32* null, align 8
@dev_attr_event_char = common dso_local global i32 0, align 4
@FT232BM = common dso_local global i64 0, align 8
@FT2232C = common dso_local global i64 0, align 8
@FT232RL = common dso_local global i64 0, align 8
@FT2232H = common dso_local global i64 0, align 8
@FT4232H = common dso_local global i64 0, align 8
@FT232H = common dso_local global i64 0, align 8
@FTX = common dso_local global i64 0, align 8
@dev_attr_latency_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @create_sysfs_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sysfs_attrs(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.ftdi_private*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %5)
  store %struct.ftdi_private* %6, %struct.ftdi_private** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %8 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SIO, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %1
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %14 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 0
  %15 = load i32*, i32** @ftdi_chip_name, align 8
  %16 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %17 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 0
  %24 = call i32 @device_create_file(i32* %23, i32* @dev_attr_event_char)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %73, label %27

27:                                               ; preds = %12
  %28 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %29 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FT232BM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %69, label %33

33:                                               ; preds = %27
  %34 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %35 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FT2232C, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %69, label %39

39:                                               ; preds = %33
  %40 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %41 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FT232RL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %69, label %45

45:                                               ; preds = %39
  %46 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %47 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FT2232H, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %69, label %51

51:                                               ; preds = %45
  %52 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %53 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FT4232H, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %59 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FT232H, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.ftdi_private*, %struct.ftdi_private** %3, align 8
  %65 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FTX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %57, %51, %45, %39, %33, %27
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %71 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %70, i32 0, i32 0
  %72 = call i32 @device_create_file(i32* %71, i32* @dev_attr_latency_timer)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %63, %12
  br label %74

74:                                               ; preds = %73, %1
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
