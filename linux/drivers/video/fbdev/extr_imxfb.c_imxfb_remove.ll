; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imxfb.c_imxfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_fb_platform_data = type { i32 (i32)* }
%struct.fb_info = type { i32, i32, i32, %struct.imxfb_info* }
%struct.imxfb_info = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imxfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxfb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.imx_fb_platform_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.imxfb_info*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.fb_info* %8, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 3
  %11 = load %struct.imxfb_info*, %struct.imxfb_info** %10, align 8
  store %struct.imxfb_info* %11, %struct.imxfb_info** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %6, align 8
  %15 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %16 = call i32 @imxfb_disable_controller(%struct.imxfb_info* %15)
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = call i32 @unregister_framebuffer(%struct.fb_info* %17)
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  %21 = call i32 @fb_dealloc_cmap(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.imx_fb_platform_data* @dev_get_platdata(i32* %23)
  store %struct.imx_fb_platform_data* %24, %struct.imx_fb_platform_data** %3, align 8
  %25 = load %struct.imx_fb_platform_data*, %struct.imx_fb_platform_data** %3, align 8
  %26 = icmp ne %struct.imx_fb_platform_data* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.imx_fb_platform_data*, %struct.imx_fb_platform_data** %3, align 8
  %29 = getelementptr inbounds %struct.imx_fb_platform_data, %struct.imx_fb_platform_data* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = icmp ne i32 (i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.imx_fb_platform_data*, %struct.imx_fb_platform_data** %3, align 8
  %34 = getelementptr inbounds %struct.imx_fb_platform_data, %struct.imx_fb_platform_data* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %37 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %35(i32 %38)
  br label %40

40:                                               ; preds = %32, %27, %1
  %41 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %44 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %50 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dma_free_wc(i32* %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.imxfb_info*, %struct.imxfb_info** %5, align 8
  %54 = getelementptr inbounds %struct.imxfb_info, %struct.imxfb_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @iounmap(i32 %55)
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = call i32 @resource_size(%struct.resource* %60)
  %62 = call i32 @release_mem_region(i32 %59, i32 %61)
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @kfree(i32 %65)
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = call i32 @framebuffer_release(%struct.fb_info* %67)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @imxfb_disable_controller(%struct.imxfb_info*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local %struct.imx_fb_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dma_free_wc(i32*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
