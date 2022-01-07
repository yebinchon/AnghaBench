; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_get_videomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_get_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.platform_device = type { i32 }
%struct.da8xx_lcdc_platform_data = type { i32 }

@known_lcd_panels = common dso_local global %struct.fb_videomode* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"no panel found\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"found %s panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (%struct.platform_device*)* @da8xx_fb_get_videomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @da8xx_fb_get_videomode(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.fb_videomode*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da8xx_lcdc_platform_data*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.da8xx_lcdc_platform_data* @dev_get_platdata(i32* %8)
  store %struct.da8xx_lcdc_platform_data* %9, %struct.da8xx_lcdc_platform_data** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.fb_videomode*, %struct.fb_videomode** @known_lcd_panels, align 8
  store %struct.fb_videomode* %10, %struct.fb_videomode** %5, align 8
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.fb_videomode*, %struct.fb_videomode** @known_lcd_panels, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.da8xx_lcdc_platform_data*, %struct.da8xx_lcdc_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.da8xx_lcdc_platform_data, %struct.da8xx_lcdc_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %21 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %32

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %31 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %30, i32 1
  store %struct.fb_videomode* %31, %struct.fb_videomode** %5, align 8
  br label %11

32:                                               ; preds = %25, %11
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.fb_videomode*, %struct.fb_videomode** @known_lcd_panels, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.fb_videomode* null, %struct.fb_videomode** %2, align 8
  br label %49

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %45 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  store %struct.fb_videomode* %48, %struct.fb_videomode** %2, align 8
  br label %49

49:                                               ; preds = %41, %37
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  ret %struct.fb_videomode* %50
}

declare dso_local %struct.da8xx_lcdc_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fb_videomode*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
