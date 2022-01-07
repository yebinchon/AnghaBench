; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.qcom_geni_serial_port = type { i32, i32 (%struct.uart_port*, i32, i32)* }

@SE_GENI_RX_FIFO_STATUS = common dso_local global i64 0, align 8
@RX_FIFO_WC_MSK = common dso_local global i32 0, align 4
@RX_LAST = common dso_local global i32 0, align 4
@RX_LAST_BYTE_VALID_MSK = common dso_local global i32 0, align 4
@RX_LAST_BYTE_VALID_SHFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @qcom_geni_serial_handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_handle_rx(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qcom_geni_serial_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %11, %struct.uart_port* %12)
  store %struct.qcom_geni_serial_port* %13, %struct.qcom_geni_serial_port** %10, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SE_GENI_RX_FIFO_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RX_FIFO_WC_MSK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RX_LAST, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RX_LAST_BYTE_VALID_MSK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @RX_LAST_BYTE_VALID_SHFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %64

34:                                               ; preds = %2
  %35 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %10, align 8
  %36 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = mul nsw i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %43, %34
  %51 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %10, align 8
  %52 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %10, align 8
  %58 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %57, i32 0, i32 1
  %59 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %58, align 8
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 %59(%struct.uart_port* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %33
  ret void
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
