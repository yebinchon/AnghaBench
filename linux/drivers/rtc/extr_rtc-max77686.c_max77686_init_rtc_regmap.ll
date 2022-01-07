; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_init_rtc_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_init_rtc_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77686_rtc_info = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.i2c_client = type { i32, i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to get rtc regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAX77686_INVALID_I2C_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", align 1
@max77686_rtc_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate RTC regmap: %d\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to add RTC irq chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77686_rtc_info*)* @max77686_init_rtc_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_init_rtc_regmap(%struct.max77686_rtc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77686_rtc_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  store %struct.max77686_rtc_info* %0, %struct.max77686_rtc_info** %3, align 8
  %8 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %9 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %16 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %23 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call %struct.platform_device* @to_platform_device(%struct.TYPE_6__* %24)
  store %struct.platform_device* %25, %struct.platform_device** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %27 = call i32 @platform_get_irq(%struct.platform_device* %26, i32 0)
  %28 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %29 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %31 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %36 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %2, align 4
  br label %158

38:                                               ; preds = %21
  br label %45

39:                                               ; preds = %1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %44 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %38
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i64 @dev_get_regmap(%struct.device* %46, i32* null)
  %48 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %49 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  %50 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %51 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %45
  %55 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %56 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %158

61:                                               ; preds = %45
  %62 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %63 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MAX77686_INVALID_I2C_ADDR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %71 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %74 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  br label %128

75:                                               ; preds = %61
  %76 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %77 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %83 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @devm_i2c_new_dummy_device(%struct.TYPE_6__* %78, i32 %81, i32 %86)
  %88 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %89 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %91 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @IS_ERR(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %75
  %96 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %97 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %101 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @PTR_ERR(i64 %102)
  store i32 %103, i32* %2, align 4
  br label %158

104:                                              ; preds = %75
  %105 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %106 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @devm_regmap_init_i2c(i64 %107, i32* @max77686_rtc_regmap_config)
  %109 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %110 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %112 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @IS_ERR(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %104
  %117 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %118 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @PTR_ERR(i64 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %122 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %158

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127, %69
  %129 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %130 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %133 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %136 = load i32, i32* @IRQF_ONESHOT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @IRQF_SHARED, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %141 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %140, i32 0, i32 3
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %146 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %145, i32 0, i32 2
  %147 = call i32 @regmap_add_irq_chip(i64 %131, i32 %134, i32 %139, i32 0, i32 %144, i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %128
  %151 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %3, align 8
  %152 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %158

157:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %150, %116, %95, %54, %34
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.TYPE_6__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i64 @devm_i2c_new_dummy_device(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_regmap_init_i2c(i64, i32*) #1

declare dso_local i32 @regmap_add_irq_chip(i64, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
