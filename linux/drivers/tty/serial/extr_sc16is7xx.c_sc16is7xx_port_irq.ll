; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_port_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_port_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc16is7xx_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uart_port }
%struct.uart_port = type { i32, i32 }

@SC16IS7XX_IIR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_IIR_NO_INT_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_IIR_ID_MASK = common dso_local global i32 0, align 4
@SC16IS7XX_RXLVL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ttySC%i: Unexpected interrupt: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc16is7xx_port*, i32)* @sc16is7xx_port_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc16is7xx_port_irq(%struct.sc16is7xx_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc16is7xx_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sc16is7xx_port* %0, %struct.sc16is7xx_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %4, align 8
  %10 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.uart_port* %15, %struct.uart_port** %6, align 8
  br label %16

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = load i32, i32* @SC16IS7XX_IIR_REG, align 4
  %19 = call i32 @sc16is7xx_port_read(%struct.uart_port* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SC16IS7XX_IIR_NO_INT_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %56

25:                                               ; preds = %16
  %26 = load i32, i32* @SC16IS7XX_IIR_ID_MASK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %45 [
    i32 132, label %30
    i32 131, label %30
    i32 130, label %30
    i32 128, label %30
    i32 129, label %42
  ]

30:                                               ; preds = %25, %25, %25, %25
  %31 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %32 = load i32, i32* @SC16IS7XX_RXLVL_REG, align 4
  %33 = call i32 @sc16is7xx_port_read(%struct.uart_port* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @sc16is7xx_handle_rx(%struct.uart_port* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  br label %54

42:                                               ; preds = %25
  %43 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %44 = call i32 @sc16is7xx_handle_tx(%struct.uart_port* %43)
  br label %54

45:                                               ; preds = %25
  %46 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_err_ratelimited(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %42, %41
  br label %55

55:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sc16is7xx_port_read(%struct.uart_port*, i32) #1

declare dso_local i32 @sc16is7xx_handle_rx(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sc16is7xx_handle_tx(%struct.uart_port*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
