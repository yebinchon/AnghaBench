; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }
%struct.stm32_port = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64, i64 }

@USART_SR_RTOF = common dso_local global i32 0, align 4
@UNDEF_REG = common dso_local global i64 0, align 8
@USART_ICR_RTOCF = common dso_local global i32 0, align 4
@USART_SR_WUF = common dso_local global i32 0, align 4
@USART_ICR_WUCF = common dso_local global i32 0, align 4
@USART_SR_RXNE = common dso_local global i32 0, align 4
@USART_SR_TXE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.stm32_port*, align 8
  %8 = alloca %struct.stm32_usart_offsets*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.uart_port*
  store %struct.uart_port* %11, %struct.uart_port** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %13 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %12)
  store %struct.stm32_port* %13, %struct.stm32_port** %7, align 8
  %14 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %15 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.stm32_usart_offsets* %17, %struct.stm32_usart_offsets** %8, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %25 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @USART_SR_RTOF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %2
  %34 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %35 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UNDEF_REG, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* @USART_ICR_RTOCF, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %45 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i32 @writel_relaxed(i32 %40, i64 %47)
  br label %49

49:                                               ; preds = %39, %33, %2
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @USART_SR_WUF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %56 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UNDEF_REG, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* @USART_ICR_WUCF, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %66 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i32 @writel_relaxed(i32 %61, i64 %68)
  br label %70

70:                                               ; preds = %60, %54, %49
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @USART_SR_RXNE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %77 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %82 = call i32 @stm32_receive_chars(%struct.uart_port* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @USART_SR_TXE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %90 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %95 = call i32 @stm32_transmit_chars(%struct.uart_port* %94)
  br label %96

96:                                               ; preds = %93, %88, %83
  %97 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %101 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %105, i32* %3, align 4
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_receive_chars(%struct.uart_port*, i32) #1

declare dso_local i32 @stm32_transmit_chars(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
