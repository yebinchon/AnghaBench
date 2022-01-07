; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_backlight_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp8788_bl.c_lp8788_backlight_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_bl_config = type { i32, i32, i32, i32, i32, i32 }
%struct.lp8788_bl = type { i32, %struct.TYPE_2__*, %struct.lp8788_backlight_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.lp8788_backlight_platform_data = type { i32, i32, i32, i32, i32, i32 }

@default_bl_config = common dso_local global %struct.lp8788_bl_config zeroinitializer, align 4
@LP8788_BL_RAMP_RISE_SHIFT = common dso_local global i32 0, align 4
@LP8788_BL_RAMP = common dso_local global i32 0, align 4
@LP8788_BL_FULLSCALE_SHIFT = common dso_local global i32 0, align 4
@LP8788_BL_DIM_MODE_SHIFT = common dso_local global i32 0, align 4
@LP8788_BL_EN = common dso_local global i32 0, align 4
@LP8788_BL_PWM_INPUT_EN = common dso_local global i32 0, align 4
@LP8788_BL_PWM_POLARITY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LP8788_BL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8788_bl*)* @lp8788_backlight_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_backlight_configure(%struct.lp8788_bl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp8788_bl*, align 8
  %4 = alloca %struct.lp8788_backlight_platform_data*, align 8
  %5 = alloca %struct.lp8788_bl_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lp8788_bl* %0, %struct.lp8788_bl** %3, align 8
  %8 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %9 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %8, i32 0, i32 2
  %10 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %9, align 8
  store %struct.lp8788_backlight_platform_data* %10, %struct.lp8788_backlight_platform_data** %4, align 8
  store %struct.lp8788_bl_config* @default_bl_config, %struct.lp8788_bl_config** %5, align 8
  %11 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %12 = icmp ne %struct.lp8788_backlight_platform_data* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.lp8788_backlight_platform_data, %struct.lp8788_backlight_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %18 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.lp8788_backlight_platform_data, %struct.lp8788_backlight_platform_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %23 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.lp8788_backlight_platform_data, %struct.lp8788_backlight_platform_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %28 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.lp8788_backlight_platform_data, %struct.lp8788_backlight_platform_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %33 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.lp8788_backlight_platform_data, %struct.lp8788_backlight_platform_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %38 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.lp8788_backlight_platform_data*, %struct.lp8788_backlight_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.lp8788_backlight_platform_data, %struct.lp8788_backlight_platform_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %43 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %13, %1
  %45 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %46 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LP8788_BL_RAMP_RISE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %51 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %55 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* @LP8788_BL_RAMP, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @lp8788_write_byte(%struct.TYPE_2__* %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %119

64:                                               ; preds = %44
  %65 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %66 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LP8788_BL_FULLSCALE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %71 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LP8788_BL_DIM_MODE_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %69, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %77 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %95 [
    i32 128, label %79
    i32 130, label %83
    i32 129, label %83
  ]

79:                                               ; preds = %64
  %80 = load i32, i32* @LP8788_BL_EN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %107

83:                                               ; preds = %64, %64
  %84 = load i32, i32* @LP8788_BL_EN, align 4
  %85 = load i32, i32* @LP8788_BL_PWM_INPUT_EN, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %88 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LP8788_BL_PWM_POLARITY_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %86, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %107

95:                                               ; preds = %64
  %96 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %97 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %102 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %119

107:                                              ; preds = %83, %79
  %108 = load %struct.lp8788_bl_config*, %struct.lp8788_bl_config** %5, align 8
  %109 = getelementptr inbounds %struct.lp8788_bl_config, %struct.lp8788_bl_config* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %112 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.lp8788_bl*, %struct.lp8788_bl** %3, align 8
  %114 = getelementptr inbounds %struct.lp8788_bl, %struct.lp8788_bl* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* @LP8788_BL_CONFIG, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @lp8788_write_byte(%struct.TYPE_2__* %115, i32 %116, i32 %117)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %107, %95, %62
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @lp8788_write_byte(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
