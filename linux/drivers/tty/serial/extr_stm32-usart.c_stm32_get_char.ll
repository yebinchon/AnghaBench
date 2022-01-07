; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_get_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_get_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.stm32_port = type { i64*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i64 }

@RX_BUF_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uart_port*, i32*, i32*)* @stm32_get_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm32_get_char(%struct.uart_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stm32_port*, align 8
  %8 = alloca %struct.stm32_usart_offsets*, align 8
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %10)
  store %struct.stm32_port* %11, %struct.stm32_port** %7, align 8
  %12 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %13 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.stm32_usart_offsets* %15, %struct.stm32_usart_offsets** %8, align 8
  %16 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %17 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %22 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @RX_BUF_L, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = sext i32 %26 to i64
  %29 = sub i64 %24, %28
  %30 = getelementptr inbounds i64, i64* %23, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load i64, i64* @RX_BUF_L, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %20
  br label %54

40:                                               ; preds = %3
  %41 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %8, align 8
  %45 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i64 @readl_relaxed(i64 %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.stm32_port*, %struct.stm32_port** %7, align 8
  %50 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %40, %39
  %55 = load i64, i64* %9, align 8
  ret i64 %55
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
