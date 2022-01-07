; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa168fb_info = type { i32, i32, i64, %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@LCD_SPU_DMA_CTRL0 = common dso_local global i64 0, align 8
@CFG_GRA_ENA_MASK = common dso_local global i32 0, align 4
@SPU_IRQ_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa168fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa168fb_info*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.pxa168fb_info* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.pxa168fb_info* %9, %struct.pxa168fb_info** %4, align 8
  %10 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %11 = icmp ne %struct.pxa168fb_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

13:                                               ; preds = %1
  %14 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LCD_SPU_DMA_CTRL0, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @CFG_GRA_ENA_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LCD_SPU_DMA_CTRL0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %31, i32 0, i32 3
  %33 = load %struct.fb_info*, %struct.fb_info** %32, align 8
  store %struct.fb_info* %33, %struct.fb_info** %5, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %35 = call i32 @unregister_framebuffer(%struct.fb_info* %34)
  %36 = call i32 @GRA_FRAME_IRQ0_ENA(i32 0)
  %37 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPU_IRQ_ENA, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %13
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 2
  %51 = call i32 @fb_dealloc_cmap(%struct.TYPE_4__* %50)
  br label %52

52:                                               ; preds = %48, %13
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @platform_get_irq(%struct.platform_device* %53, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %56 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PAGE_ALIGN(i32 %61)
  %63 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dma_free_wc(i32 %57, i32 %62, i32 %65, i32 %69)
  %71 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %4, align 8
  %72 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clk_disable_unprepare(i32 %73)
  %75 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %76 = call i32 @framebuffer_release(%struct.fb_info* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %52, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.pxa168fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @GRA_FRAME_IRQ0_ENA(i32) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dma_free_wc(i32, i32, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
