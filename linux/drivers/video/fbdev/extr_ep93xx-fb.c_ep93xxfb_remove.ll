; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ep93xx-fb.c_ep93xxfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ep93xx-fb.c_ep93xxfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, %struct.ep93xx_fbi* }
%struct.ep93xx_fbi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.platform_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xxfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxfb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.ep93xx_fbi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %8, align 8
  store %struct.ep93xx_fbi* %9, %struct.ep93xx_fbi** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call i32 @unregister_framebuffer(%struct.fb_info* %10)
  %12 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %4, align 8
  %13 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_disable(i32 %14)
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = call i32 @ep93xxfb_dealloc_videomem(%struct.fb_info* %16)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = call i32 @fb_dealloc_cmap(i32* %19)
  %21 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %4, align 8
  %22 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.platform_device*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %4, align 8
  %29 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %31, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = call i32 %32(%struct.platform_device* %33)
  br label %35

35:                                               ; preds = %27, %1
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = call i32 @kfree(%struct.fb_info* %36)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @ep93xxfb_dealloc_videomem(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @kfree(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
