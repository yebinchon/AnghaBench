; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_controller_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_controller_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap2_mcspi = type { i32, %struct.omap2_mcspi_regs, %struct.spi_master* }
%struct.omap2_mcspi_regs = type { i32 }
%struct.spi_master = type { i32 }

@OMAP2_MCSPI_WAKEUPENABLE = common dso_local global i32 0, align 4
@OMAP2_MCSPI_WAKEUPENABLE_WKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap2_mcspi*)* @omap2_mcspi_controller_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_controller_setup(%struct.omap2_mcspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap2_mcspi*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.omap2_mcspi_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.omap2_mcspi* %0, %struct.omap2_mcspi** %3, align 8
  %7 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %8 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %7, i32 0, i32 2
  %9 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  store %struct.spi_master* %9, %struct.spi_master** %4, align 8
  %10 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %11 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %10, i32 0, i32 1
  store %struct.omap2_mcspi_regs* %11, %struct.omap2_mcspi_regs** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %13 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %20 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_put_noidle(i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %26 = load i32, i32* @OMAP2_MCSPI_WAKEUPENABLE, align 4
  %27 = load i32, i32* @OMAP2_MCSPI_WAKEUPENABLE_WKEN, align 4
  %28 = call i32 @mcspi_write_reg(%struct.spi_master* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @OMAP2_MCSPI_WAKEUPENABLE_WKEN, align 4
  %30 = load %struct.omap2_mcspi_regs*, %struct.omap2_mcspi_regs** %5, align 8
  %31 = getelementptr inbounds %struct.omap2_mcspi_regs, %struct.omap2_mcspi_regs* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %33 = call i32 @omap2_mcspi_set_mode(%struct.spi_master* %32)
  %34 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %35 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_runtime_mark_last_busy(i32 %36)
  %38 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %39 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_put_autosuspend(i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %24, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @mcspi_write_reg(%struct.spi_master*, i32, i32) #1

declare dso_local i32 @omap2_mcspi_set_mode(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
