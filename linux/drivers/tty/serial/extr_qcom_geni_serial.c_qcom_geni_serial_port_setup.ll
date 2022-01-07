; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_port_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.qcom_geni_serial_port = type { i32, i32, i32, i32, i64, i32 }

@DEFAULT_BITS_PER_CHAR = common dso_local global i64 0, align 8
@STALE_TIMEOUT = common dso_local global i64 0, align 8
@CONSOLE_RX_BYTES_PW = common dso_local global i32 0, align 4
@GENI_SE_UART = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid FW loaded, proto: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SE_UART_RX_STALE_CNT = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@UART_RX_WM = common dso_local global i32 0, align 4
@GENI_SE_FIFO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @qcom_geni_serial_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_geni_serial_port_setup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.qcom_geni_serial_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %7, %struct.uart_port* %8)
  store %struct.qcom_geni_serial_port* %9, %struct.qcom_geni_serial_port** %4, align 8
  %10 = load i64, i64* @DEFAULT_BITS_PER_CHAR, align 8
  %11 = load i64, i64* @STALE_TIMEOUT, align 8
  %12 = mul nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call i64 @uart_console(%struct.uart_port* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %18 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @CONSOLE_RX_BYTES_PW, align 4
  %20 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %24 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %28, i32 0, i32 5
  %30 = call i64 @geni_se_read_proto(i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @GENI_SE_UART, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %112

42:                                               ; preds = %27
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = call i32 @qcom_geni_serial_stop_rx(%struct.uart_port* %43)
  %45 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %46 = call i32 @get_tx_fifo_size(%struct.qcom_geni_serial_port* %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SE_UART_RX_STALE_CNT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i64 %47, i64 %52)
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = call i64 @uart_console(%struct.uart_port* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = call i32 @qcom_geni_serial_poll_tx_done(%struct.uart_port* %58)
  br label %60

60:                                               ; preds = %57, %42
  %61 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %62 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %61, i32 0, i32 5
  %63 = load i32, i32* @BITS_PER_BYTE, align 4
  %64 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %65 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @geni_se_config_packing(i32* %62, i32 %63, i32 %66, i32 0, i32 1, i32 0)
  %68 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %68, i32 0, i32 5
  %70 = load i32, i32* @BITS_PER_BYTE, align 4
  %71 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @geni_se_config_packing(i32* %69, i32 %70, i32 %73, i32 0, i32 0, i32 1)
  %75 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %76 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %75, i32 0, i32 5
  %77 = load i32, i32* @UART_RX_WM, align 4
  %78 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, 2
  %82 = call i32 @geni_se_init(i32* %76, i32 %77, i64 %81)
  %83 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %84 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %83, i32 0, i32 5
  %85 = load i32, i32* @GENI_SE_FIFO, align 4
  %86 = call i32 @geni_se_select_mode(i32* %84, i32 %85)
  %87 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %88 = call i64 @uart_console(%struct.uart_port* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %60
  %91 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %95 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @devm_kcalloc(i32 %93, i64 %96, i32 8, i32 %97)
  %99 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %100 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %102 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %112

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %60
  %110 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %4, align 8
  %111 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %105, %34
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i64 @geni_se_read_proto(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @qcom_geni_serial_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @get_tx_fifo_size(%struct.qcom_geni_serial_port*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @qcom_geni_serial_poll_tx_done(%struct.uart_port*) #1

declare dso_local i32 @geni_se_config_packing(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @geni_se_init(i32*, i32, i64) #1

declare dso_local i32 @geni_se_select_mode(i32*, i32) #1

declare dso_local i32 @devm_kcalloc(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
