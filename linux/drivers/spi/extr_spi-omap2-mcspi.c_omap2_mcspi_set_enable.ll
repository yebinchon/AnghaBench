; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.omap2_mcspi_cs* }
%struct.omap2_mcspi_cs = type { i32 }

@OMAP2_MCSPI_CHCTRL_EN = common dso_local global i32 0, align 4
@OMAP2_MCSPI_CHCTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @omap2_mcspi_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_set_enable(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap2_mcspi_cs*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  store %struct.omap2_mcspi_cs* %9, %struct.omap2_mcspi_cs** %5, align 8
  %10 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %11 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @OMAP2_MCSPI_CHCTRL_EN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @OMAP2_MCSPI_CHCTRL_EN, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %27 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load i32, i32* @OMAP2_MCSPI_CHCTRL0, align 4
  %30 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %31 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mcspi_write_cs_reg(%struct.spi_device* %28, i32 %29, i32 %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load i32, i32* @OMAP2_MCSPI_CHCTRL0, align 4
  %36 = call i32 @mcspi_read_cs_reg(%struct.spi_device* %34, i32 %35)
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
