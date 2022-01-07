; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcdc_irq_handler_rev02.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcdc_irq_handler_rev02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_fb_par = type { i32, i32, i32, i32, i32 }

@LCD_MASKED_STAT_REG = common dso_local global i32 0, align 4
@LCD_SYNC_LOST = common dso_local global i32 0, align 4
@LCD_FIFO_UNDERFLOW = common dso_local global i32 0, align 4
@DA8XX_FRAME_NOWAIT = common dso_local global i32 0, align 4
@LCD_PL_LOAD_DONE = common dso_local global i32 0, align 4
@LCD_V2_PL_INT_ENA = common dso_local global i32 0, align 4
@LCD_INT_ENABLE_CLR_REG = common dso_local global i32 0, align 4
@LOAD_DATA = common dso_local global i32 0, align 4
@LCD_END_OF_FRAME0 = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG = common dso_local global i32 0, align 4
@LCD_END_OF_FRAME1 = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_BASE_ADDR_1_REG = common dso_local global i32 0, align 4
@LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG = common dso_local global i32 0, align 4
@frame_done_flag = common dso_local global i32 0, align 4
@frame_done_wq = common dso_local global i32 0, align 4
@LCD_END_OF_INT_IND_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lcdc_irq_handler_rev02 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcdc_irq_handler_rev02(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da8xx_fb_par*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.da8xx_fb_par*
  store %struct.da8xx_fb_par* %8, %struct.da8xx_fb_par** %5, align 8
  %9 = load i32, i32* @LCD_MASKED_STAT_REG, align 4
  %10 = call i32 @lcdc_read(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @LCD_SYNC_LOST, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LCD_FIFO_UNDERFLOW, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* @DA8XX_FRAME_NOWAIT, align 4
  %22 = call i32 @lcd_disable_raster(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LCD_MASKED_STAT_REG, align 4
  %25 = call i32 @lcdc_write(i32 %23, i32 %24)
  %26 = call i32 (...) @lcd_enable_raster()
  br label %102

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LCD_PL_LOAD_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* @DA8XX_FRAME_NOWAIT, align 4
  %34 = call i32 @lcd_disable_raster(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @LCD_MASKED_STAT_REG, align 4
  %37 = call i32 @lcdc_write(i32 %35, i32 %36)
  %38 = load i32, i32* @LCD_V2_PL_INT_ENA, align 4
  %39 = load i32, i32* @LCD_INT_ENABLE_CLR_REG, align 4
  %40 = call i32 @lcdc_write(i32 %38, i32 %39)
  %41 = load i32, i32* @LOAD_DATA, align 4
  %42 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %43 = call i32 @lcd_blit(i32 %41, %struct.da8xx_fb_par* %42)
  br label %101

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LCD_MASKED_STAT_REG, align 4
  %47 = call i32 @lcdc_write(i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @LCD_END_OF_FRAME0, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %54 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %56 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_0_REG, align 4
  %59 = call i32 @lcdc_write(i32 %57, i32 %58)
  %60 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %61 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG, align 4
  %64 = call i32 @lcdc_write(i32 %62, i32 %63)
  %65 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %66 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  %67 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %68 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %67, i32 0, i32 4
  %69 = call i32 @wake_up_interruptible(i32* %68)
  br label %70

70:                                               ; preds = %52, %44
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @LCD_END_OF_FRAME1, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %77 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %79 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LCD_DMA_FRM_BUF_BASE_ADDR_1_REG, align 4
  %82 = call i32 @lcdc_write(i32 %80, i32 %81)
  %83 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %84 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG, align 4
  %87 = call i32 @lcdc_write(i32 %85, i32 %86)
  %88 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %89 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  %90 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %91 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %90, i32 0, i32 4
  %92 = call i32 @wake_up_interruptible(i32* %91)
  br label %93

93:                                               ; preds = %75, %70
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @BIT(i32 0)
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  store i32 1, i32* @frame_done_flag, align 4
  %99 = call i32 @wake_up_interruptible(i32* @frame_done_wq)
  br label %100

100:                                              ; preds = %98, %93
  br label %101

101:                                              ; preds = %100, %32
  br label %102

102:                                              ; preds = %101, %20
  %103 = load i32, i32* @LCD_END_OF_INT_IND_REG, align 4
  %104 = call i32 @lcdc_write(i32 0, i32 %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %105
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcd_disable_raster(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @lcd_enable_raster(...) #1

declare dso_local i32 @lcd_blit(i32, %struct.da8xx_fb_par*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
