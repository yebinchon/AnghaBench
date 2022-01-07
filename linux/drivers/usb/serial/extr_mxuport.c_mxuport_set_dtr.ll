; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_set_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_set_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.mxuport_port = type { i32, i32 }

@RQ_VENDOR_SET_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @mxuport_set_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_set_dtr(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxuport_port*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.mxuport_port* %9, %struct.mxuport_port** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 1
  %12 = load %struct.usb_serial*, %struct.usb_serial** %11, align 8
  store %struct.usb_serial* %12, %struct.usb_serial** %6, align 8
  %13 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %14 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %17 = load i32, i32* @RQ_VENDOR_SET_DTR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %16, i32 %17, i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @UART_MCR_DTR, align 4
  %34 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %35 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load i32, i32* @UART_MCR_DTR, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %42 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %48 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mxuport_send_ctrl_urb(%struct.usb_serial*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
