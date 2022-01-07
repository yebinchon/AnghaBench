; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_ctrl_config = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.fb_videomode = type { i32 }

@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_TFT_MODE = common dso_local global i32 0, align 4
@LCD_MONO_8BIT_MODE = common dso_local global i32 0, align 4
@LCD_MONOCHROME_MODE = common dso_local global i32 0, align 4
@LCD_TFT_ALT_ENABLE = common dso_local global i32 0, align 4
@LCD_STN_565_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_1 = common dso_local global i64 0, align 8
@LCD_V1_UNDERFLOW_INT_ENA = common dso_local global i32 0, align 4
@LCD_INT_ENABLE_SET_REG = common dso_local global i32 0, align 4
@LCD_V2_UNDERFLOW_INT_ENA = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@LCD_SYNC_CTRL = common dso_local global i32 0, align 4
@LCD_SYNC_EDGE = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@LCD_INVERT_LINE_CLOCK = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@LCD_INVERT_FRAME_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_ctrl_config*, %struct.fb_videomode*)* @lcd_cfg_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_cfg_display(%struct.lcd_ctrl_config* %0, %struct.fb_videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcd_ctrl_config*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lcd_ctrl_config* %0, %struct.lcd_ctrl_config** %4, align 8
  store %struct.fb_videomode* %1, %struct.fb_videomode** %5, align 8
  %8 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %9 = call i32 @lcdc_read(i32 %8)
  %10 = load i32, i32* @LCD_TFT_MODE, align 4
  %11 = load i32, i32* @LCD_MONO_8BIT_MODE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @LCD_MONOCHROME_MODE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %9, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %18 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %68 [
    i32 128, label %20
    i32 130, label %33
    i32 129, label %46
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @LCD_MONOCHROME_MODE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %25 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @LCD_MONO_8BIT_MODE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %20
  br label %71

33:                                               ; preds = %2
  %34 = load i32, i32* @LCD_TFT_MODE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %38 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @LCD_TFT_ALT_ENABLE, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %33
  br label %71

46:                                               ; preds = %2
  %47 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %48 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %51 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lcd_cfg_ac_bias(i32 %49, i32 %52)
  %54 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %55 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %60 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @LCD_STN_565_ENABLE, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %58, %46
  br label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %145

71:                                               ; preds = %67, %45, %32
  %72 = load i64, i64* @lcd_revision, align 8
  %73 = load i64, i64* @LCD_VERSION_1, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @LCD_V1_UNDERFLOW_INT_ENA, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %87

79:                                               ; preds = %71
  %80 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %81 = call i32 @lcdc_read(i32 %80)
  %82 = load i32, i32* @LCD_V2_UNDERFLOW_INT_ENA, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %86 = call i32 @lcdc_write(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %75
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %90 = call i32 @lcdc_write(i32 %88, i32 %89)
  %91 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %92 = call i32 @lcdc_read(i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @LCD_SYNC_CTRL, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.lcd_ctrl_config*, %struct.lcd_ctrl_config** %4, align 8
  %97 = getelementptr inbounds %struct.lcd_ctrl_config, %struct.lcd_ctrl_config* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = load i32, i32* @LCD_SYNC_EDGE, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %109

104:                                              ; preds = %87
  %105 = load i32, i32* @LCD_SYNC_EDGE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %111 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @LCD_INVERT_LINE_CLOCK, align 4
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %125

120:                                              ; preds = %109
  %121 = load i32, i32* @LCD_INVERT_LINE_CLOCK, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %127 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i32, i32* @LCD_INVERT_FRAME_CLOCK, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %141

136:                                              ; preds = %125
  %137 = load i32, i32* @LCD_INVERT_FRAME_CLOCK, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %136, %132
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %144 = call i32 @lcdc_write(i32 %142, i32 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %68
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcd_cfg_ac_bias(i32, i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
