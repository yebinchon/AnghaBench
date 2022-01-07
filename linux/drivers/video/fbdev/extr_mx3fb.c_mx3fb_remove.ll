; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mx3fb_data = type { i32, %struct.fb_info* }
%struct.fb_info = type { %struct.mx3fb_info* }
%struct.mx3fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dma_chan }
%struct.dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mx3fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mx3fb_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.mx3fb_info*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.mx3fb_data* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mx3fb_data* %8, %struct.mx3fb_data** %3, align 8
  %9 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %10 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %9, i32 0, i32 1
  %11 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  store %struct.fb_info* %11, %struct.fb_info** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.mx3fb_info*, %struct.mx3fb_info** %13, align 8
  store %struct.mx3fb_info* %14, %struct.mx3fb_info** %5, align 8
  %15 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %16 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.dma_chan* %18, %struct.dma_chan** %6, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = call i32 @release_fbi(%struct.fb_info* %19)
  %21 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %22 = call i32 @mx3fb_exit_backlight(%struct.mx3fb_data* %21)
  %23 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %24 = call i32 @dma_release_channel(%struct.dma_chan* %23)
  %25 = call i32 (...) @dmaengine_put()
  %26 = load %struct.mx3fb_data*, %struct.mx3fb_data** %3, align 8
  %27 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @iounmap(i32 %28)
  ret i32 0
}

declare dso_local %struct.mx3fb_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @release_fbi(%struct.fb_info*) #1

declare dso_local i32 @mx3fb_exit_backlight(%struct.mx3fb_data*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @dmaengine_put(...) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
