; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_whiteheat.c_whiteheat_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.whiteheat_private = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @whiteheat_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whiteheat_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.whiteheat_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %7, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %13 = call %struct.whiteheat_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.whiteheat_private* %13, %struct.whiteheat_private** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TIOCM_RTS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @UART_MCR_RTS, align 4
  %20 = load %struct.whiteheat_private*, %struct.whiteheat_private** %8, align 8
  %21 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @TIOCM_DTR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @UART_MCR_DTR, align 4
  %31 = load %struct.whiteheat_private*, %struct.whiteheat_private** %8, align 8
  %32 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @TIOCM_RTS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @UART_MCR_RTS, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.whiteheat_private*, %struct.whiteheat_private** %8, align 8
  %44 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @TIOCM_DTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @UART_MCR_DTR, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.whiteheat_private*, %struct.whiteheat_private** %8, align 8
  %56 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %61 = load %struct.whiteheat_private*, %struct.whiteheat_private** %8, align 8
  %62 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UART_MCR_DTR, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @firm_set_dtr(%struct.usb_serial_port* %60, i32 %65)
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %68 = load %struct.whiteheat_private*, %struct.whiteheat_private** %8, align 8
  %69 = getelementptr inbounds %struct.whiteheat_private, %struct.whiteheat_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UART_MCR_RTS, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @firm_set_rts(%struct.usb_serial_port* %67, i32 %72)
  ret i32 0
}

declare dso_local %struct.whiteheat_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @firm_set_dtr(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @firm_set_rts(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
