; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_usart_spi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@THR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_usart_spi*)* @at91_usart_spi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_usart_spi_tx(%struct.at91_usart_spi* %0) #0 {
  %2 = alloca %struct.at91_usart_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.at91_usart_spi* %0, %struct.at91_usart_spi** %2, align 8
  %6 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %2, align 8
  %7 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %2, align 8
  %12 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %2, align 8
  %15 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %2, align 8
  %24 = call i64 @at91_usart_spi_tx_ready(%struct.at91_usart_spi* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %2, align 8
  %28 = load i32, i32* @THR, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @at91_usart_spi_writeb(%struct.at91_usart_spi* %27, i32 %28, i32 %35)
  %37 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %2, align 8
  %38 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, -1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %21, %26, %22
  ret void
}

declare dso_local i64 @at91_usart_spi_tx_ready(%struct.at91_usart_spi*) #1

declare dso_local i32 @at91_usart_spi_writeb(%struct.at91_usart_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
