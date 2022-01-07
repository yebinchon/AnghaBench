; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_config_clk_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_config_clk_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"unable to set clock rate at %u\0A\00", align 1
@LCD_RASTER_MODE = common dso_local global i32 0, align 4
@LCD_CTRL_REG = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_2 = common dso_local global i64 0, align 8
@LCD_V2_DMA_CLK_EN = common dso_local global i32 0, align 4
@LCD_V2_LIDD_CLK_EN = common dso_local global i32 0, align 4
@LCD_V2_CORE_CLK_EN = common dso_local global i32 0, align 4
@LCD_CLK_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da8xx_fb_par*, i32, i32)* @da8xx_fb_config_clk_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_fb_config_clk_divider(%struct.da8xx_fb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.da8xx_fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.da8xx_fb_par* %0, %struct.da8xx_fb_par** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %10 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %16 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @clk_set_rate(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %24 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %14
  %30 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %31 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_get_rate(i32 %32)
  %34 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %35 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %3
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @LCD_CLK_DIVISOR(i32 %37)
  %39 = load i32, i32* @LCD_RASTER_MODE, align 4
  %40 = and i32 %39, 1
  %41 = or i32 %38, %40
  %42 = load i32, i32* @LCD_CTRL_REG, align 4
  %43 = call i32 @lcdc_write(i32 %41, i32 %42)
  %44 = load i64, i64* @lcd_revision, align 8
  %45 = load i64, i64* @LCD_VERSION_2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load i32, i32* @LCD_V2_DMA_CLK_EN, align 4
  %49 = load i32, i32* @LCD_V2_LIDD_CLK_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @LCD_V2_CORE_CLK_EN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @LCD_CLK_ENABLE_REG, align 4
  %54 = call i32 @lcdc_write(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %36
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @LCD_CLK_DIVISOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
