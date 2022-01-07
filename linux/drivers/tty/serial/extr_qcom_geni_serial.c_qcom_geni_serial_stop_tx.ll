; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.qcom_geni_serial_port = type { i32 }

@SE_GENI_M_IRQ_EN = common dso_local global i64 0, align 8
@M_CMD_DONE_EN = common dso_local global i32 0, align 4
@M_TX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@SE_GENI_TX_WATERMARK_REG = common dso_local global i64 0, align 8
@SE_GENI_STATUS = common dso_local global i64 0, align 8
@M_GENI_CMD_ACTIVE = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_STATUS = common dso_local global i32 0, align 4
@M_CMD_CANCEL_EN = common dso_local global i32 0, align 4
@M_CMD_ABORT_EN = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @qcom_geni_serial_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_stop_tx(%struct.uart_port* %0) #0 {
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
  %12 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @M_CMD_DONE_EN, align 4
  %16 = load i32, i32* @M_TX_FIFO_WATERMARK_EN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SE_GENI_TX_WATERMARK_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SE_GENI_STATUS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @M_GENI_CMD_ACTIVE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %1
  br label %77

45:                                               ; preds = %1
  %46 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %47 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %46, i32 0, i32 0
  %48 = call i32 @geni_se_cancel_m_cmd(i32* %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = load i32, i32* @SE_GENI_M_IRQ_STATUS, align 4
  %51 = load i32, i32* @M_CMD_CANCEL_EN, align 4
  %52 = call i32 @qcom_geni_serial_poll_bit(%struct.uart_port* %49, i32 %50, i32 %51, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %45
  %55 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %56 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %55, i32 0, i32 0
  %57 = call i32 @geni_se_abort_m_cmd(i32* %56)
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = load i32, i32* @SE_GENI_M_IRQ_STATUS, align 4
  %60 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %61 = call i32 @qcom_geni_serial_poll_bit(%struct.uart_port* %58, i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* @M_CMD_ABORT_EN, align 4
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SE_GENI_M_IRQ_CLEAR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  br label %69

69:                                               ; preds = %54, %45
  %70 = load i32, i32* @M_CMD_CANCEL_EN, align 4
  %71 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SE_GENI_M_IRQ_CLEAR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %69, %44
  ret void
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @geni_se_cancel_m_cmd(i32*) #1

declare dso_local i32 @qcom_geni_serial_poll_bit(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @geni_se_abort_m_cmd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
