; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager.c_dss_init_overlay_managers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager.c_dss_init_overlay_managers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i8*, i32, i32, i32, i32 }

@num_managers = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@managers = common dso_local global %struct.omap_overlay_manager* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@OMAP_DSS_CHANNEL_LCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"tv\00", align 1
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"lcd2\00", align 1
@OMAP_DSS_CHANNEL_LCD2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"lcd3\00", align 1
@OMAP_DSS_CHANNEL_LCD3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_init_overlay_managers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.omap_overlay_manager*, align 8
  %3 = call i32 (...) @dss_feat_get_num_mgrs()
  store i32 %3, i32* @num_managers, align 4
  %4 = load i32, i32* @num_managers, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.omap_overlay_manager* @kcalloc(i32 %4, i32 24, i32 %5)
  store %struct.omap_overlay_manager* %6, %struct.omap_overlay_manager** @managers, align 8
  %7 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** @managers, align 8
  %8 = icmp eq %struct.omap_overlay_manager* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %61, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @num_managers, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %11
  %16 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** @managers, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %16, i64 %18
  store %struct.omap_overlay_manager* %19, %struct.omap_overlay_manager** %2, align 8
  %20 = load i32, i32* %1, align 4
  switch i32 %20, label %45 [
    i32 0, label %21
    i32 1, label %27
    i32 2, label %33
    i32 3, label %39
  ]

21:                                               ; preds = %15
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %23 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @OMAP_DSS_CHANNEL_LCD, align 4
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %29 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %31 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %32 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %45

33:                                               ; preds = %15
  %34 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %35 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @OMAP_DSS_CHANNEL_LCD2, align 4
  %37 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %38 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %45

39:                                               ; preds = %15
  %40 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %41 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 8
  %42 = load i32, i32* @OMAP_DSS_CHANNEL_LCD3, align 4
  %43 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %44 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %15, %39, %33, %27, %21
  %46 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %47 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dss_feat_get_supported_displays(i32 %48)
  %50 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %51 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %53 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dss_feat_get_supported_outputs(i32 %54)
  %56 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %57 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %59 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %58, i32 0, i32 1
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %11

64:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @dss_feat_get_num_mgrs(...) #1

declare dso_local %struct.omap_overlay_manager* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dss_feat_get_supported_displays(i32) #1

declare dso_local i32 @dss_feat_get_supported_outputs(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
