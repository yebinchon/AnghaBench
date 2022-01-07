; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_cpr_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_cpr_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32 }

@FEAT_CPR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, i8*, i64)* @manager_cpr_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_cpr_enable_store(%struct.omap_overlay_manager* %0, i8* %1, i64 %2) #0 {
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
  %11 = load i32, i32* @FEAT_CPR, align 4
  %12 = call i32 @dss_has_feature(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strtobool(i8* %18, i32* %10)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %17
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %25, i32 0, i32 2
  %27 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %26, align 8
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %29 = call i32 %27(%struct.omap_overlay_manager* %28, %struct.omap_overlay_manager_info* %8)
  %30 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %41 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %40, i32 0, i32 0
  %42 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %41, align 8
  %43 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %44 = call i32 %42(%struct.omap_overlay_manager* %43, %struct.omap_overlay_manager_info* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %37
  %50 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %51 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %50, i32 0, i32 1
  %52 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %51, align 8
  %53 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %54 = call i32 %52(%struct.omap_overlay_manager* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %49
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %57, %47, %34, %22, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dss_has_feature(i32) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
