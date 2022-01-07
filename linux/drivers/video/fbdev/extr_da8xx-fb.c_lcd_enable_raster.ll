; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_enable_raster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_enable_raster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_2 = common dso_local global i64 0, align 8
@LCD_CLK_MAIN_RESET = common dso_local global i32 0, align 4
@LCD_CLK_RESET_REG = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_RASTER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_enable_raster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_enable_raster() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @lcd_revision, align 8
  %3 = load i64, i64* @LCD_VERSION_2, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @LCD_CLK_MAIN_RESET, align 4
  %7 = load i32, i32* @LCD_CLK_RESET_REG, align 4
  %8 = call i32 @lcdc_write(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = call i32 @mdelay(i32 1)
  %11 = load i64, i64* @lcd_revision, align 8
  %12 = load i64, i64* @LCD_VERSION_2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @LCD_CLK_RESET_REG, align 4
  %16 = call i32 @lcdc_write(i32 0, i32 %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = call i32 @mdelay(i32 1)
  %19 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %20 = call i32 @lcdc_read(i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @LCD_RASTER_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @LCD_RASTER_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %30 = call i32 @lcdc_write(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @lcdc_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
