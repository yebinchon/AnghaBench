; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1347.c_ds1347_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1347.c_ds1347_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.rtc_device = type { i32 }
%struct.regmap_config = type { i32, i32, i32, i32, i32* }
%struct.regmap = type opaque

@ds1347_access_table = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ds1347 regmap init spi failed\0A\00", align 1
@DS1347_SECONDS_REG = common dso_local global i32 0, align 4
@DS1347_CONTROL_REG = common dso_local global i32 0, align 4
@DS1347_STATUS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DS1347 RTC CTRL Reg = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DS1347 RTC Status Reg = 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ds1347\00", align 1
@ds1347_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ds1347_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1347_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.regmap_config, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = call i32 @memset(%struct.regmap_config* %5, i32 0, i32 24)
  %10 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %5, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %5, i32 0, i32 1
  store i32 8, i32* %11, align 4
  %12 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %5, i32 0, i32 2
  store i32 128, i32* %12, align 8
  %13 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %5, i32 0, i32 3
  store i32 63, i32* %13, align 4
  %14 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %5, i32 0, i32 4
  store i32* @ds1347_access_table, i32** %14, align 8
  %15 = load i32, i32* @SPI_MODE_3, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  store i32 8, i32* %19, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call i32 @spi_setup(%struct.spi_device* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = call %struct.rtc_device* @devm_regmap_init_spi(%struct.spi_device* %22, %struct.regmap_config* %5)
  %24 = bitcast %struct.rtc_device* %23 to %struct.regmap*
  store %struct.regmap* %24, %struct.regmap** %6, align 8
  %25 = load %struct.regmap*, %struct.regmap** %6, align 8
  %26 = bitcast %struct.regmap* %25 to %struct.rtc_device*
  %27 = call i64 @IS_ERR(%struct.rtc_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 1
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.regmap*, %struct.regmap** %6, align 8
  %34 = bitcast %struct.regmap* %33 to %struct.rtc_device*
  %35 = call i32 @PTR_ERR(%struct.rtc_device* %34)
  store i32 %35, i32* %2, align 4
  br label %99

36:                                               ; preds = %1
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.regmap*, %struct.regmap** %6, align 8
  %39 = bitcast %struct.regmap* %38 to %struct.rtc_device*
  %40 = call i32 @spi_set_drvdata(%struct.spi_device* %37, %struct.rtc_device* %39)
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = bitcast %struct.regmap* %41 to %struct.rtc_device*
  %43 = load i32, i32* @DS1347_SECONDS_REG, align 4
  %44 = call i32 @regmap_read(%struct.rtc_device* %42, i32 %43, i32* %7)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %99

49:                                               ; preds = %36
  %50 = load %struct.regmap*, %struct.regmap** %6, align 8
  %51 = bitcast %struct.regmap* %50 to %struct.rtc_device*
  %52 = load i32, i32* @DS1347_CONTROL_REG, align 4
  %53 = call i32 @regmap_read(%struct.rtc_device* %51, i32 %52, i32* %7)
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, -129
  store i32 %55, i32* %7, align 4
  %56 = load %struct.regmap*, %struct.regmap** %6, align 8
  %57 = bitcast %struct.regmap* %56 to %struct.rtc_device*
  %58 = load i32, i32* @DS1347_CONTROL_REG, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @regmap_write(%struct.rtc_device* %57, i32 %58, i32 %59)
  %61 = load %struct.regmap*, %struct.regmap** %6, align 8
  %62 = bitcast %struct.regmap* %61 to %struct.rtc_device*
  %63 = load i32, i32* @DS1347_STATUS_REG, align 4
  %64 = call i32 @regmap_read(%struct.rtc_device* %62, i32 %63, i32* %7)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 27
  store i32 %66, i32* %7, align 4
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = bitcast %struct.regmap* %67 to %struct.rtc_device*
  %69 = load i32, i32* @DS1347_STATUS_REG, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @regmap_write(%struct.rtc_device* %68, i32 %69, i32 %70)
  %72 = load %struct.regmap*, %struct.regmap** %6, align 8
  %73 = bitcast %struct.regmap* %72 to %struct.rtc_device*
  %74 = load i32, i32* @DS1347_CONTROL_REG, align 4
  %75 = call i32 @regmap_read(%struct.rtc_device* %73, i32 %74, i32* %7)
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 1
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.regmap*, %struct.regmap** %6, align 8
  %81 = bitcast %struct.regmap* %80 to %struct.rtc_device*
  %82 = load i32, i32* @DS1347_STATUS_REG, align 4
  %83 = call i32 @regmap_read(%struct.rtc_device* %81, i32 %82, i32* %7)
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 1
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_info(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 1
  %90 = load i32, i32* @THIS_MODULE, align 4
  %91 = call %struct.rtc_device* @devm_rtc_device_register(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @ds1347_rtc_ops, i32 %90)
  store %struct.rtc_device* %91, %struct.rtc_device** %4, align 8
  %92 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %93 = call i64 @IS_ERR(%struct.rtc_device* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %49
  %96 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %97 = call i32 @PTR_ERR(%struct.rtc_device* %96)
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %95, %47, %29
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @memset(%struct.regmap_config*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.rtc_device* @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rtc_device*) #1

declare dso_local i32 @regmap_read(%struct.rtc_device*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.rtc_device*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
