; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.lp8788 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lp8788_bl = type { i32, i32, %struct.lp8788* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"backlight config err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"register backlight err: %d\0A\00", align 1
@lp8788_attr_group = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"register sysfs err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca %struct.lp8788_bl*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.lp8788* @dev_get_drvdata(i32 %10)
  store %struct.lp8788* %11, %struct.lp8788** %4, align 8
  %12 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %13 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.lp8788_bl* @devm_kzalloc(i32 %14, i32 16, i32 %15)
  store %struct.lp8788_bl* %16, %struct.lp8788_bl** %5, align 8
  %17 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %18 = icmp ne %struct.lp8788_bl* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %24 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %25 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %24, i32 0, i32 2
  store %struct.lp8788* %23, %struct.lp8788** %25, align 8
  %26 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %27 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %32 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %37 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.lp8788_bl* %40)
  %42 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %43 = call i32 @lp8788_backlight_configure(%struct.lp8788_bl* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %48 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %84

52:                                               ; preds = %38
  %53 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %54 = call i32 @lp8788_backlight_register(%struct.lp8788_bl* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %59 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %84

63:                                               ; preds = %52
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @sysfs_create_group(i32* %66, i32* @lp8788_attr_group)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %72 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %81

76:                                               ; preds = %63
  %77 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %78 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @backlight_update_status(i32 %79)
  store i32 0, i32* %2, align 4
  br label %86

81:                                               ; preds = %70
  %82 = load %struct.lp8788_bl*, %struct.lp8788_bl** %5, align 8
  %83 = call i32 @lp8788_backlight_unregister(%struct.lp8788_bl* %82)
  br label %84

84:                                               ; preds = %81, %57, %46
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %76, %19
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

declare dso_local %struct.lp8788_bl* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp8788_bl*) #1

declare dso_local i32 @lp8788_backlight_configure(%struct.lp8788_bl*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lp8788_backlight_register(%struct.lp8788_bl*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @backlight_update_status(i32) #1

declare dso_local i32 @lp8788_backlight_unregister(%struct.lp8788_bl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
