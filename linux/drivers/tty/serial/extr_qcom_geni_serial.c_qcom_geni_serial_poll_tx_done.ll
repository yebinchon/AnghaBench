; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_poll_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_poll_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@M_CMD_DONE_EN = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_STATUS = common dso_local global i32 0, align 4
@M_GENI_CMD_ABORT = common dso_local global i32 0, align 4
@SE_GENI_M_CMD_CTRL_REG = common dso_local global i64 0, align 8
@M_CMD_ABORT_EN = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @qcom_geni_serial_poll_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_poll_tx_done(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @M_CMD_DONE_EN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = load i32, i32* @SE_GENI_M_IRQ_STATUS, align 4
  %8 = load i32, i32* @M_CMD_DONE_EN, align 4
  %9 = call i32 @qcom_geni_serial_poll_bit(%struct.uart_port* %6, i32 %7, i32 %8, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @M_GENI_CMD_ABORT, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SE_GENI_M_CMD_CTRL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = load i32, i32* @SE_GENI_M_IRQ_STATUS, align 4
  %25 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %26 = call i32 @qcom_geni_serial_poll_bit(%struct.uart_port* %23, i32 %24, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %12, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SE_GENI_M_IRQ_CLEAR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  ret void
}

declare dso_local i32 @qcom_geni_serial_poll_bit(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
