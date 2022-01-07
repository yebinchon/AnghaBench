; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.qcom_geni_serial_port = type { i32 }

@SE_GENI_STATUS = common dso_local global i64 0, align 8
@S_GENI_CMD_ACTIVE = common dso_local global i32 0, align 4
@UART_START_READ = common dso_local global i32 0, align 4
@SE_GENI_S_IRQ_EN = common dso_local global i64 0, align 8
@S_RX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@S_RX_FIFO_LAST_EN = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_EN = common dso_local global i64 0, align 8
@M_RX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@M_RX_FIFO_LAST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @qcom_geni_serial_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_start_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_geni_serial_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %6, %struct.uart_port* %7)
  store %struct.qcom_geni_serial_port* %8, %struct.qcom_geni_serial_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SE_GENI_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @S_GENI_CMD_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = call i32 @qcom_geni_serial_stop_rx(%struct.uart_port* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %24 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %23, i32 0, i32 0
  %25 = load i32, i32* @UART_START_READ, align 4
  %26 = call i32 @geni_se_setup_s_cmd(i32* %24, i32 %25, i32 0)
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @S_RX_FIFO_WATERMARK_EN, align 4
  %34 = load i32, i32* @S_RX_FIFO_LAST_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @M_RX_FIFO_WATERMARK_EN, align 4
  %52 = load i32, i32* @M_RX_FIFO_LAST_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  ret void
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @qcom_geni_serial_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @geni_se_setup_s_cmd(i32*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
