; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsl_dspi = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fsl_dspi_platform_data = type { i32, i32 }
%struct.chip_data = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fsl,spi-cs-sck-delay\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fsl,spi-sck-cs-delay\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CTAR_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CTAR_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CTAR_LSBFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.fsl_dspi*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsl_dspi_platform_data*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca %struct.chip_data*, align 8
  %15 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.fsl_dspi* @spi_controller_get_devdata(i32 %18)
  store %struct.fsl_dspi* %19, %struct.fsl_dspi** %4, align 8
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %20)
  store %struct.chip_data* %21, %struct.chip_data** %14, align 8
  %22 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %23 = icmp eq %struct.chip_data* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.chip_data* @kzalloc(i32 16, i32 %25)
  store %struct.chip_data* %26, %struct.chip_data** %14, align 8
  %27 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %28 = icmp ne %struct.chip_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %149

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.fsl_dspi*, %struct.fsl_dspi** %4, align 8
  %35 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call %struct.fsl_dspi_platform_data* @dev_get_platdata(i32* %37)
  store %struct.fsl_dspi_platform_data* %38, %struct.fsl_dspi_platform_data** %11, align 8
  %39 = load %struct.fsl_dspi_platform_data*, %struct.fsl_dspi_platform_data** %11, align 8
  %40 = icmp ne %struct.fsl_dspi_platform_data* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %33
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @of_property_read_u32(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %9)
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @of_property_read_u32(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  br label %59

52:                                               ; preds = %33
  %53 = load %struct.fsl_dspi_platform_data*, %struct.fsl_dspi_platform_data** %11, align 8
  %54 = getelementptr inbounds %struct.fsl_dspi_platform_data, %struct.fsl_dspi_platform_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.fsl_dspi_platform_data*, %struct.fsl_dspi_platform_data** %11, align 8
  %57 = getelementptr inbounds %struct.fsl_dspi_platform_data, %struct.fsl_dspi_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %52, %41
  %60 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %61 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.fsl_dspi*, %struct.fsl_dspi** %4, align 8
  %63 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @clk_get_rate(i32 %64)
  store i64 %65, i64* %15, align 8
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @hz_to_spi_baud(i8* %6, i8* %5, i32 %68, i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @ns_delay_scale(i8* %7, i8* %8, i32 %71, i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @ns_delay_scale(i8* %12, i8* %13, i32 %74, i64 %75)
  %77 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %78 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SPI_CPOL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %59
  %86 = load i32, i32* @SPI_CTAR_CPOL, align 4
  %87 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %88 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %59
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SPI_CPHA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @SPI_CTAR_CPHA, align 4
  %100 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %101 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.fsl_dspi*, %struct.fsl_dspi** %4, align 8
  %106 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @spi_controller_is_slave(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %145, label %110

110:                                              ; preds = %104
  %111 = load i8, i8* %7, align 1
  %112 = call i32 @SPI_CTAR_PCSSCK(i8 zeroext %111)
  %113 = load i8, i8* %8, align 1
  %114 = call i32 @SPI_CTAR_CSSCK(i8 zeroext %113)
  %115 = or i32 %112, %114
  %116 = load i8, i8* %12, align 1
  %117 = call i32 @SPI_CTAR_PASC(i8 zeroext %116)
  %118 = or i32 %115, %117
  %119 = load i8, i8* %13, align 1
  %120 = call i32 @SPI_CTAR_ASC(i8 zeroext %119)
  %121 = or i32 %118, %120
  %122 = load i8, i8* %6, align 1
  %123 = call i32 @SPI_CTAR_PBR(i8 zeroext %122)
  %124 = or i32 %121, %123
  %125 = load i8, i8* %5, align 1
  %126 = call i32 @SPI_CTAR_BR(i8 zeroext %125)
  %127 = or i32 %124, %126
  %128 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %129 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %133 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SPI_LSB_FIRST, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %110
  %139 = load i32, i32* @SPI_CTAR_LSBFE, align 4
  %140 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %141 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %110
  br label %145

145:                                              ; preds = %144, %104
  %146 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %147 = load %struct.chip_data*, %struct.chip_data** %14, align 8
  %148 = call i32 @spi_set_ctldata(%struct.spi_device* %146, %struct.chip_data* %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %29
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.fsl_dspi* @spi_controller_get_devdata(i32) #1

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.chip_data* @kzalloc(i32, i32) #1

declare dso_local %struct.fsl_dspi_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @hz_to_spi_baud(i8*, i8*, i32, i64) #1

declare dso_local i32 @ns_delay_scale(i8*, i8*, i32, i64) #1

declare dso_local i32 @spi_controller_is_slave(i32) #1

declare dso_local i32 @SPI_CTAR_PCSSCK(i8 zeroext) #1

declare dso_local i32 @SPI_CTAR_CSSCK(i8 zeroext) #1

declare dso_local i32 @SPI_CTAR_PASC(i8 zeroext) #1

declare dso_local i32 @SPI_CTAR_ASC(i8 zeroext) #1

declare dso_local i32 @SPI_CTAR_PBR(i8 zeroext) #1

declare dso_local i32 @SPI_CTAR_BR(i8 zeroext) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
