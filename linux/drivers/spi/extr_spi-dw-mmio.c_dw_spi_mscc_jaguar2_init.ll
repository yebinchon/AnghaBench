; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw-mmio.c_dw_spi_mscc_jaguar2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw-mmio.c_dw_spi_mscc_jaguar2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dw_spi_mmio = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"mscc,jaguar2-cpu-syscon\00", align 1
@JAGUAR2_IF_SI_OWNER_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.dw_spi_mmio*)* @dw_spi_mscc_jaguar2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_spi_mscc_jaguar2_init(%struct.platform_device* %0, %struct.dw_spi_mmio* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_spi_mmio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.dw_spi_mmio* %1, %struct.dw_spi_mmio** %4, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = load %struct.dw_spi_mmio*, %struct.dw_spi_mmio** %4, align 8
  %7 = load i32, i32* @JAGUAR2_IF_SI_OWNER_OFFSET, align 4
  %8 = call i32 @dw_spi_mscc_init(%struct.platform_device* %5, %struct.dw_spi_mmio* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %7)
  ret i32 %8
}

declare dso_local i32 @dw_spi_mscc_init(%struct.platform_device*, %struct.dw_spi_mmio*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
