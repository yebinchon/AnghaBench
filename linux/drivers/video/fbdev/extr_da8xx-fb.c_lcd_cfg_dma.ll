; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LCD_DMA_BURST_1 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_2 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_4 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_8 = common dso_local global i32 0, align 4
@LCD_DMA_BURST_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lcd_cfg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_cfg_dma(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %7 = call i32 @lcdc_read(i32 %6)
  %8 = and i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %31 [
    i32 1, label %10
    i32 2, label %15
    i32 4, label %20
    i32 8, label %25
    i32 16, label %30
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @LCD_DMA_BURST_1, align 4
  %12 = call i32 @LCD_DMA_BURST_SIZE(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @LCD_DMA_BURST_2, align 4
  %17 = call i32 @LCD_DMA_BURST_SIZE(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @LCD_DMA_BURST_4, align 4
  %22 = call i32 @LCD_DMA_BURST_SIZE(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @LCD_DMA_BURST_8, align 4
  %27 = call i32 @LCD_DMA_BURST_SIZE(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %2, %30
  %32 = load i32, i32* @LCD_DMA_BURST_16, align 4
  %33 = call i32 @LCD_DMA_BURST_SIZE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %25, %20, %15, %10
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %43 = call i32 @lcdc_write(i32 %41, i32 %42)
  ret i32 0
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @LCD_DMA_BURST_SIZE(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
