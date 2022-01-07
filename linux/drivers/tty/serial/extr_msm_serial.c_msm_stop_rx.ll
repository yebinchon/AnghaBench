; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i32, %struct.msm_dma }
%struct.msm_dma = type { i64 }

@UART_IMR_RXLEV = common dso_local global i32 0, align 4
@UART_IMR_RXSTALE = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @msm_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.msm_port*, align 8
  %4 = alloca %struct.msm_dma*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %5)
  store %struct.msm_port* %6, %struct.msm_port** %3, align 8
  %7 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %8 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %7, i32 0, i32 1
  store %struct.msm_dma* %8, %struct.msm_dma** %4, align 8
  %9 = load i32, i32* @UART_IMR_RXLEV, align 4
  %10 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %14 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %19 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UART_IMR, align 4
  %22 = call i32 @msm_write(%struct.uart_port* %17, i32 %20, i32 %21)
  %23 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %24 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = load %struct.msm_dma*, %struct.msm_dma** %4, align 8
  %30 = call i32 @msm_stop_dma(%struct.uart_port* %28, %struct.msm_dma* %29)
  br label %31

31:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @msm_stop_dma(%struct.uart_port*, %struct.msm_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
