; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_complete_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_complete_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_port = type { i64, i32, %struct.msm_dma, %struct.uart_port }
%struct.msm_dma = type { i32, i32, i32, i32, i32, i32 }
%struct.uart_port = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.dma_tx_state = type { i32 }

@UARTDM_DMEN = common dso_local global i32 0, align 4
@UARTDM_1P3 = common dso_local global i64 0, align 8
@UART_CR_CMD_RESET_TX = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_CR_TX_ENABLE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_IMR_TXLEV = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @msm_complete_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_complete_tx_dma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.msm_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.msm_dma*, align 8
  %7 = alloca %struct.dma_tx_state, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.msm_port*
  store %struct.msm_port* %13, %struct.msm_port** %3, align 8
  %14 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %15 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %14, i32 0, i32 3
  store %struct.uart_port* %15, %struct.uart_port** %4, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.circ_buf* %19, %struct.circ_buf** %5, align 8
  %20 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %21 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %20, i32 0, i32 2
  store %struct.msm_dma* %21, %struct.msm_dma** %6, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %27 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %126

31:                                               ; preds = %1
  %32 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %33 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %36 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dmaengine_tx_status(i32 %34, i32 %37, %struct.dma_tx_state* %7)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %43 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %46 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %49 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_unmap_single(i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = load i32, i32* @UARTDM_DMEN, align 4
  %54 = call i32 @msm_read(%struct.uart_port* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %56 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @UARTDM_DMEN, align 4
  %64 = call i32 @msm_write(%struct.uart_port* %61, i32 %62, i32 %63)
  %65 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %66 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UARTDM_1P3, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %31
  %71 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %72 = load i32, i32* @UART_CR_CMD_RESET_TX, align 4
  %73 = load i32, i32* @UART_CR, align 4
  %74 = call i32 @msm_write(%struct.uart_port* %71, i32 %72, i32 %73)
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = load i32, i32* @UART_CR_TX_ENABLE, align 4
  %77 = load i32, i32* @UART_CR, align 4
  %78 = call i32 @msm_write(%struct.uart_port* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %31
  %80 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %81 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %82, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.msm_dma*, %struct.msm_dma** %6, align 8
  %93 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %96 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @UART_XMIT_SIZE, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %102 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @UART_IMR_TXLEV, align 4
  %106 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %107 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %111 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %112 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @UART_IMR, align 4
  %115 = call i32 @msm_write(%struct.uart_port* %110, i32 %113, i32 %114)
  %116 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %117 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %116)
  %118 = load i64, i64* @WAKEUP_CHARS, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %79
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = call i32 @uart_write_wakeup(%struct.uart_port* %121)
  br label %123

123:                                              ; preds = %120, %79
  %124 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %125 = call i32 @msm_handle_tx(%struct.uart_port* %124)
  br label %126

126:                                              ; preds = %123, %30
  %127 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 0
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @msm_handle_tx(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
