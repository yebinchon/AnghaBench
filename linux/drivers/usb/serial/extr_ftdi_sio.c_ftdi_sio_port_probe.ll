; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_sio_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_sio_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ftdi_private = type { i32, i32 }
%struct.ftdi_sio_quirk = type { i32 (%struct.ftdi_private.0*)* }
%struct.ftdi_private.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GPIO initialisation failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @ftdi_sio_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_sio_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ftdi_private*, align 8
  %5 = alloca %struct.ftdi_sio_quirk*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.ftdi_sio_quirk* @usb_get_serial_data(%struct.TYPE_4__* %9)
  store %struct.ftdi_sio_quirk* %10, %struct.ftdi_sio_quirk** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ftdi_private* @kzalloc(i32 8, i32 %11)
  store %struct.ftdi_private* %12, %struct.ftdi_private** %4, align 8
  %13 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %14 = icmp ne %struct.ftdi_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %20 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %19, i32 0, i32 1
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.ftdi_sio_quirk*, %struct.ftdi_sio_quirk** %5, align 8
  %23 = icmp ne %struct.ftdi_sio_quirk* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.ftdi_sio_quirk*, %struct.ftdi_sio_quirk** %5, align 8
  %26 = getelementptr inbounds %struct.ftdi_sio_quirk, %struct.ftdi_sio_quirk* %25, i32 0, i32 0
  %27 = load i32 (%struct.ftdi_private.0*)*, i32 (%struct.ftdi_private.0*)** %26, align 8
  %28 = icmp ne i32 (%struct.ftdi_private.0*)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.ftdi_sio_quirk*, %struct.ftdi_sio_quirk** %5, align 8
  %31 = getelementptr inbounds %struct.ftdi_sio_quirk, %struct.ftdi_sio_quirk* %30, i32 0, i32 0
  %32 = load i32 (%struct.ftdi_private.0*)*, i32 (%struct.ftdi_private.0*)** %31, align 8
  %33 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %34 = bitcast %struct.ftdi_private* %33 to %struct.ftdi_private.0*
  %35 = call i32 %32(%struct.ftdi_private.0* %34)
  br label %36

36:                                               ; preds = %29, %24, %18
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %38 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %39 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %37, %struct.ftdi_private* %38)
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %41 = call i32 @ftdi_determine_type(%struct.usb_serial_port* %40)
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %43 = call i32 @ftdi_set_max_packet_size(%struct.usb_serial_port* %42)
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %45 = call i64 @read_latency_timer(%struct.usb_serial_port* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.ftdi_private*, %struct.ftdi_private** %4, align 8
  %49 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %48, i32 0, i32 0
  store i32 16, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %52 = call i32 @write_latency_timer(%struct.usb_serial_port* %51)
  %53 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %54 = call i32 @create_sysfs_attrs(%struct.usb_serial_port* %53)
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %56 = call i32 @ftdi_gpio_init(%struct.usb_serial_port* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %61 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %59, %50
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.ftdi_sio_quirk* @usb_get_serial_data(%struct.TYPE_4__*) #1

declare dso_local %struct.ftdi_private* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.ftdi_private*) #1

declare dso_local i32 @ftdi_determine_type(%struct.usb_serial_port*) #1

declare dso_local i32 @ftdi_set_max_packet_size(%struct.usb_serial_port*) #1

declare dso_local i64 @read_latency_timer(%struct.usb_serial_port*) #1

declare dso_local i32 @write_latency_timer(%struct.usb_serial_port*) #1

declare dso_local i32 @create_sysfs_attrs(%struct.usb_serial_port*) #1

declare dso_local i32 @ftdi_gpio_init(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
