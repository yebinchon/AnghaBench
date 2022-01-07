; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_sky81452-backlight.c_sky81452_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.sky81452_bl_platform_data = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.backlight_device = type { i8*, %struct.TYPE_2__, i32 }
%struct.backlight_properties = type { i32 }

@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sky81452-en\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to request GPIO. err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to initialize. err=%d\0A\00", align 1
@SKY81452_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@SKY81452_DEFAULT_NAME = common dso_local global i8* null, align 8
@sky81452_bl_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to register. err=%ld\0A\00", align 1
@sky81452_bl_attr_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to create attribute. err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sky81452_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky81452_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.sky81452_bl_platform_data*, align 8
  %7 = alloca %struct.backlight_device*, align 8
  %8 = alloca %struct.backlight_properties, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.regmap* @dev_get_drvdata(i32 %15)
  store %struct.regmap* %16, %struct.regmap** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.sky81452_bl_platform_data* @dev_get_platdata(%struct.device* %17)
  store %struct.sky81452_bl_platform_data* %18, %struct.sky81452_bl_platform_data** %6, align 8
  %19 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %20 = icmp ne %struct.sky81452_bl_platform_data* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call %struct.sky81452_bl_platform_data* @sky81452_bl_parse_dt(%struct.device* %22)
  store %struct.sky81452_bl_platform_data* %23, %struct.sky81452_bl_platform_data** %6, align 8
  %24 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %25 = call i64 @IS_ERR(%struct.sky81452_bl_platform_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.sky81452_bl_platform_data* %28)
  store i32 %29, i32* %2, align 4
  br label %116

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %33 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @gpio_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %40 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %43 = call i32 @devm_gpio_request_one(%struct.device* %38, i32 %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %2, align 4
  br label %116

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.regmap*, %struct.regmap** %5, align 8
  %54 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %55 = call i32 @sky81452_bl_init_device(%struct.regmap* %53, %struct.sky81452_bl_platform_data* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %116

63:                                               ; preds = %52
  %64 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 4)
  %65 = load i32, i32* @SKY81452_MAX_BRIGHTNESS, align 4
  %66 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %68 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.sky81452_bl_platform_data*, %struct.sky81452_bl_platform_data** %6, align 8
  %73 = getelementptr inbounds %struct.sky81452_bl_platform_data, %struct.sky81452_bl_platform_data* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  br label %77

75:                                               ; preds = %63
  %76 = load i8*, i8** @SKY81452_DEFAULT_NAME, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i8* [ %74, %71 ], [ %76, %75 ]
  store i8* %78, i8** %9, align 8
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.regmap*, %struct.regmap** %5, align 8
  %83 = call %struct.sky81452_bl_platform_data* @devm_backlight_device_register(%struct.device* %79, i8* %80, %struct.device* %81, %struct.regmap* %82, i32* @sky81452_bl_ops, %struct.backlight_properties* %8)
  %84 = bitcast %struct.sky81452_bl_platform_data* %83 to %struct.backlight_device*
  store %struct.backlight_device* %84, %struct.backlight_device** %7, align 8
  %85 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %86 = bitcast %struct.backlight_device* %85 to %struct.sky81452_bl_platform_data*
  %87 = call i64 @IS_ERR(%struct.sky81452_bl_platform_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %92 = bitcast %struct.backlight_device* %91 to %struct.sky81452_bl_platform_data*
  %93 = call i32 @PTR_ERR(%struct.sky81452_bl_platform_data* %92)
  %94 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %96 = bitcast %struct.backlight_device* %95 to %struct.sky81452_bl_platform_data*
  %97 = call i32 @PTR_ERR(%struct.sky81452_bl_platform_data* %96)
  store i32 %97, i32* %2, align 4
  br label %116

98:                                               ; preds = %77
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %101 = bitcast %struct.backlight_device* %100 to %struct.sky81452_bl_platform_data*
  %102 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.sky81452_bl_platform_data* %101)
  %103 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %104 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @sysfs_create_group(i32* %105, i32* @sky81452_bl_attr_group)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %2, align 4
  br label %116

114:                                              ; preds = %98
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %109, %89, %58, %46, %27
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.regmap* @dev_get_drvdata(i32) #1

declare dso_local %struct.sky81452_bl_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.sky81452_bl_platform_data* @sky81452_bl_parse_dt(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.sky81452_bl_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.sky81452_bl_platform_data*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sky81452_bl_init_device(%struct.regmap*, %struct.sky81452_bl_platform_data*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.sky81452_bl_platform_data* @devm_backlight_device_register(%struct.device*, i8*, %struct.device*, %struct.regmap*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sky81452_bl_platform_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
