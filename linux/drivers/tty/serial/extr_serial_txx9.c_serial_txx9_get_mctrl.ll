; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_txx9_port = type { i32 }

@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RTSSC = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TXX9_SICISR = common dso_local global i32 0, align 4
@TXX9_SICISR_CTSS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial_txx9_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_txx9_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %5)
  store %struct.uart_txx9_port* %6, %struct.uart_txx9_port** %3, align 8
  %7 = load i32, i32* @TIOCM_CAR, align 4
  %8 = load i32, i32* @TIOCM_DSR, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %11 = load i32, i32* @TXX9_SIFLCR, align 4
  %12 = call i32 @sio_in(%struct.uart_txx9_port* %10, i32 %11)
  %13 = load i32, i32* @TXX9_SIFLCR_RTSSC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TIOCM_RTS, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %24 = load i32, i32* @TXX9_SICISR, align 4
  %25 = call i32 @sio_in(%struct.uart_txx9_port* %23, i32 %24)
  %26 = load i32, i32* @TXX9_SICISR_CTSS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @TIOCM_CTS, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_in(%struct.uart_txx9_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
