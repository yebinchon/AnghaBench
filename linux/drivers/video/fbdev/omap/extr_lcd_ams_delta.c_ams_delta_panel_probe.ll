; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_ams_delta.c_ams_delta_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_ams_delta.c_ams_delta_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"vblen\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@gpiod_vblen = common dso_local global %struct.lcd_device* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"VBLEN GPIO request failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ndisp\00", align 1
@gpiod_ndisp = common dso_local global %struct.lcd_device* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"NDISP GPIO request failed (%d)\0A\00", align 1
@AMS_DELTA_DEFAULT_CONTRAST = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@ams_delta_panel = common dso_local global i32 0, align 4
@AMS_DELTA_MAX_CONTRAST = common dso_local global i32 0, align 4
@ams_delta_lcd_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ams_delta_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_panel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lcd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.lcd_device* null, %struct.lcd_device** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %9 = call %struct.lcd_device* @devm_gpiod_get(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.lcd_device* %9, %struct.lcd_device** @gpiod_vblen, align 8
  %10 = load %struct.lcd_device*, %struct.lcd_device** @gpiod_vblen, align 8
  %11 = call i64 @IS_ERR(%struct.lcd_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.lcd_device*, %struct.lcd_device** @gpiod_vblen, align 8
  %15 = call i32 @PTR_ERR(%struct.lcd_device* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %25 = call %struct.lcd_device* @devm_gpiod_get(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  store %struct.lcd_device* %25, %struct.lcd_device** @gpiod_ndisp, align 8
  %26 = load %struct.lcd_device*, %struct.lcd_device** @gpiod_ndisp, align 8
  %27 = call i64 @IS_ERR(%struct.lcd_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.lcd_device*, %struct.lcd_device** @gpiod_ndisp, align 8
  %31 = call i32 @PTR_ERR(%struct.lcd_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %21
  %38 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %39 = load i32, i32* @AMS_DELTA_DEFAULT_CONTRAST, align 4
  %40 = call i32 @ams_delta_lcd_set_contrast(%struct.lcd_device* %38, i32 %39)
  %41 = load %struct.lcd_device*, %struct.lcd_device** %4, align 8
  %42 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %43 = call i32 @ams_delta_lcd_set_power(%struct.lcd_device* %41, i32 %42)
  %44 = call i32 @omapfb_register_panel(i32* @ams_delta_panel)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %29, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.lcd_device* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ams_delta_lcd_set_contrast(%struct.lcd_device*, i32) #1

declare dso_local i32 @ams_delta_lcd_set_power(%struct.lcd_device*, i32) #1

declare dso_local i32 @omapfb_register_panel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
