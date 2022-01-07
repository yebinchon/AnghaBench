; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32 }
%struct.stm32_port = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i8* }

@stm32_interrupt = common dso_local global i32 0, align 4
@stm32_threaded_interrupt = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@UNDEF_REG = common dso_local global i64 0, align 8
@USART_RQR_RXFRQ = common dso_local global i32 0, align 4
@USART_CR3_TXFTCFG_MASK = common dso_local global i32 0, align 4
@USART_CR3_RXFTCFG_MASK = common dso_local global i32 0, align 4
@USART_CR3_TXFTCFG_HALF = common dso_local global i32 0, align 4
@USART_CR3_TXFTCFG_SHIFT = common dso_local global i32 0, align 4
@USART_CR3_RXFTCFG_HALF = common dso_local global i32 0, align 4
@USART_CR3_RXFTCFG_SHIFT = common dso_local global i32 0, align 4
@USART_CR1_RE = common dso_local global i32 0, align 4
@USART_CR1_FIFOEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @stm32_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.stm32_port*, align 8
  %5 = alloca %struct.stm32_usart_offsets*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %9)
  store %struct.stm32_port* %10, %struct.stm32_port** %4, align 8
  %11 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.stm32_usart_offsets* %14, %struct.stm32_usart_offsets** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_4__* @to_platform_device(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @stm32_interrupt, align 4
  %25 = load i32, i32* @stm32_threaded_interrupt, align 4
  %26 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = call i32 @request_threaded_irq(i32 %23, i32 %24, i32 %25, i32 %26, i8* %27, %struct.uart_port* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %1
  %35 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %36 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UNDEF_REG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %43 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @USART_RQR_RXFRQ, align 4
  %46 = call i32 @stm32_set_bits(%struct.uart_port* %41, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %57 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i32 @readl_relaxed(i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @USART_CR3_TXFTCFG_MASK, align 4
  %62 = load i32, i32* @USART_CR3_RXFTCFG_MASK, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @USART_CR3_TXFTCFG_HALF, align 4
  %68 = load i32, i32* @USART_CR3_TXFTCFG_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @USART_CR3_RXFTCFG_HALF, align 4
  %73 = load i32, i32* @USART_CR3_RXFTCFG_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %82 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @writel_relaxed(i32 %77, i64 %84)
  br label %86

86:                                               ; preds = %52, %47
  %87 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %88 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @USART_CR1_RE, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %7, align 4
  %92 = load %struct.stm32_port*, %struct.stm32_port** %4, align 8
  %93 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @USART_CR1_FIFOEN, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %86
  %101 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %102 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %5, align 8
  %103 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @stm32_set_bits(%struct.uart_port* %101, i64 %104, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %32
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local %struct.TYPE_4__* @to_platform_device(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
