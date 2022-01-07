; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_regs }
%struct.omap2_mcspi_regs = type { i32 }

@OMAP2_MCSPI_MODULCTRL = common dso_local global i32 0, align 4
@OMAP2_MCSPI_MODULCTRL_STEST = common dso_local global i32 0, align 4
@OMAP2_MCSPI_MODULCTRL_MS = common dso_local global i32 0, align 4
@OMAP2_MCSPI_MODULCTRL_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*)* @omap2_mcspi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_set_mode(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_master*, align 8
  %3 = alloca %struct.omap2_mcspi*, align 8
  %4 = alloca %struct.omap2_mcspi_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %2, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %7 = call %struct.omap2_mcspi* @spi_master_get_devdata(%struct.spi_master* %6)
  store %struct.omap2_mcspi* %7, %struct.omap2_mcspi** %3, align 8
  %8 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %9 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %8, i32 0, i32 0
  store %struct.omap2_mcspi_regs* %9, %struct.omap2_mcspi_regs** %4, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %11 = load i32, i32* @OMAP2_MCSPI_MODULCTRL, align 4
  %12 = call i32 @mcspi_read_reg(%struct.spi_master* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @OMAP2_MCSPI_MODULCTRL_STEST, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %18 = call i64 @spi_controller_is_slave(%struct.spi_master* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @OMAP2_MCSPI_MODULCTRL_MS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @OMAP2_MCSPI_MODULCTRL_MS, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @OMAP2_MCSPI_MODULCTRL_SINGLE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %20
  %33 = load %struct.spi_master*, %struct.spi_master** %2, align 8
  %34 = load i32, i32* @OMAP2_MCSPI_MODULCTRL, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mcspi_write_reg(%struct.spi_master* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.omap2_mcspi_regs*, %struct.omap2_mcspi_regs** %4, align 8
  %39 = getelementptr inbounds %struct.omap2_mcspi_regs, %struct.omap2_mcspi_regs* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @mcspi_read_reg(%struct.spi_master*, i32) #1

declare dso_local i64 @spi_controller_is_slave(%struct.spi_master*) #1

declare dso_local i32 @mcspi_write_reg(%struct.spi_master*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
