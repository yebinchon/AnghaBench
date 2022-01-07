; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_generic_bl.c_genericbl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_generic_bl.c_genericbl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_bl_info = type { i32, i8*, i32, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"generic-bl\00", align 1
@bl_machinfo = common dso_local global %struct.generic_bl_info* null, align 8
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@genericbl_ops = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@generic_backlight_device = common dso_local global %struct.backlight_device* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Generic Backlight Driver Initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @genericbl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genericbl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.generic_bl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.generic_bl_info* @dev_get_platdata(i32* %9)
  store %struct.generic_bl_info* %10, %struct.generic_bl_info** %5, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %11 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  store %struct.generic_bl_info* %11, %struct.generic_bl_info** @bl_machinfo, align 8
  %12 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  %13 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  %18 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  %21 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  %26 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %30 = load i32, i32* @BACKLIGHT_RAW, align 4
  %31 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  %33 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call %struct.backlight_device* @devm_backlight_device_register(i32* %37, i8* %38, i32* %40, i32* null, i32* @genericbl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %41, %struct.backlight_device** %7, align 8
  %42 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %43 = call i64 @IS_ERR(%struct.backlight_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %47 = call i32 @PTR_ERR(%struct.backlight_device* %46)
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %28
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.backlight_device* %50)
  %52 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %53 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %54 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.generic_bl_info*, %struct.generic_bl_info** %5, align 8
  %57 = getelementptr inbounds %struct.generic_bl_info, %struct.generic_bl_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %60 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %63 = call i32 @backlight_update_status(%struct.backlight_device* %62)
  %64 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  store %struct.backlight_device* %64, %struct.backlight_device** @generic_backlight_device, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %48, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.generic_bl_info* @dev_get_platdata(i32*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i8*, i32*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
