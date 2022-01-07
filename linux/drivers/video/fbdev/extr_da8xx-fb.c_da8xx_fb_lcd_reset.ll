; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_lcd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_da8xx_fb_lcd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_2 = common dso_local global i64 0, align 8
@LCD_INT_ENABLE_SET_REG = common dso_local global i32 0, align 4
@LCD_CLK_MAIN_RESET = common dso_local global i32 0, align 4
@LCD_CLK_RESET_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @da8xx_fb_lcd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da8xx_fb_lcd_reset() #0 {
  %1 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %2 = call i32 @lcdc_write(i32 0, i32 %1)
  %3 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %4 = call i32 @lcdc_write(i32 0, i32 %3)
  %5 = load i64, i64* @lcd_revision, align 8
  %6 = load i64, i64* @LCD_VERSION_2, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @LCD_INT_ENABLE_SET_REG, align 4
  %10 = call i32 @lcdc_write(i32 0, i32 %9)
  %11 = load i32, i32* @LCD_CLK_MAIN_RESET, align 4
  %12 = load i32, i32* @LCD_CLK_RESET_REG, align 4
  %13 = call i32 @lcdc_write(i32 %11, i32 %12)
  %14 = load i32, i32* @LCD_CLK_RESET_REG, align 4
  %15 = call i32 @lcdc_write(i32 0, i32 %14)
  br label %16

16:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
