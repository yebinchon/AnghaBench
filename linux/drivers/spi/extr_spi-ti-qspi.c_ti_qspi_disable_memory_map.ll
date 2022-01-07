; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_disable_memory_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_disable_memory_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ti_qspi = type { i32, i32, i64 }

@QSPI_SPI_SWITCH_REG = common dso_local global i32 0, align 4
@MEM_CS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ti_qspi_disable_memory_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_qspi_disable_memory_map(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ti_qspi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ti_qspi* @spi_master_get_devdata(i32 %6)
  store %struct.ti_qspi* %7, %struct.ti_qspi** %3, align 8
  %8 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %9 = load i32, i32* @QSPI_SPI_SWITCH_REG, align 4
  %10 = call i32 @ti_qspi_write(%struct.ti_qspi* %8, i32 0, i32 %9)
  %11 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %12 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %17 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %20 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MEM_CS_MASK, align 4
  %23 = call i32 @regmap_update_bits(i64 %18, i32 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %26 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  ret void
}

declare dso_local %struct.ti_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @ti_qspi_write(%struct.ti_qspi*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
