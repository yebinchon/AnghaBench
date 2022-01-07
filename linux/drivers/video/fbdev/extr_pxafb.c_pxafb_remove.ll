; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxafb_info = type { i32, i32, i32, i32, i32, %struct.fb_info }
%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxafb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxafb_info*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.pxafb_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.pxafb_info* %7, %struct.pxafb_info** %4, align 8
  %8 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %9 = icmp ne %struct.pxafb_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %13 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %12, i32 0, i32 5
  store %struct.fb_info* %13, %struct.fb_info** %5, align 8
  %14 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %15 = call i32 @pxafb_overlay_exit(%struct.pxafb_info* %14)
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = call i32 @unregister_framebuffer(%struct.fb_info* %16)
  %18 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %19 = call i32 @pxafb_disable_controller(%struct.pxafb_info* %18)
  %20 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %21 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %28 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = call i32 @fb_dealloc_cmap(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %26, %11
  %32 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %33 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %36 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @free_pages_exact(i32 %34, i32 %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %42 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %45 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %48 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dma_free_wc(i32* %40, i32 %43, i32 %46, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %31, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.pxafb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pxafb_overlay_exit(%struct.pxafb_info*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @pxafb_disable_controller(%struct.pxafb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_2__*) #1

declare dso_local i32 @free_pages_exact(i32, i32) #1

declare dso_local i32 @dma_free_wc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
