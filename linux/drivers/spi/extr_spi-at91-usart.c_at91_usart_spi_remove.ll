; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_controller = type { i32 }
%struct.at91_usart_spi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_usart_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_usart_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.at91_usart_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_controller* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = call %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller* %7)
  store %struct.at91_usart_spi* %8, %struct.at91_usart_spi** %4, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %10 = call i32 @at91_usart_spi_release_dma(%struct.spi_controller* %9)
  %11 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %4, align 8
  %12 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  ret i32 0
}

declare dso_local %struct.spi_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @at91_usart_spi_release_dma(%struct.spi_controller*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
