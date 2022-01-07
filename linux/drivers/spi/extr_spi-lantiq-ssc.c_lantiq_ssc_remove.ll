; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lantiq_ssc_spi = type { i32, i32, i32 }

@LTQ_SPI_IRNEN = common dso_local global i32 0, align 4
@LTQ_SPI_CLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lantiq_ssc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_ssc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.lantiq_ssc_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.lantiq_ssc_spi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.lantiq_ssc_spi* %5, %struct.lantiq_ssc_spi** %3, align 8
  %6 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %7 = load i32, i32* @LTQ_SPI_IRNEN, align 4
  %8 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %6, i32 0, i32 %7)
  %9 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %10 = load i32, i32* @LTQ_SPI_CLC, align 4
  %11 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %9, i32 0, i32 %10)
  %12 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %13 = call i32 @rx_fifo_flush(%struct.lantiq_ssc_spi* %12)
  %14 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %15 = call i32 @tx_fifo_flush(%struct.lantiq_ssc_spi* %14)
  %16 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %17 = call i32 @hw_enter_config_mode(%struct.lantiq_ssc_spi* %16)
  %18 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %19 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @destroy_workqueue(i32 %20)
  %22 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %23 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %3, align 8
  %27 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_put(i32 %28)
  ret i32 0
}

declare dso_local %struct.lantiq_ssc_spi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi*, i32, i32) #1

declare dso_local i32 @rx_fifo_flush(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @tx_fifo_flush(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @hw_enter_config_mode(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
