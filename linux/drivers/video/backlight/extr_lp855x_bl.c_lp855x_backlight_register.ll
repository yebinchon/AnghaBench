; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_backlight_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_backlight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp855x = type { %struct.backlight_device*, i32, %struct.lp855x_platform_data* }
%struct.backlight_device = type { i32 }
%struct.lp855x_platform_data = type { i64, i32 }
%struct.backlight_properties = type { i64, i64, i32 }

@DEFAULT_BL_NAME = common dso_local global i8* null, align 8
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i64 0, align 8
@lp855x_bl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp855x*)* @lp855x_backlight_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp855x_backlight_register(%struct.lp855x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp855x*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.backlight_properties, align 8
  %6 = alloca %struct.lp855x_platform_data*, align 8
  %7 = alloca i8*, align 8
  store %struct.lp855x* %0, %struct.lp855x** %3, align 8
  %8 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %9 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %8, i32 0, i32 2
  %10 = load %struct.lp855x_platform_data*, %struct.lp855x_platform_data** %9, align 8
  store %struct.lp855x_platform_data* %10, %struct.lp855x_platform_data** %6, align 8
  %11 = load %struct.lp855x_platform_data*, %struct.lp855x_platform_data** %6, align 8
  %12 = getelementptr inbounds %struct.lp855x_platform_data, %struct.lp855x_platform_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = sext i32 %13 to i64
  %17 = inttoptr i64 %16 to i8*
  br label %20

18:                                               ; preds = %1
  %19 = load i8*, i8** @DEFAULT_BL_NAME, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i8* [ %17, %15 ], [ %19, %18 ]
  store i8* %21, i8** %7, align 8
  %22 = call i32 @memset(%struct.backlight_properties* %5, i32 0, i32 24)
  %23 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %24 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* @MAX_BRIGHTNESS, align 8
  %26 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.lp855x_platform_data*, %struct.lp855x_platform_data** %6, align 8
  %28 = getelementptr inbounds %struct.lp855x_platform_data, %struct.lp855x_platform_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.lp855x_platform_data*, %struct.lp855x_platform_data** %6, align 8
  %37 = getelementptr inbounds %struct.lp855x_platform_data, %struct.lp855x_platform_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %20
  %39 = load %struct.lp855x_platform_data*, %struct.lp855x_platform_data** %6, align 8
  %40 = getelementptr inbounds %struct.lp855x_platform_data, %struct.lp855x_platform_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %5, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %44 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %48 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %51 = call %struct.backlight_device* @devm_backlight_device_register(i32 %45, i8* %46, i32 %49, %struct.lp855x* %50, i32* @lp855x_bl_ops, %struct.backlight_properties* %5)
  store %struct.backlight_device* %51, %struct.backlight_device** %4, align 8
  %52 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %53 = call i64 @IS_ERR(%struct.backlight_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %57 = call i32 @PTR_ERR(%struct.backlight_device* %56)
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %38
  %59 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %60 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %61 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %60, i32 0, i32 0
  store %struct.backlight_device* %59, %struct.backlight_device** %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32, i8*, i32, %struct.lp855x*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
