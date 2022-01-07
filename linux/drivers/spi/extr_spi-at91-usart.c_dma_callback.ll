; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.at91_usart_spi = type { i32, i64 }

@IER = common dso_local global i32 0, align 4
@US_IR_RXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.at91_usart_spi*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.spi_controller*
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = call %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller* %7)
  store %struct.at91_usart_spi* %8, %struct.at91_usart_spi** %4, align 8
  %9 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %4, align 8
  %10 = load i32, i32* @IER, align 4
  %11 = load i32, i32* @US_IR_RXRDY, align 4
  %12 = call i32 @at91_usart_spi_writel(%struct.at91_usart_spi* %9, i32 %10, i32 %11)
  %13 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %4, align 8
  %14 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %4, align 8
  %16 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %15, i32 0, i32 0
  %17 = call i32 @complete(i32* %16)
  ret void
}

declare dso_local %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @at91_usart_spi_writel(%struct.at91_usart_spi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
