; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_serial_port = type { i32 }
%struct.ktermios = type { i32 }
%struct.keyspan_port_private = type { i32, i32, i32, %struct.keyspan_device_details* }
%struct.keyspan_device_details = type { i64 (%struct.usb_serial_port*, i32, i32, i32*, i32*, i32*, i32)*, i32 }

@KEYSPAN_BAUD_RATE_OK = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@flow_cts = common dso_local global i32 0, align 4
@flow_none = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.usb_serial_port*, %struct.ktermios*)* @keyspan_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_set_termios(%struct.tty_struct* %0, %struct.usb_serial_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.keyspan_port_private*, align 8
  %10 = alloca %struct.keyspan_device_details*, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = call %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.keyspan_port_private* %13, %struct.keyspan_port_private** %9, align 8
  %14 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %9, align 8
  %15 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %14, i32 0, i32 3
  %16 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %15, align 8
  store %struct.keyspan_device_details* %16, %struct.keyspan_device_details** %10, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @tty_get_baud_rate(%struct.tty_struct* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %10, align 8
  %27 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %26, i32 0, i32 0
  %28 = load i64 (%struct.usb_serial_port*, i32, i32, i32*, i32*, i32*, i32)*, i64 (%struct.usb_serial_port*, i32, i32, i32*, i32*, i32*, i32)** %27, align 8
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %10, align 8
  %32 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 %28(%struct.usb_serial_port* %29, i32 %30, i32 %33, i32* null, i32* null, i32* null, i32 %34)
  %36 = load i64, i64* @KEYSPAN_BAUD_RATE_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %9, align 8
  %41 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %45

42:                                               ; preds = %3
  %43 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %44 = call i32 @tty_termios_baud_rate(%struct.ktermios* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %9, align 8
  %52 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @CRTSCTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @flow_cts, align 4
  br label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @flow_none, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %9, align 8
  %64 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @CMSPAR, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %73 = call i32 @keyspan_send_setup(%struct.usb_serial_port* %72, i32 0)
  ret void
}

declare dso_local %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @keyspan_send_setup(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
