; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.zynq_qspi = type { i32, i32 }

@ZYNQ_QSPI_ENABLE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynq_qspi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_qspi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.zynq_qspi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.zynq_qspi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.zynq_qspi* %5, %struct.zynq_qspi** %3, align 8
  %6 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %7 = load i32, i32* @ZYNQ_QSPI_ENABLE_OFFSET, align 4
  %8 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %6, i32 %7, i32 0)
  %9 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %10 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable_unprepare(i32 %11)
  %13 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %14 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  ret i32 0
}

declare dso_local %struct.zynq_qspi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
