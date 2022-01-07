; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@RDA_UART_IRQ_MASK = common dso_local global i32 0, align 4
@rda_interrupt = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rda-uart\00", align 1
@RDA_UART_CTRL = common dso_local global i32 0, align 4
@RDA_UART_ENABLE = common dso_local global i32 0, align 4
@RDA_UART_RX_DATA_AVAILABLE = common dso_local global i32 0, align 4
@RDA_UART_RX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @rda_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rda_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %13 = call i32 @rda_uart_write(%struct.uart_port* %11, i32 0, i32 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @rda_interrupt, align 4
  %22 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = call i32 @request_irq(i32 %20, i32 %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %1
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = load i32, i32* @RDA_UART_CTRL, align 4
  %36 = call i32 @rda_uart_read(%struct.uart_port* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RDA_UART_ENABLE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @RDA_UART_CTRL, align 4
  %43 = call i32 @rda_uart_write(%struct.uart_port* %40, i32 %41, i32 %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %46 = call i32 @rda_uart_read(%struct.uart_port* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @RDA_UART_RX_DATA_AVAILABLE, align 4
  %48 = load i32, i32* @RDA_UART_RX_TIMEOUT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %55 = call i32 @rda_uart_write(%struct.uart_port* %52, i32 %53, i32 %54)
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %29, %27
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rda_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @rda_uart_read(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
