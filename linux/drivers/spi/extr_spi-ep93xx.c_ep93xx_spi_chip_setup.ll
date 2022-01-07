; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_chip_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ep93xx.c_ep93xx_spi_chip_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.ep93xx_spi = type { i64 }

@SSPCR0_SCR_SHIFT = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SSPCR0_MODE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"setup: mode %d, cpsr %d, scr %d, dss %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"setup: cr0 %#x\0A\00", align 1
@SSPCPSR = common dso_local global i64 0, align 8
@SSPCR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @ep93xx_spi_chip_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_spi_chip_setup(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.ep93xx_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %14 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %15 = call %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master* %14)
  store %struct.ep93xx_spi* %15, %struct.ep93xx_spi** %8, align 8
  %16 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bits_per_word_to_dss(i32 %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ep93xx_spi_calc_divisors(%struct.spi_master* %20, i32 %23, i32* %10, i32* %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %74

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SSPCR0_SCR_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SPI_CPHA, align 4
  %37 = load i32, i32* @SPI_CPOL, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @SSPCR0_MODE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 0
  %49 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %57 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %56, i32 0, i32 0
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %62 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SSPCPSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ep93xx_spi*, %struct.ep93xx_spi** %8, align 8
  %69 = getelementptr inbounds %struct.ep93xx_spi, %struct.ep93xx_spi* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SSPCR0, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %29, %27
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.ep93xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @bits_per_word_to_dss(i32) #1

declare dso_local i32 @ep93xx_spi_calc_divisors(%struct.spi_master*, i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
