; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i64 }

@UART_CR_CMD_RESET_RX = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_TX = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_ERR = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_BREAK_INT = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_CTS = common dso_local global i32 0, align 4
@UART_CR_CMD_SET_RFR = common dso_local global i32 0, align 4
@UARTDM_DMEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @msm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_reset(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.msm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %4)
  store %struct.msm_port* %5, %struct.msm_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = load i32, i32* @UART_CR_CMD_RESET_RX, align 4
  %8 = load i32, i32* @UART_CR, align 4
  %9 = call i32 @msm_write(%struct.uart_port* %6, i32 %7, i32 %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @UART_CR_CMD_RESET_TX, align 4
  %12 = load i32, i32* @UART_CR, align 4
  %13 = call i32 @msm_write(%struct.uart_port* %10, i32 %11, i32 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @UART_CR_CMD_RESET_ERR, align 4
  %16 = load i32, i32* @UART_CR, align 4
  %17 = call i32 @msm_write(%struct.uart_port* %14, i32 %15, i32 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = load i32, i32* @UART_CR_CMD_RESET_BREAK_INT, align 4
  %20 = load i32, i32* @UART_CR, align 4
  %21 = call i32 @msm_write(%struct.uart_port* %18, i32 %19, i32 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = load i32, i32* @UART_CR_CMD_RESET_CTS, align 4
  %24 = load i32, i32* @UART_CR, align 4
  %25 = call i32 @msm_write(%struct.uart_port* %22, i32 %23, i32 %24)
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @UART_CR_CMD_SET_RFR, align 4
  %28 = load i32, i32* @UART_CR, align 4
  %29 = call i32 @msm_write(%struct.uart_port* %26, i32 %27, i32 %28)
  %30 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %31 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = load i32, i32* @UARTDM_DMEN, align 4
  %37 = call i32 @msm_write(%struct.uart_port* %35, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
