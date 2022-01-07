; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_goldfishfb.c_goldfish_fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_goldfishfb.c_goldfish_fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.goldfish_fb = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i64, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_fb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.goldfish_fb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.goldfish_fb* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.goldfish_fb* %6, %struct.goldfish_fb** %4, align 8
  %7 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %8 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %13 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %11, %16
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %3, align 8
  %20 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %21 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %20, i32 0, i32 1
  %22 = call i32 @unregister_framebuffer(%struct.TYPE_6__* %21)
  %23 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %24 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.goldfish_fb* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %32 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %37 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(i32* %29, i64 %30, i8* %35, i32 %40)
  %42 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %43 = getelementptr inbounds %struct.goldfish_fb, %struct.goldfish_fb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @iounmap(i32 %44)
  %46 = load %struct.goldfish_fb*, %struct.goldfish_fb** %4, align 8
  %47 = call i32 @kfree(%struct.goldfish_fb* %46)
  ret i32 0
}

declare dso_local %struct.goldfish_fb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_6__*) #1

declare dso_local i32 @free_irq(i32, %struct.goldfish_fb*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.goldfish_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
