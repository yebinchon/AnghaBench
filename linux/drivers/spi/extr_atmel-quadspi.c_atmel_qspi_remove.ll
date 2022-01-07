; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_controller = type { i32 }
%struct.atmel_qspi = type { i32, i32, i64 }

@QSPI_CR_QSPIDIS = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_qspi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.atmel_qspi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_controller* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = call %struct.atmel_qspi* @spi_controller_get_devdata(%struct.spi_controller* %7)
  store %struct.atmel_qspi* %8, %struct.atmel_qspi** %4, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %10 = call i32 @spi_unregister_controller(%struct.spi_controller* %9)
  %11 = load i32, i32* @QSPI_CR_QSPIDIS, align 4
  %12 = load %struct.atmel_qspi*, %struct.atmel_qspi** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QSPI_CR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel_relaxed(i32 %11, i64 %16)
  %18 = load %struct.atmel_qspi*, %struct.atmel_qspi** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  %22 = load %struct.atmel_qspi*, %struct.atmel_qspi** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  ret i32 0
}

declare dso_local %struct.spi_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.atmel_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @spi_unregister_controller(%struct.spi_controller*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
