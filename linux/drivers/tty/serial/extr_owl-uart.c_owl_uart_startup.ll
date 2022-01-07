; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@owl_uart_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"owl-uart\00", align 1
@OWL_UART_STAT = common dso_local global i32 0, align 4
@OWL_UART_STAT_RIP = common dso_local global i32 0, align 4
@OWL_UART_STAT_TIP = common dso_local global i32 0, align 4
@OWL_UART_STAT_RXER = common dso_local global i32 0, align 4
@OWL_UART_STAT_TFER = common dso_local global i32 0, align 4
@OWL_UART_STAT_RXST = common dso_local global i32 0, align 4
@OWL_UART_CTL = common dso_local global i32 0, align 4
@OWL_UART_CTL_RXIE = common dso_local global i32 0, align 4
@OWL_UART_CTL_TXIE = common dso_local global i32 0, align 4
@OWL_UART_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @owl_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @owl_uart_irq, align 4
  %11 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call i32 @request_irq(i32 %9, i32 %10, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = load i32, i32* @OWL_UART_STAT, align 4
  %25 = call i32 @owl_uart_read(%struct.uart_port* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @OWL_UART_STAT_RIP, align 4
  %27 = load i32, i32* @OWL_UART_STAT_TIP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @OWL_UART_STAT_RXER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @OWL_UART_STAT_TFER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @OWL_UART_STAT_RXST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OWL_UART_STAT, align 4
  %40 = call i32 @owl_uart_write(%struct.uart_port* %37, i32 %38, i32 %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = load i32, i32* @OWL_UART_CTL, align 4
  %43 = call i32 @owl_uart_read(%struct.uart_port* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @OWL_UART_CTL_RXIE, align 4
  %45 = load i32, i32* @OWL_UART_CTL_TXIE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @OWL_UART_CTL_EN, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @OWL_UART_CTL, align 4
  %55 = call i32 @owl_uart_write(%struct.uart_port* %52, i32 %53, i32 %54)
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %18, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
