; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.au1100fb_device = type { i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LCD_CONTROL_GO = common dso_local global i32 0, align 4
@VESA_POWERDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1100fb_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.au1100fb_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.au1100fb_device* null, %struct.au1100fb_device** %4, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = icmp ne %struct.platform_device* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.au1100fb_device* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.au1100fb_device* %12, %struct.au1100fb_device** %4, align 8
  %13 = load i32, i32* @LCD_CONTROL_GO, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %16 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %22 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %21, i32 0, i32 1
  %23 = call i32 @unregister_framebuffer(%struct.TYPE_5__* %22)
  %24 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %25 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @fb_dealloc_cmap(i32* %26)
  %28 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %29 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %10
  %33 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %34 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i64 %35)
  %37 = load %struct.au1100fb_device*, %struct.au1100fb_device** %4, align 8
  %38 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @clk_put(i64 %39)
  br label %41

41:                                               ; preds = %32, %10
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.au1100fb_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @clk_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
