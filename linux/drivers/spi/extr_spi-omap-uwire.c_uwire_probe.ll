; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-uwire.c_uwire_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap-uwire.c_uwire_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.uwire_spi = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.spi_master* }

@ENODEV = common dso_local global i32 0, align 4
@UWIRE_BASE_PHYS = common dso_local global i32 0, align 4
@UWIRE_IO_SIZE = common dso_local global i32 0, align 4
@uwire_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't ioremap UWIRE\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no functional clock?\0A\00", align 1
@uwire_idx_shift = common dso_local global i32 0, align 4
@UWIRE_SR3 = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@uwire_setup = common dso_local global i32 0, align 4
@uwire_cleanup = common dso_local global i32 0, align 4
@uwire_chipselect = common dso_local global i32 0, align 4
@uwire_setup_transfer = common dso_local global i32 0, align 4
@uwire_txrx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uwire_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwire_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.uwire_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.spi_master* @spi_alloc_master(i32* %8, i32 32)
  store %struct.spi_master* %9, %struct.spi_master** %4, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %11 = icmp ne %struct.spi_master* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %119

15:                                               ; preds = %1
  %16 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %17 = call %struct.uwire_spi* @spi_master_get_devdata(%struct.spi_master* %16)
  store %struct.uwire_spi* %17, %struct.uwire_spi** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @UWIRE_BASE_PHYS, align 4
  %21 = load i32, i32* @UWIRE_IO_SIZE, align 4
  %22 = call i32 @devm_ioremap(i32* %19, i32 %20, i32 %21)
  store i32 %22, i32* @uwire_base, align 4
  %23 = load i32, i32* @uwire_base, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %30 = call i32 @spi_master_put(%struct.spi_master* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %119

33:                                               ; preds = %15
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.uwire_spi* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %41 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %43 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %49 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %56 = call i32 @spi_master_put(%struct.spi_master* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %119

58:                                               ; preds = %33
  %59 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %60 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_enable(i32 %61)
  %63 = call i64 (...) @cpu_is_omap7xx()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* @uwire_idx_shift, align 4
  br label %67

66:                                               ; preds = %58
  store i32 2, i32* @uwire_idx_shift, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* @UWIRE_SR3, align 4
  %69 = call i32 @uwire_write_reg(i32 %68, i32 1)
  %70 = load i32, i32* @SPI_CPOL, align 4
  %71 = load i32, i32* @SPI_CPHA, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SPI_CS_HIGH, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %76 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 16)
  %78 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %79 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %81 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %82 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %84 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %83, i32 0, i32 1
  store i32 2, i32* %84, align 4
  %85 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %86 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %85, i32 0, i32 2
  store i32 4, i32* %86, align 4
  %87 = load i32, i32* @uwire_setup, align 4
  %88 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %89 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @uwire_cleanup, align 4
  %91 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %92 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %94 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %95 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store %struct.spi_master* %93, %struct.spi_master** %96, align 8
  %97 = load i32, i32* @uwire_chipselect, align 4
  %98 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %99 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* @uwire_setup_transfer, align 4
  %102 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %103 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @uwire_txrx, align 4
  %106 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %107 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %110 = getelementptr inbounds %struct.uwire_spi, %struct.uwire_spi* %109, i32 0, i32 0
  %111 = call i32 @spi_bitbang_start(%struct.TYPE_2__* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %67
  %115 = load %struct.uwire_spi*, %struct.uwire_spi** %5, align 8
  %116 = call i32 @uwire_off(%struct.uwire_spi* %115)
  br label %117

117:                                              ; preds = %114, %67
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %47, %25, %12
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local %struct.uwire_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uwire_spi*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @cpu_is_omap7xx(...) #1

declare dso_local i32 @uwire_write_reg(i32, i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_2__*) #1

declare dso_local i32 @uwire_off(%struct.uwire_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
