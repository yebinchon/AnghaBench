; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.mxuport_port = type { i32, i32 }

@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32)* @mxuport_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxuport_dtr_rts(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxuport_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.mxuport_port* %9, %struct.mxuport_port** %5, align 8
  %10 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %11 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %14 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @UART_MCR_RTS, align 4
  %20 = load i32, i32* @UART_MCR_DTR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @UART_MCR_RTS, align 4
  %26 = load i32, i32* @UART_MCR_DTR, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mxuport_set_mcr(%struct.usb_serial_port* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %40 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %43 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  ret void
}

declare dso_local %struct.mxuport_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mxuport_set_mcr(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
