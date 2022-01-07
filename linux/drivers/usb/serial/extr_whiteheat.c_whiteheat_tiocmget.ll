; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.whiteheat_private = type { i32 }

@UART_MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @whiteheat_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whiteheat_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.whiteheat_private*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  store %struct.usb_serial_port* %8, %struct.usb_serial_port** %3, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = call %struct.whiteheat_private* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.whiteheat_private* %10, %struct.whiteheat_private** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = call i32 @firm_get_dtr_rts(%struct.usb_serial_port* %11)
  %13 = load %struct.whiteheat_private*, %struct.whiteheat_private** %4, align 8
  %14 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UART_MCR_DTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @TIOCM_DTR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.whiteheat_private*, %struct.whiteheat_private** %4, align 8
  %25 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UART_MCR_RTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @TIOCM_RTS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.whiteheat_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @firm_get_dtr_rts(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
