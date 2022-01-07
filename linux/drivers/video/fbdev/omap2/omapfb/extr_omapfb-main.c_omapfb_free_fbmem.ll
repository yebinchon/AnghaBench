; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_free_fbmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_free_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i64, %struct.omapfb2_mem_region*, %struct.omapfb2_device* }
%struct.omapfb2_mem_region = type { i64, i64, i64, i32*, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32** }
%struct.omapfb2_device = type { i32 }

@OMAP_DSS_ROT_VRFB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @omapfb_free_fbmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_free_fbmem(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.omapfb_info*, align 8
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.omapfb2_mem_region*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %6)
  store %struct.omapfb_info* %7, %struct.omapfb_info** %3, align 8
  %8 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %9 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %8, i32 0, i32 2
  %10 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  store %struct.omapfb2_device* %10, %struct.omapfb2_device** %4, align 8
  %11 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %12 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %11, i32 0, i32 1
  %13 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %12, align 8
  store %struct.omapfb2_mem_region* %13, %struct.omapfb2_mem_region** %5, align 8
  %14 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %15 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %21 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %20, i32 0, i32 8
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %25 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  %30 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %31 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %39 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @iounmap(i32* %43)
  %45 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %46 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %37, %29
  %51 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %52 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %51, i32 0, i32 7
  %53 = call i32 @omap_vrfb_release_ctx(%struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %50, %19
  %55 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %56 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %59 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %62 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %65 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %68 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dma_free_attrs(i32 %57, i64 %60, i32* %63, i32 %66, i32 %69)
  %71 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %72 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %71, i32 0, i32 4
  store i32* null, i32** %72, align 8
  %73 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %74 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %76 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %78 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %5, align 8
  %80 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %54, %18
  ret void
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @omap_vrfb_release_ctx(%struct.TYPE_2__*) #1

declare dso_local i32 @dma_free_attrs(i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
