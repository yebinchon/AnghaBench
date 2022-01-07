; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_set_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.mxuport_port = type { i32, i32 }

@UART_MCR_RTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RQ_VENDOR_SET_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @mxuport_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_set_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxuport_port*, align 8
  %6 = alloca %struct.usb_serial*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = call %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.mxuport_port* %10, %struct.mxuport_port** %5, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 1
  %13 = load %struct.usb_serial*, %struct.usb_serial** %12, align 8
  store %struct.usb_serial* %13, %struct.usb_serial** %6, align 8
  %14 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %15 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %18 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %31 [
    i32 130, label %21
    i32 129, label %26
    i32 128, label %30
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @UART_MCR_RTS, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* @UART_MCR_RTS, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %34

30:                                               ; preds = %2
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %49

34:                                               ; preds = %30, %26, %21
  %35 = load %struct.usb_serial*, %struct.usb_serial** %6, align 8
  %36 = load i32, i32* @RQ_VENDOR_SET_RTS, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %39 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %35, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %47 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %34
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %51 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
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
