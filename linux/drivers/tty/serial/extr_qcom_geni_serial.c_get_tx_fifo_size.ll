; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_get_tx_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_get_tx_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_geni_serial_port = type { i32, i32, i32, i32, %struct.uart_port }
%struct.uart_port = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_geni_serial_port*)* @get_tx_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tx_fifo_size(%struct.qcom_geni_serial_port* %0) #0 {
  %2 = alloca %struct.qcom_geni_serial_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  store %struct.qcom_geni_serial_port* %0, %struct.qcom_geni_serial_port** %2, align 8
  %4 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %5 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %4, i32 0, i32 4
  store %struct.uart_port* %5, %struct.uart_port** %3, align 8
  %6 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %7 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %6, i32 0, i32 2
  %8 = call i32 @geni_se_get_tx_fifo_depth(i32* %7)
  %9 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %10 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %12 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %11, i32 0, i32 2
  %13 = call i32 @geni_se_get_tx_fifo_width(i32* %12)
  %14 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %15 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %17 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %16, i32 0, i32 2
  %18 = call i32 @geni_se_get_rx_fifo_depth(i32* %17)
  %19 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %20 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %22 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %2, align 8
  %25 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* @BITS_PER_BYTE, align 4
  %29 = sdiv i32 %27, %28
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @geni_se_get_tx_fifo_depth(i32*) #1

declare dso_local i32 @geni_se_get_tx_fifo_width(i32*) #1

declare dso_local i32 @geni_se_get_rx_fifo_depth(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
