; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_bl.c_tosa_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tosa_bl.c_tosa_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.tosa_bl_data = type { i32, %struct.TYPE_9__*, %struct.i2c_client* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sharpsl_param = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@COMADJ_DEFAULT = common dso_local global i32 0, align 4
@TOSA_GPIO_BL_C20MA = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to request gpio!\0A\00", align 1
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"tosa-bl\00", align 1
@bl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tosa_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bl_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.backlight_properties, align 4
  %7 = alloca %struct.tosa_bl_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tosa_bl_data* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.tosa_bl_data* %12, %struct.tosa_bl_data** %7, align 8
  %13 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %14 = icmp ne %struct.tosa_bl_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_param, i32 0, i32 0), align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @COMADJ_DEFAULT, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sharpsl_param, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %28 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* @TOSA_GPIO_BL_C20MA, align 4
  %32 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %33 = call i32 @devm_gpio_request_one(i32* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %38 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %25
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.tosa_bl_data* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %49 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %48, i32 0, i32 2
  store %struct.i2c_client* %47, %struct.i2c_client** %49, align 8
  %50 = call i32 @memset(%struct.backlight_properties* %6, i32 0, i32 8)
  %51 = load i32, i32* @BACKLIGHT_RAW, align 4
  %52 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 0
  store i32 511, i32* %53, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %59 = call %struct.TYPE_9__* @devm_backlight_device_register(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %57, %struct.tosa_bl_data* %58, i32* @bl_ops, %struct.backlight_properties* %6)
  %60 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %61 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %60, i32 0, i32 1
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %63 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i64 @IS_ERR(%struct.TYPE_9__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %43
  %68 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %69 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.TYPE_9__* %70)
  store i32 %71, i32* %8, align 4
  br label %88

72:                                               ; preds = %43
  %73 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %74 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 69, i32* %77, align 4
  %78 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %79 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %80 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  %84 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %85 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @backlight_update_status(%struct.TYPE_9__* %86)
  store i32 0, i32* %3, align 4
  br label %92

88:                                               ; preds = %67
  %89 = load %struct.tosa_bl_data*, %struct.tosa_bl_data** %7, align 8
  %90 = getelementptr inbounds %struct.tosa_bl_data, %struct.tosa_bl_data* %89, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %90, align 8
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %72, %36, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.tosa_bl_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tosa_bl_data*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_backlight_device_register(i32*, i8*, i32*, %struct.tosa_bl_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
