; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx6110.c_rx6110_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx6110.c_rx6110_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.rx6110_data = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"SPI settings: bits_per_word: %d, max_speed_hz: %d, mode: %xh\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"driving device in an unsupported mode\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_spi_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"regmap init failed for rtc rx6110\0A\00", align 1
@RX6110_DRIVER_NAME = common dso_local global i32 0, align 4
@rx6110_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @rx6110_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx6110_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rx6110_data*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %30, label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 2000000
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SPI_CS_HIGH, align 4
  %25 = load i32, i32* @SPI_CPOL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SPI_CPHA, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %20, %15, %10
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 3
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_warn(i32* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 3
  %45 = call i32 (i32*, i8*, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %30, %20
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 3
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.rx6110_data* @devm_kzalloc(i32* %48, i32 16, i32 %49)
  store %struct.rx6110_data* %50, %struct.rx6110_data** %4, align 8
  %51 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %52 = icmp ne %struct.rx6110_data* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %107

56:                                               ; preds = %46
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = call %struct.TYPE_5__* @devm_regmap_init_spi(%struct.spi_device* %57, i32* @regmap_spi_config)
  %59 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %60 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %59, i32 0, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %62 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_5__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 3
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %71 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @PTR_ERR(%struct.TYPE_5__* %72)
  store i32 %73, i32* %2, align 4
  br label %107

74:                                               ; preds = %56
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %77 = call i32 @spi_set_drvdata(%struct.spi_device* %75, %struct.rx6110_data* %76)
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 3
  %80 = load i32, i32* @RX6110_DRIVER_NAME, align 4
  %81 = load i32, i32* @THIS_MODULE, align 4
  %82 = call %struct.TYPE_5__* @devm_rtc_device_register(i32* %79, i32 %80, i32* @rx6110_rtc_ops, i32 %81)
  %83 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %84 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %83, i32 0, i32 0
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %84, align 8
  %85 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %86 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i64 @IS_ERR(%struct.TYPE_5__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %74
  %91 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %92 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = call i32 @PTR_ERR(%struct.TYPE_5__* %93)
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %74
  %96 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %97 = call i32 @rx6110_init(%struct.rx6110_data* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %95
  %103 = load %struct.rx6110_data*, %struct.rx6110_data** %4, align 8
  %104 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %100, %90, %66, %53
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.rx6110_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rx6110_data*) #1

declare dso_local %struct.TYPE_5__* @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i32 @rx6110_init(%struct.rx6110_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
