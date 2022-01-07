; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32, i32, i32, i32 }

@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LOAD_DATA = common dso_local global i32 0, align 4
@DATA_ONLY = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_1 = common dso_local global i64 0, align 8
@LCD_V1_END_OF_FRAME_INT_ENA = common dso_local global i32 0, align 4
@LCD_INT_ENABLE_SET_REG = common dso_local global i32 0, align 4
@LCD_V2_END_OF_FRAME0_INT_ENA = common dso_local global i32 0, align 4
@LCD_V2_END_OF_FRAME1_INT_ENA = common dso_local global i32 0, align 4
@LCD_FRAME_DONE = common dso_local global i32 0, align 4
@LCD_SYNC_LOST = common dso_local global i32 0, align 4
@LCD_DUAL_FRAME_BUFFER_ENABLE = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_1_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG = common dso_local global i32 0, align 4
@LOAD_PALETTE = common dso_local global i32 0, align 4
@PALETTE_ONLY = common dso_local global i32 0, align 4
@LCD_V1_PL_INT_ENA = common dso_local global i32 0, align 4
@LCD_V2_PL_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.da8xx_fb_par*)* @lcd_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_blit(i32 %0, %struct.da8xx_fb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da8xx_fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.da8xx_fb_par* %1, %struct.da8xx_fb_par** %4, align 8
  %10 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %11 = call i32 @lcdc_read(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, -3145729
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %15 = call i32 @lcdc_read(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @LOAD_DATA, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %2
  %20 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %21 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %24 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @DATA_ONLY, align 4
  %27 = call i32 @LCD_PALETTE_LOAD_MODE(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* @lcd_revision, align 8
  %31 = load i64, i64* @LCD_VERSION_1, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32, i32* @LCD_V1_END_OF_FRAME_INT_ENA, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %19
  %38 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %39 = call i32 @lcdc_read(i32 %38)
  %40 = load i32, i32* @LCD_V2_END_OF_FRAME0_INT_ENA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @LCD_V2_END_OF_FRAME1_INT_ENA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @LCD_FRAME_DONE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @LCD_SYNC_LOST, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %50 = call i32 @lcdc_write(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %37, %33
  %52 = load i32, i32* @LCD_DUAL_FRAME_BUFFER_ENABLE, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %57 = call i32 @lcdc_write(i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %60 = call i32 @lcdc_write(i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_1_REG, align 4
  %63 = call i32 @lcdc_write(i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG, align 4
  %66 = call i32 @lcdc_write(i32 %64, i32 %65)
  br label %108

67:                                               ; preds = %2
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @LOAD_PALETTE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %67
  %72 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %73 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %4, align 8
  %77 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @PALETTE_ONLY, align 4
  %82 = call i32 @LCD_PALETTE_LOAD_MODE(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i64, i64* @lcd_revision, align 8
  %86 = load i64, i64* @LCD_VERSION_1, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %71
  %89 = load i32, i32* @LCD_V1_PL_INT_ENA, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %100

92:                                               ; preds = %71
  %93 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %94 = call i32 @lcdc_read(i32 %93)
  %95 = load i32, i32* @LCD_V2_PL_INT_ENA, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %99 = call i32 @lcdc_write(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %88
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %103 = call i32 @lcdc_write(i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %106 = call i32 @lcdc_write(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %67
  br label %108

108:                                              ; preds = %107, %51
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %111 = call i32 @lcdc_write(i32 %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %114 = call i32 @lcdc_write(i32 %112, i32 %113)
  %115 = call i32 (...) @lcd_enable_raster()
  ret void
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @LCD_PALETTE_LOAD_MODE(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @lcd_enable_raster(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
