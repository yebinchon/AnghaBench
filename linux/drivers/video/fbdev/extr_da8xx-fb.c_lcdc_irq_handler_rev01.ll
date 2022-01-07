; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcdc_irq_handler_rev01.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcdc_irq_handler_rev01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32, i32, i32, i32, i32 }

@LCD_STAT_REG = common dso_local global i32 0, align 4
@LCD_SYNC_LOST = common dso_local global i32 0, align 4
@LCD_FIFO_UNDERFLOW = common dso_local global i32 0, align 4
@DA8XX_FRAME_NOWAIT = common dso_local global i32 0, align 4
@LCD_PL_LOAD_DONE = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_V1_PL_INT_ENA = common dso_local global i32 0, align 4
@LOAD_DATA = common dso_local global i32 0, align 4
@LCD_END_OF_FRAME0 = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_END_OF_FRAME1 = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_1_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lcdc_irq_handler_rev01 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcdc_irq_handler_rev01(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da8xx_fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.da8xx_fb_par*
  store %struct.da8xx_fb_par* %9, %struct.da8xx_fb_par** %5, align 8
  %10 = load i32, i32* @LCD_STAT_REG, align 4
  %11 = call i32 @lcdc_read(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @LCD_SYNC_LOST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LCD_FIFO_UNDERFLOW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @DA8XX_FRAME_NOWAIT, align 4
  %23 = call i32 @lcd_disable_raster(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LCD_STAT_REG, align 4
  %26 = call i32 @lcdc_write(i32 %24, i32 %25)
  %27 = call i32 (...) @lcd_enable_raster()
  br label %102

28:                                               ; preds = %16, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LCD_PL_LOAD_DONE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i32, i32* @DA8XX_FRAME_NOWAIT, align 4
  %35 = call i32 @lcd_disable_raster(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LCD_STAT_REG, align 4
  %38 = call i32 @lcdc_write(i32 %36, i32 %37)
  %39 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %40 = call i32 @lcdc_read(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @LCD_V1_PL_INT_ENA, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %47 = call i32 @lcdc_write(i32 %45, i32 %46)
  %48 = load i32, i32* @LOAD_DATA, align 4
  %49 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %50 = call i32 @lcd_blit(i32 %48, %struct.da8xx_fb_par* %49)
  br label %101

51:                                               ; preds = %28
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @LCD_STAT_REG, align 4
  %54 = call i32 @lcdc_write(i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @LCD_END_OF_FRAME0, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %61 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %63 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %66 = call i32 @lcdc_write(i32 %64, i32 %65)
  %67 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %68 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %71 = call i32 @lcdc_write(i32 %69, i32 %70)
  %72 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %73 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %75 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %74, i32 0, i32 4
  %76 = call i32 @wake_up_interruptible(i32* %75)
  br label %77

77:                                               ; preds = %59, %51
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @LCD_END_OF_FRAME1, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %84 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %86 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_1_REG, align 4
  %89 = call i32 @lcdc_write(i32 %87, i32 %88)
  %90 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %91 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG, align 4
  %94 = call i32 @lcdc_write(i32 %92, i32 %93)
  %95 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %96 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %98 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %97, i32 0, i32 4
  %99 = call i32 @wake_up_interruptible(i32* %98)
  br label %100

100:                                              ; preds = %82, %77
  br label %101

101:                                              ; preds = %100, %33
  br label %102

102:                                              ; preds = %101, %21
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %103
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcd_disable_raster(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @lcd_enable_raster(...) #1

declare dso_local i32 @lcd_blit(i32, %struct.da8xx_fb_par*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
