; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_horizontal_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_lcd_cfg_horizontal_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCD_RASTER_TIMING_0_REG = common dso_local global i32 0, align 4
@lcd_revision = common dso_local global i64 0, align 8
@LCD_VERSION_2 = common dso_local global i64 0, align 8
@LCD_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @lcd_cfg_horizontal_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_cfg_horizontal_sync(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @LCD_RASTER_TIMING_0_REG, align 4
  %9 = call i32 @lcdc_read(i32 %8)
  %10 = and i32 %9, 1023
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %12, 255
  %14 = shl i32 %13, 24
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %16, 255
  %18 = shl i32 %17, 16
  %19 = or i32 %14, %18
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %21, 63
  %23 = shl i32 %22, 10
  %24 = or i32 %19, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @LCD_RASTER_TIMING_0_REG, align 4
  %29 = call i32 @lcdc_write(i32 %27, i32 %28)
  %30 = load i64, i64* @lcd_revision, align 8
  %31 = load i64, i64* @LCD_VERSION_2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %3
  %34 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %35 = call i32 @lcdc_read(i32 %34)
  %36 = and i32 %35, -2013266176
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %38, 768
  %40 = ashr i32 %39, 8
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %44, 768
  %46 = ashr i32 %45, 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %50, 960
  %52 = shl i32 %51, 21
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @LCD_RASTER_TIMING_2_REG, align 4
  %57 = call i32 @lcdc_write(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @lcdc_read(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
