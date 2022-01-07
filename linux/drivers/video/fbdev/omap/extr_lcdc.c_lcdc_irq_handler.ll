; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_lcdc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_lcdc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@OMAP_LCDC_STATUS = common dso_local global i32 0, align 4
@OMAP_LCDC_STAT_FUF = common dso_local global i32 0, align 4
@OMAP_LCDC_STAT_SYNC_LOST = common dso_local global i32 0, align 4
@OMAP_LCDC_STAT_DONE = common dso_local global i32 0, align 4
@OMAP_LCDC_CONTROL = common dso_local global i32 0, align 4
@OMAP_LCDC_IRQ_DONE = common dso_local global i32 0, align 4
@lcdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@OMAP_LCDC_STAT_LOADED_PALETTE = common dso_local global i32 0, align 4
@OMAP_LCDC_STAT_VSYNC = common dso_local global i32 0, align 4
@OMAP_LCDC_STAT_ABC = common dso_local global i32 0, align 4
@OMAP_LCDC_STAT_LINE_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lcdc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcdc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @OMAP_LCDC_STATUS, align 4
  %8 = call i32 @omap_readl(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @OMAP_LCDC_STAT_FUF, align 4
  %11 = load i32, i32* @OMAP_LCDC_STAT_SYNC_LOST, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @reset_controller(i32 %16)
  br label %43

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @OMAP_LCDC_STAT_DONE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @OMAP_LCDC_CONTROL, align 4
  %25 = call i32 @omap_readl(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @OMAP_LCDC_IRQ_DONE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @OMAP_LCDC_CONTROL, align 4
  %32 = call i32 @omap_writel(i32 %30, i32 %31)
  %33 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 1))
  br label %34

34:                                               ; preds = %23, %18
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @OMAP_LCDC_STAT_LOADED_PALETTE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (...) @disable_controller_async()
  %41 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 0))
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i32, i32* @OMAP_LCDC_STAT_VSYNC, align 4
  %45 = load i32, i32* @OMAP_LCDC_STAT_LOADED_PALETTE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @OMAP_LCDC_STAT_ABC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @OMAP_LCDC_STAT_LINE_INT, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @OMAP_LCDC_STATUS, align 4
  %56 = call i32 @omap_writel(i32 %54, i32 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @reset_controller(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @disable_controller_async(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
