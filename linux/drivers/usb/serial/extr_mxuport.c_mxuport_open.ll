; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.mxuport_port = type { i64 }

@RQ_VENDOR_SET_RX_HOST_EN = common dso_local global i32 0, align 4
@RQ_VENDOR_SET_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*)* @mxuport_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_open(%struct.tty_struct* %0, %struct.usb_serial_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.mxuport_port*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %10 = call %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.mxuport_port* %10, %struct.mxuport_port** %6, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 1
  %13 = load %struct.usb_serial*, %struct.usb_serial** %12, align 8
  store %struct.usb_serial* %13, %struct.usb_serial** %7, align 8
  %14 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %15 = load i32, i32* @RQ_VENDOR_SET_RX_HOST_EN, align 4
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %14, i32 %15, i32 1, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %26 = load i32, i32* @RQ_VENDOR_SET_OPEN, align 4
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %25, i32 %26, i32 1, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %35 = load i32, i32* @RQ_VENDOR_SET_RX_HOST_EN, align 4
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %34, i32 %35, i32 0, i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %52

41:                                               ; preds = %24
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = icmp ne %struct.tty_struct* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %47 = call i32 @mxuport_set_termios(%struct.tty_struct* %45, %struct.usb_serial_port* %46, i32* null)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.mxuport_port*, %struct.mxuport_port** %6, align 8
  %50 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %33, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mxuport_send_ctrl_urb(%struct.usb_serial*, i32, i32, i32) #1

declare dso_local i32 @mxuport_set_termios(%struct.tty_struct*, %struct.usb_serial_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
