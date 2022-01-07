; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_alloc_fbmem_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_alloc_fbmem_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i64, %struct.omapfb2_device* }
%struct.omapfb2_device = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, i32*, i32*)* }

@OMAP_DSS_ROT_VRFB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"adjusting fb mem size for VRFB, %u -> %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i64, i64)* @omapfb_alloc_fbmem_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_alloc_fbmem_display(%struct.fb_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.omapfb_info*, align 8
  %9 = alloca %struct.omapfb2_device*, align 8
  %10 = alloca %struct.omap_dss_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %14)
  store %struct.omapfb_info* %15, %struct.omapfb_info** %8, align 8
  %16 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %17 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %16, i32 0, i32 1
  %18 = load %struct.omapfb2_device*, %struct.omapfb2_device** %17, align 8
  store %struct.omapfb2_device* %18, %struct.omapfb2_device** %9, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %20 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %19)
  store %struct.omap_dss_device* %20, %struct.omap_dss_device** %10, align 8
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %22 = icmp ne %struct.omap_dss_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %27 = call i32 @omapfb_get_recommended_bpp(%struct.omapfb2_device* %25, %struct.omap_dss_device* %26)
  switch i32 %27, label %30 [
    i32 16, label %28
    i32 24, label %29
  ]

28:                                               ; preds = %24
  store i32 2, i32* %11, align 4
  br label %31

29:                                               ; preds = %24
  store i32 4, i32* %11, align 4
  br label %31

30:                                               ; preds = %24
  store i32 4, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %29, %28
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %31
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %36 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.omap_dss_device*, i32*, i32*)*, i32 (%struct.omap_dss_device*, i32*, i32*)** %38, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %41 = call i32 %39(%struct.omap_dss_device* %40, i32* %12, i32* %13)
  %42 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %43 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %34
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @omap_vrfb_min_phys_size(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @omap_vrfb_min_phys_size(i32 %52, i32 %53, i32 %54)
  %56 = call i64 @max(i32 %51, i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62)
  br label %71

64:                                               ; preds = %34
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %64, %47
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %81

76:                                               ; preds = %72
  %77 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @omapfb_alloc_fbmem(%struct.fb_info* %77, i64 %78, i64 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %75, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local i32 @omapfb_get_recommended_bpp(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @omap_vrfb_min_phys_size(i32, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i64) #1

declare dso_local i32 @omapfb_alloc_fbmem(%struct.fb_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
