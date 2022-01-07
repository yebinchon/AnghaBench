; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xtensa-xtfpga.c_xtfpga_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xtensa-xtfpga.c_xtfpga_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.xtfpga_spi = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32, %struct.spi_master* }
%struct.spi_master = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_MASTER_NO_RX = common dso_local global i32 0, align 4
@xtfpga_spi_chipselect = common dso_local global i32 0, align 4
@xtfpga_spi_txrx_word = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XTFPGA_SPI_START = common dso_local global i32 0, align 4
@XTFPGA_SPI_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Device stuck in busy state\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"spi_bitbang_start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xtfpga_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtfpga_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xtfpga_spi*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_master*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__* %9, i32 32)
  store %struct.spi_master* %10, %struct.spi_master** %7, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %12 = icmp ne %struct.spi_master* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %114

16:                                               ; preds = %1
  %17 = load i32, i32* @SPI_MASTER_NO_RX, align 4
  %18 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %19 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 16)
  %21 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %22 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %28 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %37 = call %struct.xtfpga_spi* @spi_master_get_devdata(%struct.spi_master* %36)
  store %struct.xtfpga_spi* %37, %struct.xtfpga_spi** %4, align 8
  %38 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %39 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %40 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store %struct.spi_master* %38, %struct.spi_master** %41, align 8
  %42 = load i32, i32* @xtfpga_spi_chipselect, align 4
  %43 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %44 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @xtfpga_spi_txrx_word, align 4
  %47 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %48 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @SPI_MODE_0, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_MEM, align 4
  %55 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 0)
  store %struct.resource* %55, %struct.resource** %5, align 8
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %16
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %110

64:                                               ; preds = %16
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %66, %struct.resource* %67)
  %69 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %70 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %72 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %78 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %6, align 4
  br label %110

81:                                               ; preds = %64
  %82 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %83 = load i32, i32* @XTFPGA_SPI_START, align 4
  %84 = call i32 @xtfpga_spi_write32(%struct.xtfpga_spi* %82, i32 %83, i32 0)
  %85 = call i32 @usleep_range(i32 1000, i32 2000)
  %86 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %87 = load i32, i32* @XTFPGA_SPI_BUSY, align 4
  %88 = call i64 @xtfpga_spi_read32(%struct.xtfpga_spi* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(%struct.TYPE_8__* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %110

96:                                               ; preds = %81
  %97 = load %struct.xtfpga_spi*, %struct.xtfpga_spi** %4, align 8
  %98 = getelementptr inbounds %struct.xtfpga_spi, %struct.xtfpga_spi* %97, i32 0, i32 0
  %99 = call i32 @spi_bitbang_start(%struct.TYPE_7__* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.TYPE_8__* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %110

106:                                              ; preds = %96
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %107, %struct.spi_master* %108)
  store i32 0, i32* %2, align 4
  br label %114

110:                                              ; preds = %102, %90, %76, %58
  %111 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %112 = call i32 @spi_master_put(%struct.spi_master* %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %106, %13
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local %struct.xtfpga_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @xtfpga_spi_write32(%struct.xtfpga_spi*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @xtfpga_spi_read32(%struct.xtfpga_spi*, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
