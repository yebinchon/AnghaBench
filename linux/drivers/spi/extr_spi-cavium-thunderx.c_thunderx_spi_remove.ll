; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cavium-thunderx.c_thunderx_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-cavium-thunderx.c_thunderx_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.spi_master = type { i32 }
%struct.octeon_spi = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @thunderx_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunderx_spi_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.octeon_spi*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.spi_master* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.spi_master* %6, %struct.spi_master** %3, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %8 = call %struct.octeon_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.octeon_spi* %8, %struct.octeon_spi** %4, align 8
  %9 = load %struct.octeon_spi*, %struct.octeon_spi** %4, align 8
  %10 = icmp ne %struct.octeon_spi* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.octeon_spi*, %struct.octeon_spi** %4, align 8
  %14 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  %17 = load %struct.octeon_spi*, %struct.octeon_spi** %4, align 8
  %18 = getelementptr inbounds %struct.octeon_spi, %struct.octeon_spi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.octeon_spi*, %struct.octeon_spi** %4, align 8
  %21 = call i64 @OCTEON_SPI_CFG(%struct.octeon_spi* %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writeq(i32 0, i64 %22)
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.spi_master* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.octeon_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @OCTEON_SPI_CFG(%struct.octeon_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
