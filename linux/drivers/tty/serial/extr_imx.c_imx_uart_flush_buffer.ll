; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { i64, i32, %struct.TYPE_2__, i32, i64, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_TXDMAEN = common dso_local global i32 0, align 4
@UBIR = common dso_local global i32 0, align 4
@UBMR = common dso_local global i32 0, align 4
@IMX21_UTS = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR2_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_uart_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_flush_buffer(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = bitcast %struct.uart_port* %11 to %struct.imx_port*
  store %struct.imx_port* %12, %struct.imx_port** %3, align 8
  %13 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %14 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %13, i32 0, i32 5
  %15 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %16 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %15, i64 0
  store %struct.scatterlist* %16, %struct.scatterlist** %4, align 8
  store i32 100, i32* %6, align 4
  %17 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %18 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %106

22:                                               ; preds = %1
  %23 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %24 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %26 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dmaengine_terminate_all(i32 %27)
  %29 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  %34 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %35 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %39 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %40 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_unmap_sg(i32 %37, %struct.scatterlist* %38, i32 %41, i32 %42)
  %44 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %45 = load i32, i32* @UCR1, align 4
  %46 = call i32 @imx_uart_readl(%struct.imx_port* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @UCR1_TXDMAEN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @UCR1, align 4
  %54 = call i32 @imx_uart_writel(%struct.imx_port* %51, i32 %52, i32 %53)
  %55 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %56 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %33, %22
  %58 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %59 = load i32, i32* @UBIR, align 4
  %60 = call i32 @imx_uart_readl(%struct.imx_port* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %62 = load i32, i32* @UBMR, align 4
  %63 = call i32 @imx_uart_readl(%struct.imx_port* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %65 = load i32, i32* @IMX21_UTS, align 4
  %66 = call i32 @imx_uart_readl(%struct.imx_port* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %68 = load i32, i32* @UCR2, align 4
  %69 = call i32 @imx_uart_readl(%struct.imx_port* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @UCR2_SRST, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @UCR2, align 4
  %77 = call i32 @imx_uart_writel(%struct.imx_port* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %91, %57
  %79 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %80 = load i32, i32* @UCR2, align 4
  %81 = call i32 @imx_uart_readl(%struct.imx_port* %79, i32 %80)
  %82 = load i32, i32* @UCR2_SRST, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %6, align 4
  %88 = icmp sgt i32 %87, 0
  br label %89

89:                                               ; preds = %85, %78
  %90 = phi i1 [ false, %78 ], [ %88, %85 ]
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = call i32 @udelay(i32 1)
  br label %78

93:                                               ; preds = %89
  %94 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @UBIR, align 4
  %97 = call i32 @imx_uart_writel(%struct.imx_port* %94, i32 %95, i32 %96)
  %98 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @UBMR, align 4
  %101 = call i32 @imx_uart_writel(%struct.imx_port* %98, i32 %99, i32 %100)
  %102 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @IMX21_UTS, align 4
  %105 = call i32 @imx_uart_writel(%struct.imx_port* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %93, %21
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
