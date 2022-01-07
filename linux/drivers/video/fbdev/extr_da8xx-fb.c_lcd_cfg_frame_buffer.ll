; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_frame_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_frame_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32 }

@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_0_REG = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_1_REG = common dso_local global i32 0, align 4
@LCD_VERSION_2 = common dso_local global i64 0, align 8
@LCD_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_RASTER_ORDER = common dso_local global i32 0, align 4
@LCD_V2_TFT_24BPP_MODE = common dso_local global i32 0, align 4
@LCD_V2_TFT_24BPP_UNPACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da8xx_fb_par*, i32, i32, i32, i32)* @lcd_cfg_frame_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_cfg_frame_buffer(%struct.da8xx_fb_par* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.da8xx_fb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.da8xx_fb_par* %0, %struct.da8xx_fb_par** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp sgt i32 %13, 16
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i64, i64* @lcd_revision, align 8
  %17 = load i64, i64* @LCD_VERSION_1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %126

22:                                               ; preds = %15, %5
  %23 = load i64, i64* @lcd_revision, align 8
  %24 = load i64, i64* @LCD_VERSION_1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 1008
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 2032
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @LCD_RASTER_TIMING_0_REG, align 4
  %34 = call i32 @lcdc_read(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, -1024
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* @lcd_revision, align 8
  %38 = load i64, i64* @LCD_VERSION_1, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 4
  %43 = sub nsw i32 %42, 1
  %44 = shl i32 %43, 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %60

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 63
  %53 = shl i32 %52, 4
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 64
  %56 = ashr i32 %55, 3
  %57 = or i32 %53, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %47, %40
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @LCD_RASTER_TIMING_0_REG, align 4
  %63 = call i32 @lcdc_write(i32 %61, i32 %62)
  %64 = load i32, i32* @LCD_RASTER_TIMING_1_REG, align 4
  %65 = call i32 @lcdc_read(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %67, 1023
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, -1024
  %71 = or i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @LCD_RASTER_TIMING_1_REG, align 4
  %74 = call i32 @lcdc_write(i32 %72, i32 %73)
  %75 = load i64, i64* @lcd_revision, align 8
  %76 = load i64, i64* @LCD_VERSION_2, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %60
  %79 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %80 = call i32 @lcdc_read(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %82, 1024
  %84 = shl i32 %83, 16
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %89 = call i32 @lcdc_write(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %60
  %91 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %92 = call i32 @lcdc_read(i32 %91)
  %93 = and i32 %92, -257
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @LCD_RASTER_ORDER, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %102 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %101, i32 0, i32 0
  store i32 32, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  switch i32 %103, label %119 [
    i32 1, label %104
    i32 2, label %104
    i32 4, label %104
    i32 16, label %104
    i32 24, label %105
    i32 32, label %109
    i32 8, label %116
  ]

104:                                              ; preds = %100, %100, %100, %100
  br label %122

105:                                              ; preds = %100
  %106 = load i32, i32* @LCD_V2_TFT_24BPP_MODE, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %122

109:                                              ; preds = %100
  %110 = load i32, i32* @LCD_V2_TFT_24BPP_MODE, align 4
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @LCD_V2_TFT_24BPP_UNPACK, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %122

116:                                              ; preds = %100
  %117 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %7, align 8
  %118 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %117, i32 0, i32 0
  store i32 512, i32* %118, align 4
  br label %122

119:                                              ; preds = %100
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %126

122:                                              ; preds = %116, %109, %105, %104
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %125 = call i32 @lcdc_write(i32 %123, i32 %124)
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %119, %19
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
