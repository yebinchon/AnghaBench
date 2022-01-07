; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_rx_dma_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_rx_dma_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, i32, i64 }

@DMA_RX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_rx_dma_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_rx_dma_startup(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %3 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %4 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %9 = call i32 @lpuart_start_rx_dma(%struct.lpuart_port* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @DMA_RX_TIMEOUT, align 4
  %13 = call i32 @msecs_to_jiffies(i32 %12)
  %14 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %15 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %17 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %22 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %11
  %24 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %25 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %27 = call i32 @rx_dma_timer_init(%struct.lpuart_port* %26)
  br label %31

28:                                               ; preds = %7, %1
  %29 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %30 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @lpuart_start_rx_dma(%struct.lpuart_port*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rx_dma_timer_init(%struct.lpuart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
