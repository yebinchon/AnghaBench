; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/adc/extr_ad7816.c_ad7816_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7816_chip_info = type { i64, i64, i32, i32, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SPI channel setting error\0A\00", align 1
@AD7816_PD = common dso_local global i64 0, align 8
@ID_AD7816 = common dso_local global i64 0, align 8
@ID_AD7817 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"SPI data read error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7816_chip_info*, i32*)* @ad7816_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7816_spi_read(%struct.ad7816_chip_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad7816_chip_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ad7816_chip_info* %0, %struct.ad7816_chip_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %10 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %9, i32 0, i32 6
  %11 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %13 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @gpiod_set_value(i32 %14, i32 1)
  %16 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %17 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gpiod_set_value(i32 %18, i32 0)
  %20 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %21 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %22 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %21, i32 0, i32 5
  %23 = call i32 @spi_write(%struct.spi_device* %20, i32* %22, i32 4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %104

31:                                               ; preds = %2
  %32 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %33 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gpiod_set_value(i32 %34, i32 1)
  %36 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %37 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AD7816_PD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %43 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gpiod_set_value(i32 %44, i32 1)
  %46 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %47 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gpiod_set_value(i32 %48, i32 0)
  br label %59

50:                                               ; preds = %31
  %51 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %52 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @gpiod_set_value(i32 %53, i32 0)
  %55 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %56 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gpiod_set_value(i32 %57, i32 1)
  br label %59

59:                                               ; preds = %50, %41
  %60 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %61 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ID_AD7816, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %67 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ID_AD7817, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65, %59
  br label %72

72:                                               ; preds = %78, %71
  %73 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %74 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @gpiod_get_value(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (...) @cpu_relax()
  br label %72

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %65
  %82 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %83 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @gpiod_set_value(i32 %84, i32 0)
  %86 = load %struct.ad7816_chip_info*, %struct.ad7816_chip_info** %4, align 8
  %87 = getelementptr inbounds %struct.ad7816_chip_info, %struct.ad7816_chip_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @gpiod_set_value(i32 %88, i32 1)
  %90 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %91 = call i32 @spi_read(%struct.spi_device* %90, i32* %8, i32 4)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %96 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %104

99:                                               ; preds = %81
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @be16_to_cpu(i32 %100)
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %94, %26
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spi_read(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
