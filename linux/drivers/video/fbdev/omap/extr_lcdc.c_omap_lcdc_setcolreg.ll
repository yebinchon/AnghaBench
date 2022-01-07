; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_omap_lcdc_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@lcdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OMAPFB_COLOR_CLUT_8BPP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAP_LCDC_LOAD_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @omap_lcdc_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_lcdc_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 0), align 8
  %16 = load i64, i64* @OMAPFB_COLOR_CLUT_8BPP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %60

24:                                               ; preds = %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1), align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -4096
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 12
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 12
  %38 = shl i32 %37, 4
  %39 = or i32 %35, %38
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 12
  %42 = or i32 %39, %41
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %24
  %52 = call i32 (...) @disable_controller()
  %53 = call i32 (...) @omap_stop_lcd_dma()
  %54 = call i32 (...) @load_palette()
  %55 = call i32 (...) @setup_lcd_dma()
  %56 = load i32, i32* @OMAP_LCDC_LOAD_FRAME, align 4
  %57 = call i32 @set_load_mode(i32 %56)
  %58 = call i32 (...) @enable_controller()
  br label %59

59:                                               ; preds = %51, %24
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @disable_controller(...) #1

declare dso_local i32 @omap_stop_lcd_dma(...) #1

declare dso_local i32 @load_palette(...) #1

declare dso_local i32 @setup_lcd_dma(...) #1

declare dso_local i32 @set_load_mode(i32) #1

declare dso_local i32 @enable_controller(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
