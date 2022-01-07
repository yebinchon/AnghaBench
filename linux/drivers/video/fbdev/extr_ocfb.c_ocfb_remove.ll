; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ocfb.c_ocfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ocfb.c_ocfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ocfb_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@OCFB_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ocfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ocfb_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ocfb_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ocfb_dev* %5, %struct.ocfb_dev** %3, align 8
  %6 = load %struct.ocfb_dev*, %struct.ocfb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %6, i32 0, i32 2
  %8 = call i32 @unregister_framebuffer(%struct.TYPE_4__* %7)
  %9 = load %struct.ocfb_dev*, %struct.ocfb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @fb_dealloc_cmap(i32* %11)
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.ocfb_dev*, %struct.ocfb_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PAGE_ALIGN(i32 %19)
  %21 = load %struct.ocfb_dev*, %struct.ocfb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ocfb_dev*, %struct.ocfb_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_free_coherent(i32* %14, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.ocfb_dev*, %struct.ocfb_dev** %3, align 8
  %29 = load i32, i32* @OCFB_CTRL, align 4
  %30 = call i32 @ocfb_writereg(%struct.ocfb_dev* %28, i32 %29, i32 0)
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %31, i32* null)
  ret i32 0
}

declare dso_local %struct.ocfb_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_4__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @ocfb_writereg(%struct.ocfb_dev*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
