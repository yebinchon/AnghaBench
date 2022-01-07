; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_prepare_rx_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_prepare_rx_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { %struct.atmel_dma_buffer*, i64, i64 }
%struct.atmel_dma_buffer = type { i32, i64, i32, i32* }

@PDC_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATMEL_PDC_RPR = common dso_local global i32 0, align 4
@ATMEL_PDC_RCR = common dso_local global i32 0, align 4
@ATMEL_PDC_RNPR = common dso_local global i32 0, align 4
@ATMEL_PDC_RNCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @atmel_prepare_rx_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_prepare_rx_pdc(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.atmel_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_dma_buffer*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %7)
  store %struct.atmel_uart_port* %8, %struct.atmel_uart_port** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %73, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %76

12:                                               ; preds = %9
  %13 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %13, i32 0, i32 0
  %15 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %15, i64 %17
  store %struct.atmel_dma_buffer* %18, %struct.atmel_dma_buffer** %6, align 8
  %19 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 %19, i32 %20)
  %22 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %35, i32 0, i32 0
  %37 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %36, align 8
  %38 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %37, i64 0
  %39 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32 %34, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %44, i32 0, i32 0
  %46 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %45, align 8
  %47 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %46, i64 0
  %48 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @kfree(i32* %49)
  br label %51

51:                                               ; preds = %31, %28
  %52 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %105

56:                                               ; preds = %12
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_map_single(i32 %59, i32* %62, i32 %63, i32 %64)
  %66 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %69 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %9

76:                                               ; preds = %9
  %77 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %80 = load i32, i32* @ATMEL_PDC_RPR, align 4
  %81 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %81, i32 0, i32 0
  %83 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %82, align 8
  %84 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %83, i64 0
  %85 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @atmel_uart_writel(%struct.uart_port* %79, i32 %80, i32 %86)
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = load i32, i32* @ATMEL_PDC_RCR, align 4
  %90 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %91 = call i32 @atmel_uart_writel(%struct.uart_port* %88, i32 %89, i32 %90)
  %92 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %93 = load i32, i32* @ATMEL_PDC_RNPR, align 4
  %94 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %95 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %94, i32 0, i32 0
  %96 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %95, align 8
  %97 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %96, i64 1
  %98 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @atmel_uart_writel(%struct.uart_port* %92, i32 %93, i32 %99)
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = load i32, i32* @ATMEL_PDC_RNCR, align 4
  %103 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %104 = call i32 @atmel_uart_writel(%struct.uart_port* %101, i32 %102, i32 %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %76, %51
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
