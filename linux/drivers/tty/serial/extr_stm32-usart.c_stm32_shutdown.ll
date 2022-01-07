; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64 }
%struct.stm32_port = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_config, %struct.stm32_usart_offsets }
%struct.stm32_usart_config = type { i32 }
%struct.stm32_usart_offsets = type { i32, i64 }

@USART_CR1_TXEIE = common dso_local global i32 0, align 4
@USART_CR1_TE = common dso_local global i32 0, align 4
@USART_CR1_RE = common dso_local global i32 0, align 4
@USART_CR1_FIFOEN = common dso_local global i32 0, align 4
@USART_SR_TC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"transmission complete not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @stm32_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.stm32_port*, align 8
  %4 = alloca %struct.stm32_usart_offsets*, align 8
  %5 = alloca %struct.stm32_usart_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %9)
  store %struct.stm32_port* %10, %struct.stm32_port** %3, align 8
  %11 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.stm32_usart_offsets* %14, %struct.stm32_usart_offsets** %4, align 8
  %15 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.stm32_usart_config* %18, %struct.stm32_usart_config** %5, align 8
  %19 = load i32, i32* @USART_CR1_TXEIE, align 4
  %20 = load i32, i32* @USART_CR1_TE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USART_CR1_RE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.stm32_usart_config*, %struct.stm32_usart_config** %5, align 8
  %30 = getelementptr inbounds %struct.stm32_usart_config, %struct.stm32_usart_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %36 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @USART_CR1_FIFOEN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %1
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %48 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @USART_SR_TC, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @readl_relaxed_poll_timeout(i64 %50, i32 %51, i32 %54, i32 10, i32 100000)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %43
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %66 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @stm32_clr_bits(%struct.uart_port* %64, i32 %67, i32 %68)
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.uart_port* %73)
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_clr_bits(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
