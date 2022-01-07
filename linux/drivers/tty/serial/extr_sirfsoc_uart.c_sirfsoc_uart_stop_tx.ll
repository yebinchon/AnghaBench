; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32, i32 }

@TX_DMA_RUNNING = common dso_local global i64 0, align 8
@TX_DMA_PAUSE = common dso_local global i64 0, align 8
@SIRF_USP_UART = common dso_local global i64 0, align 8
@SIRFUART_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sirfsoc_uart_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.sirfsoc_int_en*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %3, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %4, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.sirfsoc_int_en* %15, %struct.sirfsoc_int_en** %5, align 8
  %16 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  %21 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TX_DMA_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dmaengine_pause(i64 %29)
  %31 = load i64, i64* @TX_DMA_PAUSE, align 8
  %32 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %65

34:                                               ; preds = %20
  %35 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %34
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %42 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %46 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rd_regl(%struct.uart_port* %44, i32 %47)
  %49 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %50 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = call i32 @wr_regl(%struct.uart_port* %40, i32 %43, i32 %53)
  br label %64

55:                                               ; preds = %34
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %58 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %61 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wr_regl(%struct.uart_port* %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55, %39
  br label %65

65:                                               ; preds = %64, %26
  br label %119

66:                                               ; preds = %1
  %67 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %68 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SIRF_USP_UART, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %77 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %80 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %81 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rd_regl(%struct.uart_port* %79, i32 %82)
  %84 = load i32, i32* @SIRFUART_TX_EN, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @wr_regl(%struct.uart_port* %75, i32 %78, i32 %86)
  br label %88

88:                                               ; preds = %74, %66
  %89 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %90 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %88
  %94 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %95 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %96 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %100 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @rd_regl(%struct.uart_port* %98, i32 %101)
  %103 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %104 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  %108 = call i32 @wr_regl(%struct.uart_port* %94, i32 %97, i32 %107)
  br label %118

109:                                              ; preds = %88
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %112 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %115 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @wr_regl(%struct.uart_port* %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %93
  br label %119

119:                                              ; preds = %118, %65
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @dmaengine_pause(i64) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
