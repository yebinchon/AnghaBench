; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@PORT_RDA = common dso_local global i32 0, align 4
@RDA_UART_IRQ_MASK = common dso_local global i32 0, align 4
@RDA_UART_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @rda_uart_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rda_uart_config_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @UART_CONFIG_TYPE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @PORT_RDA, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = call i32 @rda_uart_request_port(%struct.uart_port* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %23 = call i32 @rda_uart_write(%struct.uart_port* %21, i32 0, i32 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = load i32, i32* @RDA_UART_STATUS, align 4
  %26 = call i32 @rda_uart_write(%struct.uart_port* %24, i32 0, i32 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @rda_uart_request_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rda_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
