; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_enable_memory_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_enable_memory_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ti_qspi = type { i32, i32, i64 }

@MM_SWITCH = common dso_local global i32 0, align 4
@QSPI_SPI_SWITCH_REG = common dso_local global i32 0, align 4
@MEM_CS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ti_qspi_enable_memory_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_qspi_enable_memory_map(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ti_qspi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ti_qspi* @spi_master_get_devdata(i32 %6)
  store %struct.ti_qspi* %7, %struct.ti_qspi** %3, align 8
  %8 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %9 = load i32, i32* @MM_SWITCH, align 4
  %10 = load i32, i32* @QSPI_SPI_SWITCH_REG, align 4
  %11 = call i32 @ti_qspi_write(%struct.ti_qspi* %8, i32 %9, i32 %10)
  %12 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %13 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %18 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %21 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MEM_CS_MASK, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MEM_CS_EN(i32 %26)
  %28 = call i32 @regmap_update_bits(i64 %19, i32 %22, i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.ti_qspi*, %struct.ti_qspi** %3, align 8
  %31 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  ret void
}

declare dso_local %struct.ti_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @ti_qspi_write(%struct.ti_qspi*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i32 @MEM_CS_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
