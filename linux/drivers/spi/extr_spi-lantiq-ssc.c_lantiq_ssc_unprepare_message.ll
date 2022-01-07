; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_unprepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_unprepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { i32 }
%struct.lantiq_ssc_spi = type { i32 }

@LTQ_SPI_CON_TXOFF = common dso_local global i32 0, align 4
@LTQ_SPI_CON_RXOFF = common dso_local global i32 0, align 4
@LTQ_SPI_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @lantiq_ssc_unprepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_ssc_unprepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.lantiq_ssc_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %7 = call %struct.lantiq_ssc_spi* @spi_master_get_devdata(%struct.spi_master* %6)
  store %struct.lantiq_ssc_spi* %7, %struct.lantiq_ssc_spi** %5, align 8
  %8 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %9 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @flush_workqueue(i32 %10)
  %12 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %5, align 8
  %13 = load i32, i32* @LTQ_SPI_CON_TXOFF, align 4
  %14 = load i32, i32* @LTQ_SPI_CON_RXOFF, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LTQ_SPI_CON, align 4
  %17 = call i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi* %12, i32 0, i32 %15, i32 %16)
  ret i32 0
}

declare dso_local %struct.lantiq_ssc_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
