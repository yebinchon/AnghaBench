; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_uart_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_uart_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i32, i64, i64, %struct.msm_dma }
%struct.msm_dma = type { i32, i64 }

@UART_MISR = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@UART_IMR_RXBREAK_START = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_RXBREAK_START = common dso_local global i64 0, align 8
@UART_CR = common dso_local global i32 0, align 4
@UART_IMR_RXLEV = common dso_local global i32 0, align 4
@UART_IMR_RXSTALE = common dso_local global i32 0, align 4
@UART_CR_CMD_STALE_EVENT_DISABLE = common dso_local global i64 0, align 8
@UART_CR_CMD_RESET_STALE_INT = common dso_local global i64 0, align 8
@UART_IMR_TXLEV = common dso_local global i32 0, align 4
@UART_IMR_DELTA_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @msm_uart_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_uart_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.msm_port*, align 8
  %7 = alloca %struct.msm_dma*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_port*
  store %struct.uart_port* %12, %struct.uart_port** %5, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %14 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %13)
  store %struct.msm_port* %14, %struct.msm_port** %6, align 8
  %15 = load %struct.msm_port*, %struct.msm_port** %6, align 8
  %16 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %15, i32 0, i32 3
  store %struct.msm_dma* %16, %struct.msm_dma** %7, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %22 = load i32, i32* @UART_MISR, align 4
  %23 = call i32 @msm_read(%struct.uart_port* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %25 = load i32, i32* @UART_IMR, align 4
  %26 = call i32 @msm_write(%struct.uart_port* %24, i64 0, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @UART_IMR_RXBREAK_START, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.msm_port*, %struct.msm_port** %6, align 8
  %33 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = load i64, i64* @UART_CR_CMD_RESET_RXBREAK_START, align 8
  %36 = load i32, i32* @UART_CR, align 4
  %37 = call i32 @msm_write(%struct.uart_port* %34, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @UART_IMR_RXLEV, align 4
  %41 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %47 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load i64, i64* @UART_CR_CMD_STALE_EVENT_DISABLE, align 8
  store i64 %51, i64* %10, align 8
  %52 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @UART_CR, align 4
  %55 = call i32 @msm_write(%struct.uart_port* %52, i64 %53, i32 %54)
  %56 = load i64, i64* @UART_CR_CMD_RESET_STALE_INT, align 8
  store i64 %56, i64* %10, align 8
  %57 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* @UART_CR, align 4
  %60 = call i32 @msm_write(%struct.uart_port* %57, i64 %58, i32 %59)
  %61 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %62 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dmaengine_terminate_all(i32 %63)
  br label %78

65:                                               ; preds = %45
  %66 = load %struct.msm_port*, %struct.msm_port** %6, align 8
  %67 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @msm_handle_rx_dm(%struct.uart_port* %71, i32 %72)
  br label %77

74:                                               ; preds = %65
  %75 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %76 = call i32 @msm_handle_rx(%struct.uart_port* %75)
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %50
  br label %79

79:                                               ; preds = %78, %38
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @UART_IMR_TXLEV, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %86 = call i32 @msm_handle_tx(%struct.uart_port* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @UART_IMR_DELTA_CTS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %94 = call i32 @msm_handle_delta_cts(%struct.uart_port* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %97 = load %struct.msm_port*, %struct.msm_port** %6, align 8
  %98 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @UART_IMR, align 4
  %101 = call i32 @msm_write(%struct.uart_port* %96, i64 %99, i32 %100)
  %102 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %103 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %102, i32 0, i32 0
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %106
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @msm_handle_rx_dm(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_handle_rx(%struct.uart_port*) #1

declare dso_local i32 @msm_handle_tx(%struct.uart_port*) #1

declare dso_local i32 @msm_handle_delta_cts(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
