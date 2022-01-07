; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, i32 }
%struct.aat2870_bl_platform_data = type { i64, i64, i64 }
%struct.aat2870_bl_driver_data = type { i64, i64, i64, %struct.backlight_device*, %struct.platform_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.backlight_properties = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AAT2870_ID_BL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid device ID, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"aat2870-backlight\00", align 1
@aat2870_bl_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed allocate memory for backlight device\0A\00", align 1
@AAT2870_BL_CH_ALL = common dso_local global i64 0, align 8
@AAT2870_CURRENT_27_9 = common dso_local global i64 0, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to initialize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aat2870_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aat2870_bl_platform_data*, align 8
  %5 = alloca %struct.aat2870_bl_driver_data*, align 8
  %6 = alloca %struct.backlight_device*, align 8
  %7 = alloca %struct.backlight_properties, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = call %struct.aat2870_bl_platform_data* @dev_get_platdata(i32* %10)
  store %struct.aat2870_bl_platform_data* %11, %struct.aat2870_bl_platform_data** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %13 = icmp ne %struct.aat2870_bl_platform_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %144

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AAT2870_ID_BL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %144

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.aat2870_bl_driver_data* @devm_kzalloc(i32* %37, i32 40, i32 %38)
  store %struct.aat2870_bl_driver_data* %39, %struct.aat2870_bl_driver_data** %5, align 8
  %40 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %41 = icmp ne %struct.aat2870_bl_driver_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %144

45:                                               ; preds = %35
  %46 = call i32 @memset(%struct.backlight_properties* %7, i32 0, i32 4)
  %47 = load i32, i32* @BACKLIGHT_RAW, align 4
  %48 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 1
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %54 = call %struct.backlight_device* @devm_backlight_device_register(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %52, %struct.aat2870_bl_driver_data* %53, i32* @aat2870_bl_ops, %struct.backlight_properties* %7)
  store %struct.backlight_device* %54, %struct.backlight_device** %6, align 8
  %55 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %56 = call i64 @IS_ERR(%struct.backlight_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %63 = call i32 @PTR_ERR(%struct.backlight_device* %62)
  store i32 %63, i32* %8, align 4
  br label %144

64:                                               ; preds = %45
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %67 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %66, i32 0, i32 4
  store %struct.platform_device* %65, %struct.platform_device** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.aat2870_bl_driver_data* %69)
  %71 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %72 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %73 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %72, i32 0, i32 3
  store %struct.backlight_device* %71, %struct.backlight_device** %73, align 8
  %74 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %75 = getelementptr inbounds %struct.aat2870_bl_platform_data, %struct.aat2870_bl_platform_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %80 = getelementptr inbounds %struct.aat2870_bl_platform_data, %struct.aat2870_bl_platform_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %83 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %88

84:                                               ; preds = %64
  %85 = load i64, i64* @AAT2870_BL_CH_ALL, align 8
  %86 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %87 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %90 = getelementptr inbounds %struct.aat2870_bl_platform_data, %struct.aat2870_bl_platform_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %95 = getelementptr inbounds %struct.aat2870_bl_platform_data, %struct.aat2870_bl_platform_data* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %98 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %103

99:                                               ; preds = %88
  %100 = load i64, i64* @AAT2870_CURRENT_27_9, align 8
  %101 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %102 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %105 = getelementptr inbounds %struct.aat2870_bl_platform_data, %struct.aat2870_bl_platform_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.aat2870_bl_platform_data*, %struct.aat2870_bl_platform_data** %4, align 8
  %110 = getelementptr inbounds %struct.aat2870_bl_platform_data, %struct.aat2870_bl_platform_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %113 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %119

115:                                              ; preds = %103
  %116 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %117 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i64 255, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %5, align 8
  %121 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %123 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %124 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %127 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %132 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 8
  %134 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %135 = call i32 @aat2870_bl_update_status(%struct.backlight_device* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %119
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 1
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %146

143:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %146

144:                                              ; preds = %58, %42, %26, %14
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %143, %138
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.aat2870_bl_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.aat2870_bl_driver_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i8*, i32*, %struct.aat2870_bl_driver_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.aat2870_bl_driver_data*) #1

declare dso_local i32 @aat2870_bl_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
