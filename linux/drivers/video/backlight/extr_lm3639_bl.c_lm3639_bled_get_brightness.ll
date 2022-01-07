; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_bled_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_bled_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lm3639_chip_data = type { i32, i32, %struct.lm3639_platform_data* }
%struct.lm3639_platform_data = type { i32 (...)*, i64 }

@.str = private unnamed_addr constant [35 x i8] c"No pwm control func. in plat-data\0A\00", align 1
@REG_BL_CONF_1 = common dso_local global i32 0, align 4
@REG_BL_CONF_4 = common dso_local global i32 0, align 4
@REG_BL_CONF_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"i2c failed to access register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lm3639_bled_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3639_bled_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm3639_chip_data*, align 8
  %7 = alloca %struct.lm3639_platform_data*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.lm3639_chip_data* @bl_get_data(%struct.backlight_device* %8)
  store %struct.lm3639_chip_data* %9, %struct.lm3639_chip_data** %6, align 8
  %10 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %11 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %10, i32 0, i32 2
  %12 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %11, align 8
  store %struct.lm3639_platform_data* %12, %struct.lm3639_platform_data** %7, align 8
  %13 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %14 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %19 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = icmp ne i32 (...)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %24 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %23, i32 0, i32 0
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = call i32 (...) %25()
  %27 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %28 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %35

30:                                               ; preds = %17
  %31 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %32 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %37 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %2, align 4
  br label %87

40:                                               ; preds = %1
  %41 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %42 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @REG_BL_CONF_1, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %5)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %78

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %55 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @REG_BL_CONF_4, align 4
  %58 = call i32 @regmap_read(i32 %56, i32 %57, i32* %5)
  store i32 %58, i32* %4, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %61 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @REG_BL_CONF_3, align 4
  %64 = call i32 @regmap_read(i32 %62, i32 %63, i32* %5)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %72 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %75 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %2, align 4
  br label %87

78:                                               ; preds = %68, %48
  %79 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %80 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %84 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %78, %69, %35
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.lm3639_chip_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
