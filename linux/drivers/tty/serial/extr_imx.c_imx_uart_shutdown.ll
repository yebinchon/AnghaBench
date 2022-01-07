; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i64, i32, i32, i64, i32*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@UCR2_TXEN = common dso_local global i32 0, align 4
@UCR2_ATEN = common dso_local global i32 0, align 4
@UCR4 = common dso_local global i32 0, align 4
@UCR4_OREN = common dso_local global i32 0, align 4
@UCR1 = common dso_local global i32 0, align 4
@UCR1_TRDYEN = common dso_local global i32 0, align 4
@UCR1_RRDYEN = common dso_local global i32 0, align 4
@UCR1_RTSDEN = common dso_local global i32 0, align 4
@UCR1_UARTEN = common dso_local global i32 0, align 4
@UCR1_RXDMAEN = common dso_local global i32 0, align 4
@UCR1_ATDMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.imx_port*
  store %struct.imx_port* %9, %struct.imx_port** %3, align 8
  %10 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %11 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %10, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %1
  %15 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dmaengine_terminate_sync(i32 %17)
  %19 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %20 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %25 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %29 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %28, i32 0, i32 10
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %33 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_unmap_sg(i32 %27, i32* %31, i32 %34, i32 %35)
  %37 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %38 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %23, %14
  %40 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %41 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dmaengine_terminate_sync(i32 %42)
  %44 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %45 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %50 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %54 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %53, i32 0, i32 7
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @dma_unmap_sg(i32 %52, i32* %54, i32 1, i32 %55)
  %57 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %58 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %48, %39
  %60 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %61 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = call i32 @imx_uart_stop_tx(%struct.uart_port* %65)
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = call i32 @imx_uart_stop_rx(%struct.uart_port* %67)
  %69 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %70 = call i32 @imx_uart_disable_dma(%struct.imx_port* %69)
  %71 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %72 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %77 = call i32 @imx_uart_dma_exit(%struct.imx_port* %76)
  br label %78

78:                                               ; preds = %59, %1
  %79 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %80 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mctrl_gpio_disable_ms(i32 %81)
  %83 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %84 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %89 = load i32, i32* @UCR2, align 4
  %90 = call i32 @imx_uart_readl(%struct.imx_port* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @UCR2_TXEN, align 4
  %92 = load i32, i32* @UCR2_ATEN, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @UCR2, align 4
  %100 = call i32 @imx_uart_writel(%struct.imx_port* %97, i32 %98, i32 %99)
  %101 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %102 = load i32, i32* @UCR4, align 4
  %103 = call i32 @imx_uart_readl(%struct.imx_port* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @UCR4_OREN, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @UCR4, align 4
  %111 = call i32 @imx_uart_writel(%struct.imx_port* %108, i32 %109, i32 %110)
  %112 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %113 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %118 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %117, i32 0, i32 4
  %119 = call i32 @del_timer_sync(i32* %118)
  %120 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %121 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %4, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %126 = load i32, i32* @UCR1, align 4
  %127 = call i32 @imx_uart_readl(%struct.imx_port* %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @UCR1_TRDYEN, align 4
  %129 = load i32, i32* @UCR1_RRDYEN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @UCR1_RTSDEN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @UCR1_UARTEN, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @UCR1_RXDMAEN, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @UCR1_ATDMAEN, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @UCR1, align 4
  %145 = call i32 @imx_uart_writel(%struct.imx_port* %142, i32 %143, i32 %144)
  %146 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %147 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %4, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %152 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @clk_disable_unprepare(i32 %153)
  %155 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %156 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @clk_disable_unprepare(i32 %157)
  ret void
}

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @imx_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @imx_uart_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @imx_uart_disable_dma(%struct.imx_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @imx_uart_dma_exit(%struct.imx_port*) #1

declare dso_local i32 @mctrl_gpio_disable_ms(i32) #1

declare dso_local i32 @imx_uart_readl(%struct.imx_port*, i32) #1

declare dso_local i32 @imx_uart_writel(%struct.imx_port*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
