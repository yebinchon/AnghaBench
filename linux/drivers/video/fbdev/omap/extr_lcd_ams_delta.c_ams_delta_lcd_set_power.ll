; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_ams_delta.c_ams_delta_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_ams_delta.c_ams_delta_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@ams_delta_lcd = common dso_local global i32 0, align 4
@AMS_DELTA_LCD_POWER = common dso_local global i32 0, align 4
@AMS_DELTA_MAX_CONTRAST = common dso_local global i32 0, align 4
@OMAP_PWL_ENABLE = common dso_local global i32 0, align 4
@OMAP_PWL_CLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcd_device*, i32)* @ams_delta_lcd_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_lcd_set_power(%struct.lcd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.lcd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lcd_device* %0, %struct.lcd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i32, i32* @ams_delta_lcd, align 4
  %10 = load i32, i32* @AMS_DELTA_LCD_POWER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ams_delta_lcd, align 4
  %15 = load i32, i32* @AMS_DELTA_MAX_CONTRAST, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @OMAP_PWL_ENABLE, align 4
  %18 = call i32 @omap_writeb(i32 %16, i32 %17)
  %19 = load i32, i32* @OMAP_PWL_CLK_ENABLE, align 4
  %20 = call i32 @omap_writeb(i32 1, i32 %19)
  %21 = load i32, i32* @AMS_DELTA_LCD_POWER, align 4
  %22 = load i32, i32* @ams_delta_lcd, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @ams_delta_lcd, align 4
  br label %24

24:                                               ; preds = %13, %8
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @ams_delta_lcd, align 4
  %27 = load i32, i32* @AMS_DELTA_LCD_POWER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* @OMAP_PWL_ENABLE, align 4
  %32 = call i32 @omap_writeb(i32 0, i32 %31)
  %33 = load i32, i32* @OMAP_PWL_CLK_ENABLE, align 4
  %34 = call i32 @omap_writeb(i32 0, i32 %33)
  %35 = load i32, i32* @AMS_DELTA_LCD_POWER, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @ams_delta_lcd, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @ams_delta_lcd, align 4
  br label %39

39:                                               ; preds = %30, %25
  br label %40

40:                                               ; preds = %39, %24
  ret i32 0
}

declare dso_local i32 @omap_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
