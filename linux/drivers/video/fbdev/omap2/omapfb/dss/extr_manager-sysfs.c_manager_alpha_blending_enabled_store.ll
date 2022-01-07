; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_alpha_blending_enabled_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_alpha_blending_enabled_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32 }

@FEAT_ALPHA_FIXED_ZORDER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, i8*, i64)* @manager_alpha_blending_enabled_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_alpha_blending_enabled_store(%struct.omap_overlay_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.omap_overlay_manager_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @FEAT_ALPHA_FIXED_ZORDER, align 4
  %12 = call i32 @dss_has_feature(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strtobool(i8* %18, i32* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %25, i32 0, i32 2
  %27 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %26, align 8
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %29 = call i32 %27(%struct.omap_overlay_manager* %28, %struct.omap_overlay_manager_info* %8)
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %33 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %32, i32 0, i32 0
  %34 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %33, align 8
  %35 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %36 = call i32 %34(%struct.omap_overlay_manager* %35, %struct.omap_overlay_manager_info* %8)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %24
  %42 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %43 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %42, i32 0, i32 1
  %44 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %43, align 8
  %45 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %46 = call i32 %44(%struct.omap_overlay_manager* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %49, %39, %22, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
