; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_mcspi_write_chconf0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_mcspi_write_chconf0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.omap2_mcspi_cs* }
%struct.omap2_mcspi_cs = type { i32 }

@OMAP2_MCSPI_CHCONF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @mcspi_write_chconf0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcspi_write_chconf0(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap2_mcspi_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %7, align 8
  store %struct.omap2_mcspi_cs* %8, %struct.omap2_mcspi_cs** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %11 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = load i32, i32* @OMAP2_MCSPI_CHCONF0, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mcspi_write_cs_reg(%struct.spi_device* %12, i32 %13, i32 %14)
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load i32, i32* @OMAP2_MCSPI_CHCONF0, align 4
  %18 = call i32 @mcspi_read_cs_reg(%struct.spi_device* %16, i32 %17)
  ret void
}

declare dso_local i32 @mcspi_write_cs_reg(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @mcspi_read_cs_reg(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
