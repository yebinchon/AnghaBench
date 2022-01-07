; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.au1200fb_platdata = type { i32 }

@device_count = common dso_local global i32 0, align 4
@_au1200fb_infos = common dso_local global %struct.fb_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1200fb_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1200fb_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.au1200fb_platdata*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.au1200fb_platdata* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.au1200fb_platdata* %7, %struct.au1200fb_platdata** %3, align 8
  %8 = load %struct.au1200fb_platdata*, %struct.au1200fb_platdata** %3, align 8
  %9 = call i32 @au1200_setpanel(i32* null, %struct.au1200fb_platdata* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %42, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @device_count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load %struct.fb_info**, %struct.fb_info*** @_au1200fb_infos, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %15, i64 %17
  %19 = load %struct.fb_info*, %struct.fb_info** %18, align 8
  store %struct.fb_info* %19, %struct.fb_info** %4, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = call i32 @unregister_framebuffer(%struct.fb_info* %20)
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = call i32 @fb_dealloc_cmap(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %27, %14
  %32 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = call i32 @framebuffer_release(%struct.fb_info* %36)
  %38 = load %struct.fb_info**, %struct.fb_info*** @_au1200fb_infos, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %38, i64 %40
  store %struct.fb_info* null, %struct.fb_info** %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %10

45:                                               ; preds = %10
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = call i32 @platform_get_irq(%struct.platform_device* %46, i32 0)
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = bitcast %struct.platform_device* %48 to i8*
  %50 = call i32 @free_irq(i32 %47, i8* %49)
  ret i32 0
}

declare dso_local %struct.au1200fb_platdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @au1200_setpanel(i32*, %struct.au1200fb_platdata*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
