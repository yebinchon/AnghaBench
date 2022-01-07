; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2123.c_pcf2123_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32, i64, i32 }
%struct.rtc_device = type { i32, i32, i32, i32, i32* }
%struct.rtc_time = type { i32 }
%struct.pcf2123_data = type { %struct.rtc_device*, %struct.rtc_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcf2123_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"regmap init failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"chip not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"spiclk %u KHz.\0A\00", align 1
@pcf2123_rtc_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@pcf2123_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"could not request irq.\0A\00", align 1
@pcf2123_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @pcf2123_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf2123_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.rtc_time, align 4
  %6 = alloca %struct.pcf2123_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pcf2123_data* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.pcf2123_data* %11, %struct.pcf2123_data** %6, align 8
  %12 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %13 = icmp ne %struct.pcf2123_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %128

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %21 = call i32 @dev_set_drvdata(i32* %19, %struct.pcf2123_data* %20)
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = call %struct.rtc_device* @devm_regmap_init_spi(%struct.spi_device* %22, i32* @pcf2123_regmap_config)
  %24 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %25 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %24, i32 0, i32 1
  store %struct.rtc_device* %23, %struct.rtc_device** %25, align 8
  %26 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %27 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %26, i32 0, i32 1
  %28 = load %struct.rtc_device*, %struct.rtc_device** %27, align 8
  %29 = call i64 @IS_ERR(%struct.rtc_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 2
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %36 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %35, i32 0, i32 1
  %37 = load %struct.rtc_device*, %struct.rtc_device** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.rtc_device* %37)
  store i32 %38, i32* %2, align 4
  br label %128

39:                                               ; preds = %17
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 2
  %42 = call i32 @pcf2123_rtc_read_time(i32* %41, %struct.rtc_time* %5)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 2
  %48 = call i32 @pcf2123_reset(i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 2
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %128

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 2
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 500
  %64 = sdiv i32 %63, 1000
  %65 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 2
  %68 = call %struct.rtc_device* @devm_rtc_allocate_device(i32* %67)
  store %struct.rtc_device* %68, %struct.rtc_device** %4, align 8
  %69 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %70 = call i64 @IS_ERR(%struct.rtc_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %74 = call i32 @PTR_ERR(%struct.rtc_device* %73)
  store i32 %74, i32* %2, align 4
  br label %128

75:                                               ; preds = %57
  %76 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %77 = load %struct.pcf2123_data*, %struct.pcf2123_data** %6, align 8
  %78 = getelementptr inbounds %struct.pcf2123_data, %struct.pcf2123_data* %77, i32 0, i32 0
  store %struct.rtc_device* %76, %struct.rtc_device** %78, align 8
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %75
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 2
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @pcf2123_rtc_irq, align 4
  %90 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %91 = load i32, i32* @IRQF_ONESHOT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcf2123_driver, i32 0, i32 0, i32 0), align 4
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 2
  %96 = call i32 @devm_request_threaded_irq(i32* %85, i64 %88, i32* null, i32 %89, i32 %92, i32 %93, i32* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %83
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 2
  %102 = call i32 @device_init_wakeup(i32* %101, i32 1)
  br label %107

103:                                              ; preds = %83
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 2
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %75
  %109 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %110 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %112 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %111, i32 0, i32 4
  store i32* @pcf2123_rtc_ops, i32** %112, align 8
  %113 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %114 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %115 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %117 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %118 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %120 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %122 = call i32 @rtc_register_device(%struct.rtc_device* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %108
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %128

127:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %125, %72, %51, %31, %14
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.pcf2123_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pcf2123_data*) #1

declare dso_local %struct.rtc_device* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @pcf2123_rtc_read_time(i32*, %struct.rtc_time*) #1

declare dso_local i32 @pcf2123_reset(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
