; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c2410fb.c_s3c2410fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { %struct.s3c2410fb_info* }
%struct.s3c2410fb_info = type { %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c2410fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.s3c2410fb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.fb_info* %7, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %9, align 8
  store %struct.s3c2410fb_info* %10, %struct.s3c2410fb_info** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = call i32 @unregister_framebuffer(%struct.fb_info* %11)
  %13 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %14 = call i32 @s3c2410fb_cpufreq_deregister(%struct.s3c2410fb_info* %13)
  %15 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %16 = call i32 @s3c2410fb_lcd_enable(%struct.s3c2410fb_info* %15, i32 0)
  %17 = call i32 @usleep_range(i32 1000, i32 1100)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = call i32 @s3c2410fb_unmap_video_memory(%struct.fb_info* %18)
  %20 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @clk_disable_unprepare(i32* %27)
  %29 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @clk_put(i32* %31)
  %33 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %34 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %24, %1
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.s3c2410fb_info* %39)
  %41 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %42 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @iounmap(i32 %43)
  %45 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %46 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %4, align 8
  %51 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @resource_size(%struct.TYPE_2__* %52)
  %54 = call i32 @release_mem_region(i32 %49, i32 %53)
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = call i32 @framebuffer_release(%struct.fb_info* %55)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @s3c2410fb_cpufreq_deregister(%struct.s3c2410fb_info*) #1

declare dso_local i32 @s3c2410fb_lcd_enable(%struct.s3c2410fb_info*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @s3c2410fb_unmap_video_memory(%struct.fb_info*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.s3c2410fb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
