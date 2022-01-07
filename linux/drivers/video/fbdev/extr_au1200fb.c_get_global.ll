; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_get_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_get_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.au1200_lcd_global_regs_t = type { i32, i32, i32, i32, i32, i32 }

@lcd = common dso_local global %struct.TYPE_2__* null, align 8
@LCD_SCREEN_SX = common dso_local global i32 0, align 4
@LCD_SCREEN_SY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.au1200_lcd_global_regs_t*)* @get_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_global(i32 %0, %struct.au1200_lcd_global_regs_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1200_lcd_global_regs_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.au1200_lcd_global_regs_t* %1, %struct.au1200_lcd_global_regs_t** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LCD_SCREEN_SX, align 4
  %11 = and i32 %9, %10
  %12 = ashr i32 %11, 19
  %13 = add nsw i32 %12, 1
  %14 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %15 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LCD_SCREEN_SY, align 4
  %20 = and i32 %18, %19
  %21 = ashr i32 %20, 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %24 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %29 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %34 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %39 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 262143
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 8
  %52 = load i32, i32* %6, align 4
  %53 = udiv i32 %51, %52
  %54 = sub i32 %53, 1
  %55 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %56 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
