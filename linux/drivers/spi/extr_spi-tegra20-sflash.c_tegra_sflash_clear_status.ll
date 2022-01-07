; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_clear_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-sflash.c_tegra_sflash_clear_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sflash_data = type { i32 }

@SPI_RDY = common dso_local global i32 0, align 4
@SPI_FIFO_ERROR = common dso_local global i32 0, align 4
@SPI_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_sflash_data*)* @tegra_sflash_clear_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sflash_clear_status(%struct.tegra_sflash_data* %0) #0 {
  %2 = alloca %struct.tegra_sflash_data*, align 8
  store %struct.tegra_sflash_data* %0, %struct.tegra_sflash_data** %2, align 8
  %3 = load %struct.tegra_sflash_data*, %struct.tegra_sflash_data** %2, align 8
  %4 = load i32, i32* @SPI_RDY, align 4
  %5 = load i32, i32* @SPI_FIFO_ERROR, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SPI_STATUS, align 4
  %8 = call i32 @tegra_sflash_writel(%struct.tegra_sflash_data* %3, i32 %6, i32 %7)
  ret void
}

declare dso_local i32 @tegra_sflash_writel(%struct.tegra_sflash_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
