; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.device* }
%struct.device = type { i32 }
%struct.msm_dma = type { i32, i32, i32, i32, i32 }

@UARTDM_DMEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.msm_dma*)* @msm_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_stop_dma(%struct.uart_port* %0, %struct.msm_dma* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.msm_dma*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.msm_dma* %1, %struct.msm_dma** %4, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %12 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %15 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %17 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dmaengine_terminate_all(i32 %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = load i32, i32* @UARTDM_DMEN, align 4
  %22 = call i32 @msm_read(%struct.uart_port* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %24 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UARTDM_DMEN, align 4
  %32 = call i32 @msm_write(%struct.uart_port* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %38 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %42 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dma_unmap_single(%struct.device* %36, i32 %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
