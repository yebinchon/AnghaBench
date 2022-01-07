; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vt8500lcdfb.c_vt8500lcd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vt8500lcd_info = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8500lcd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500lcd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vt8500lcd_info*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.vt8500lcd_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.vt8500lcd_info* %7, %struct.vt8500lcd_info** %3, align 8
  %8 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %9 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %8, i32 0, i32 4
  %10 = call i32 @unregister_framebuffer(%struct.TYPE_3__* %9)
  %11 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %12 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @writel(i32 0, i32 %13)
  %15 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %16 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %23 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @fb_dealloc_cmap(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = call i32 @platform_get_irq(%struct.platform_device* %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.vt8500lcd_info* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %35 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %38 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %41 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_free_coherent(i32* %33, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.vt8500lcd_info*, %struct.vt8500lcd_info** %3, align 8
  %45 = getelementptr inbounds %struct.vt8500lcd_info, %struct.vt8500lcd_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @iounmap(i32 %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %4, align 8
  %51 = load %struct.resource*, %struct.resource** %4, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = call i32 @resource_size(%struct.resource* %54)
  %56 = call i32 @release_mem_region(i32 %53, i32 %55)
  ret i32 0
}

declare dso_local %struct.vt8500lcd_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_3__*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.vt8500lcd_info*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
