; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_rx_from_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_rx_from_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.atmel_uart_port = type { i32, %struct.atmel_dma_buffer* }
%struct.atmel_dma_buffer = type { i32, i32, i32, i64 }

@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_STTTO = common dso_local global i32 0, align 4
@ATMEL_PDC_RPR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ATMEL_PDC_RNPR = common dso_local global i32 0, align 4
@ATMEL_PDC_RNCR = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@ATMEL_US_ENDRX = common dso_local global i32 0, align 4
@ATMEL_US_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_rx_from_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_rx_from_pdc(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.atmel_dma_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %10)
  store %struct.atmel_uart_port* %11, %struct.atmel_uart_port** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.tty_port* %15, %struct.tty_port** %4, align 8
  %16 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %126, %1
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* @ATMEL_US_CR, align 4
  %22 = load i32, i32* @ATMEL_US_STTTO, align 4
  %23 = call i32 @atmel_uart_writel(%struct.uart_port* %20, i32 %21, i32 %22)
  %24 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %24, i32 0, i32 1
  %26 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %26, i64 %28
  store %struct.atmel_dma_buffer* %29, %struct.atmel_dma_buffer** %5, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = load i32, i32* @ATMEL_PDC_RPR, align 4
  %32 = call i32 @atmel_uart_readl(%struct.uart_port* %30, i32 %31)
  %33 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @min(i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %19
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_sync_single_for_cpu(i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %67 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @tty_insert_flip_string(%struct.tty_port* %66, i64 %74, i32 %75)
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %84 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = call i32 @dma_sync_single_for_device(i32 %79, i32 %82, i32 %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %96 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %51, %19
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp uge i32 %98, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %105 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %107 = load i32, i32* @ATMEL_PDC_RNPR, align 4
  %108 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %109 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @atmel_uart_writel(%struct.uart_port* %106, i32 %107, i32 %110)
  %112 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %113 = load i32, i32* @ATMEL_PDC_RNCR, align 4
  %114 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %115 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @atmel_uart_writel(%struct.uart_port* %112, i32 %113, i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %124 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %103, %97
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %129 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp uge i32 %127, %130
  br i1 %131, label %19, label %132

132:                                              ; preds = %126
  %133 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %137 = call i32 @tty_flip_buffer_push(%struct.tty_port* %136)
  %138 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 0
  %140 = call i32 @spin_lock(i32* %139)
  %141 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %142 = load i32, i32* @ATMEL_US_IER, align 4
  %143 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %144 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @atmel_uart_writel(%struct.uart_port* %141, i32 %142, i32 %145)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i64, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
