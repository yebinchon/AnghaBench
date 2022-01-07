; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, %struct.da8xx_fb_par* }
%struct.da8xx_fb_par = type { i64 }

@DA8XX_FRAME_WAIT = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCD_DMA_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.da8xx_fb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.fb_info* @dev_get_drvdata(i32* %8)
  store %struct.fb_info* %9, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %11, align 8
  store %struct.da8xx_fb_par* %12, %struct.da8xx_fb_par** %5, align 8
  %13 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %14 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %5, align 8
  %19 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @regulator_disable(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* @DA8XX_FRAME_WAIT, align 4
  %29 = call i32 @lcd_disable_raster(i32 %28)
  %30 = load i32, i32* @LCD_RASTER_CTRL_REG, align 4
  %31 = call i32 @lcdc_write(i32 0, i32 %30)
  %32 = load i32, i32* @LCD_DMA_CTRL_REG, align 4
  %33 = call i32 @lcdc_write(i32 0, i32 %32)
  %34 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %35 = call i32 @unregister_framebuffer(%struct.fb_info* %34)
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = call i32 @fb_dealloc_cmap(i32* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_put_sync(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_disable(i32* %43)
  %45 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %46 = call i32 @framebuffer_release(%struct.fb_info* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %27, %24
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.fb_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @lcd_disable_raster(i32) #1

declare dso_local i32 @lcdc_write(i32, i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
