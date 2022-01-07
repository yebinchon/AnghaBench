; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sirfsoc_uart_port = type { i64, %struct.TYPE_4__, i64, %struct.uart_port }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uart_port = type { i32 }

@sirfsoc_uart_drv = common dso_local global i32 0, align 4
@SIRFSOC_RX_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sirfsoc_uart_port* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sirfsoc_uart_port* %6, %struct.sirfsoc_uart_port** %3, align 8
  %7 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %7, i32 0, i32 3
  store %struct.uart_port* %8, %struct.uart_port** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call i32 @uart_remove_one_port(i32* @sirfsoc_uart_drv, %struct.uart_port* %9)
  %11 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dmaengine_terminate_all(i64 %18)
  %20 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dma_release_channel(i64 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SIRFSOC_RX_DMA_BUF_SIZE, align 4
  %28 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(i32 %26, i32 %27, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %15, %1
  %39 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dmaengine_terminate_all(i64 %46)
  %48 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @dma_release_channel(i64 %50)
  br label %52

52:                                               ; preds = %43, %38
  ret i32 0
}

declare dso_local %struct.sirfsoc_uart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
