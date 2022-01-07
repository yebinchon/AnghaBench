; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.qcom_geni_serial_port = type { i32 }

@S_CMD_DONE_EN = common dso_local global i32 0, align 4
@SE_GENI_S_IRQ_EN = common dso_local global i64 0, align 8
@S_RX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@S_RX_FIFO_LAST_EN = common dso_local global i32 0, align 4
@SE_GENI_M_IRQ_EN = common dso_local global i64 0, align 8
@M_RX_FIFO_WATERMARK_EN = common dso_local global i32 0, align 4
@M_RX_FIFO_LAST_EN = common dso_local global i32 0, align 4
@SE_GENI_STATUS = common dso_local global i64 0, align 8
@S_GENI_CMD_ACTIVE = common dso_local global i32 0, align 4
@SE_GENI_S_CMD_CTRL_REG = common dso_local global i32 0, align 4
@S_GENI_CMD_CANCEL = common dso_local global i32 0, align 4
@SE_GENI_S_IRQ_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @qcom_geni_serial_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_geni_serial_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %7, %struct.uart_port* %8)
  store %struct.qcom_geni_serial_port* %9, %struct.qcom_geni_serial_port** %5, align 8
  %10 = load i32, i32* @S_CMD_DONE_EN, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @S_RX_FIFO_WATERMARK_EN, align 4
  %18 = load i32, i32* @S_RX_FIFO_LAST_EN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @M_RX_FIFO_WATERMARK_EN, align 4
  %37 = load i32, i32* @M_RX_FIFO_LAST_EN, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SE_GENI_STATUS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @S_GENI_CMD_ACTIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %1
  br label %88

60:                                               ; preds = %1
  %61 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %62 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %61, i32 0, i32 0
  %63 = call i32 @geni_se_cancel_s_cmd(i32* %62)
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = load i32, i32* @SE_GENI_S_CMD_CTRL_REG, align 4
  %66 = load i32, i32* @S_GENI_CMD_CANCEL, align 4
  %67 = call i32 @qcom_geni_serial_poll_bit(%struct.uart_port* %64, i32 %65, i32 %66, i32 0)
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SE_GENI_STATUS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SE_GENI_S_IRQ_CLEAR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @S_GENI_CMD_ACTIVE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %60
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = call i32 @qcom_geni_serial_abort_rx(%struct.uart_port* %86)
  br label %88

88:                                               ; preds = %59, %85, %60
  ret void
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @geni_se_cancel_s_cmd(i32*) #1

declare dso_local i32 @qcom_geni_serial_poll_bit(%struct.uart_port*, i32, i32, i32) #1

declare dso_local i32 @qcom_geni_serial_abort_rx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
