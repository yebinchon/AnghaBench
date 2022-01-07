; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i64, i32, i64, %struct.uart_port }
%struct.uart_port = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i64 0, align 8
@UART_IER_RLSI = common dso_local global i64 0, align 8
@UART_IER_RTOIE = common dso_local global i64 0, align 8
@TEGRA_UART_IER_EORD = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i64 0, align 8
@UART_IER_RDI = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_uart_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.tegra_uart_port*
  store %struct.tegra_uart_port* %12, %struct.tegra_uart_port** %5, align 8
  %13 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %13, i32 0, i32 3
  store %struct.uart_port* %14, %struct.uart_port** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %2, %136
  %20 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %21 = load i32, i32* @UART_IIR, align 4
  %22 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @UART_IIR_NO_INT, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %19
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %37 = call i32 @tegra_uart_handle_rx_dma(%struct.tegra_uart_port* %36)
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %39 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* @UART_IER_RLSI, align 8
  %47 = load i64, i64* @UART_IER_RTOIE, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* @TEGRA_UART_IER_EORD, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @UART_IER, align 4
  %59 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %56, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %42, %35
  br label %61

61:                                               ; preds = %60, %32, %27
  %62 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66

67:                                               ; preds = %19
  %68 = load i64, i64* %7, align 8
  %69 = lshr i64 %68, 1
  %70 = and i64 %69, 7
  switch i64 %70, label %136 [
    i64 0, label %71
    i64 1, label %74
    i64 4, label %89
    i64 6, label %89
    i64 2, label %89
    i64 3, label %129
    i64 5, label %135
    i64 7, label %135
  ]

71:                                               ; preds = %67
  %72 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %73 = call i32 @tegra_uart_handle_modem_signal_change(%struct.uart_port* %72)
  br label %136

74:                                               ; preds = %67
  %75 = load i64, i64* @UART_IER_THRI, align 8
  %76 = xor i64 %75, -1
  %77 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %78 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = and i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %82 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @UART_IER, align 4
  %86 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %81, i64 %84, i32 %85)
  %87 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %88 = call i32 @tegra_uart_handle_tx_pio(%struct.tegra_uart_port* %87)
  br label %136

89:                                               ; preds = %67, %67, %67
  %90 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %91 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %94
  store i32 1, i32* %9, align 4
  %98 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %99 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* @UART_IER_RDI, align 8
  %102 = load i64, i64* %8, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* @UART_IER, align 4
  %107 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %104, i64 %105, i32 %106)
  %108 = load i64, i64* @UART_IER_RDI, align 8
  %109 = load i64, i64* @UART_IER_RLSI, align 8
  %110 = or i64 %108, %109
  %111 = load i64, i64* @UART_IER_RTOIE, align 8
  %112 = or i64 %110, %111
  %113 = load i64, i64* @TEGRA_UART_IER_EORD, align 8
  %114 = or i64 %112, %113
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %8, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %120 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* @UART_IER, align 4
  %124 = call i32 @tegra_uart_write(%struct.tegra_uart_port* %121, i64 %122, i32 %123)
  br label %128

125:                                              ; preds = %94, %89
  %126 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %127 = call i32 @do_handle_rx_pio(%struct.tegra_uart_port* %126)
  br label %128

128:                                              ; preds = %125, %97
  br label %136

129:                                              ; preds = %67
  %130 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %131 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %132 = load i32, i32* @UART_LSR, align 4
  %133 = call i64 @tegra_uart_read(%struct.tegra_uart_port* %131, i32 %132)
  %134 = call i32 @tegra_uart_decode_rx_error(%struct.tegra_uart_port* %130, i64 %133)
  br label %136

135:                                              ; preds = %67, %67
  br label %136

136:                                              ; preds = %67, %135, %129, %128, %74, %71
  br label %19
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tegra_uart_read(%struct.tegra_uart_port*, i32) #1

declare dso_local i32 @tegra_uart_handle_rx_dma(%struct.tegra_uart_port*) #1

declare dso_local i32 @tegra_uart_write(%struct.tegra_uart_port*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tegra_uart_handle_modem_signal_change(%struct.uart_port*) #1

declare dso_local i32 @tegra_uart_handle_tx_pio(%struct.tegra_uart_port*) #1

declare dso_local i32 @do_handle_rx_pio(%struct.tegra_uart_port*) #1

declare dso_local i32 @tegra_uart_decode_rx_error(%struct.tegra_uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
