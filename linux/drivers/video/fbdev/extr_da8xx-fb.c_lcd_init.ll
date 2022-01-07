; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32 }
%struct.lcd_ctrl_config = type { i32, i32, i32, i32, i32 }
%struct.fb_videomode = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"unable to configure clock\0A\00", align 1
@FB_SYNC_CLK_INVERT = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@LCD_INVERT_PIXEL_CLOCK = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da8xx_fb_par*, %struct.lcd_ctrl_config*, %struct.fb_videomode*)* @lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_init(%struct.da8xx_fb_par* %0, %struct.lcd_ctrl_config* %1, %struct.fb_videomode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.da8xx_fb_par*, align 8
  %6 = alloca %struct.lcd_ctrl_config*, align 8
  %7 = alloca %struct.fb_videomode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.da8xx_fb_par* %0, %struct.da8xx_fb_par** %5, align 8
  store %struct.lcd_ctrl_config* %1, %struct.lcd_ctrl_config** %6, align 8
  store %struct.fb_videomode* %2, %struct.fb_videomode** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %11 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %12 = call i32 @da8xx_fb_calc_config_clk_divider(%struct.da8xx_fb_par* %10, %struct.fb_videomode* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %17 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %120

21:                                               ; preds = %3
  %22 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %23 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FB_SYNC_CLK_INVERT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %30 = call i32 @lcdc_read(i32 %29)
  %31 = load i32, i32* @LCD_INVERT_PIXEL_CLOCK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %34 = call i32 @lcdc_write(i32 %32, i32 %33)
  br label %43

35:                                               ; preds = %21
  %36 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %37 = call i32 @lcdc_read(i32 %36)
  %38 = load i32, i32* @LCD_INVERT_PIXEL_CLOCK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %42 = call i32 @lcdc_write(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %45 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %48 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lcd_cfg_dma(i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %120

55:                                               ; preds = %43
  %56 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %60 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %63 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @lcd_cfg_vertical_sync(i32 %58, i32 %61, i32 %64)
  %66 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %67 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %70 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %73 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @lcd_cfg_horizontal_sync(i32 %68, i32 %71, i32 %74)
  %76 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %78 = call i32 @lcd_cfg_display(%struct.lcd_ctrl_config* %76, %struct.fb_videomode* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %55
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %120

83:                                               ; preds = %55
  %84 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %85 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 16, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %92 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %93 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.fb_videomode*, %struct.fb_videomode** %7, align 8
  %97 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %102 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lcd_cfg_frame_buffer(%struct.da8xx_fb_par* %91, i32 %95, i32 %99, i32 %100, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %90
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %120

109:                                              ; preds = %90
  %110 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %111 = call i32 @lcdc_read(i32 %110)
  %112 = and i32 %111, -1044481
  %113 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %6, align 8
  %114 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 12
  %117 = or i32 %112, %116
  %118 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %119 = call i32 @lcdc_write(i32 %117, i32 %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %109, %107, %81, %53, %15
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @da8xx_fb_calc_config_clk_divider(%struct.da8xx_fb_par*, %struct.fb_videomode*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcd_cfg_dma(i32, i32) #1

declare dso_local i32 @lcd_cfg_vertical_sync(i32, i32, i32) #1

declare dso_local i32 @lcd_cfg_horizontal_sync(i32, i32, i32) #1

declare dso_local i32 @lcd_cfg_display(%struct.lcd_ctrl_config*, %struct.fb_videomode*) #1

declare dso_local i32 @lcd_cfg_frame_buffer(%struct.da8xx_fb_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
