; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay.c_dss_init_overlays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay.c_dss_init_overlays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i8*, i32, i32, i32 }
%struct.platform_device = type { i32 }

@num_overlays = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@overlays = common dso_local global %struct.omap_overlay* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vid1\00", align 1
@OMAP_DSS_VIDEO1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vid2\00", align 1
@OMAP_DSS_VIDEO2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vid3\00", align 1
@OMAP_DSS_VIDEO3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create sysfs file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_init_overlays(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = call i32 (...) @dss_feat_get_num_ovls()
  store i32 %6, i32* @num_overlays, align 4
  %7 = load i32, i32* @num_overlays, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.omap_overlay* @kcalloc(i32 %7, i32 24, i32 %8)
  store %struct.omap_overlay* %9, %struct.omap_overlay** @overlays, align 8
  %10 = load %struct.omap_overlay*, %struct.omap_overlay** @overlays, align 8
  %11 = icmp eq %struct.omap_overlay* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %69, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @num_overlays, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load %struct.omap_overlay*, %struct.omap_overlay** @overlays, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %19, i64 %21
  store %struct.omap_overlay* %22, %struct.omap_overlay** %5, align 8
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %48 [
    i32 0, label %24
    i32 1, label %30
    i32 2, label %36
    i32 3, label %42
  ]

24:                                               ; preds = %18
  %25 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %26 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @OMAP_DSS_GFX, align 4
  %28 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %29 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %48

30:                                               ; preds = %18
  %31 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %32 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @OMAP_DSS_VIDEO1, align 4
  %34 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %35 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %48

36:                                               ; preds = %18
  %37 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %38 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @OMAP_DSS_VIDEO2, align 4
  %40 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %41 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %48

42:                                               ; preds = %18
  %43 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %44 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @OMAP_DSS_VIDEO3, align 4
  %46 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %47 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %18, %42, %36, %30, %24
  %49 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %50 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dss_feat_get_overlay_caps(i32 %51)
  %53 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %54 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %56 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dss_feat_get_supported_color_modes(i32 %57)
  %59 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %60 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %63 = call i32 @dss_overlay_kobj_init(%struct.omap_overlay* %61, %struct.platform_device* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %48
  %67 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %48
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local %struct.omap_overlay* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dss_feat_get_overlay_caps(i32) #1

declare dso_local i32 @dss_feat_get_supported_color_modes(i32) #1

declare dso_local i32 @dss_overlay_kobj_init(%struct.omap_overlay*, %struct.platform_device*) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
