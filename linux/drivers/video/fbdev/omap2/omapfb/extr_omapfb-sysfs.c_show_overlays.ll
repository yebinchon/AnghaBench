; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_show_overlays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_show_overlays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, %struct.omap_overlay**, %struct.omapfb2_device* }
%struct.omap_overlay = type { i32 }
%struct.omapfb2_device = type { i32, %struct.omap_overlay** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_overlays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_overlays(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.omapfb_info*, align 8
  %9 = alloca %struct.omapfb2_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.omap_overlay*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %14)
  store %struct.fb_info* %15, %struct.fb_info** %7, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %17 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %16)
  store %struct.omapfb_info* %17, %struct.omapfb_info** %8, align 8
  %18 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %19 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %18, i32 0, i32 2
  %20 = load %struct.omapfb2_device*, %struct.omapfb2_device** %19, align 8
  store %struct.omapfb2_device* %20, %struct.omapfb2_device** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %22 = call i32 @lock_fb_info(%struct.fb_info* %21)
  %23 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  %24 = call i32 @omapfb_lock(%struct.omapfb2_device* %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %76, %3
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %28 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %25
  %32 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %33 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %32, i32 0, i32 1
  %34 = load %struct.omap_overlay**, %struct.omap_overlay*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %34, i64 %36
  %38 = load %struct.omap_overlay*, %struct.omap_overlay** %37, align 8
  store %struct.omap_overlay* %38, %struct.omap_overlay** %12, align 8
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %57, %31
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  %42 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.omap_overlay*, %struct.omap_overlay** %12, align 8
  %47 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  %48 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %47, i32 0, i32 1
  %49 = load %struct.omap_overlay**, %struct.omap_overlay*** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %49, i64 %51
  %53 = load %struct.omap_overlay*, %struct.omap_overlay** %52, align 8
  %54 = icmp eq %struct.omap_overlay* %46, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %60

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %39

60:                                               ; preds = %55, %39
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %64, i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %25

79:                                               ; preds = %25
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  %91 = call i32 @omapfb_unlock(%struct.omapfb2_device* %90)
  %92 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %93 = call i32 @unlock_fb_info(%struct.fb_info* %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @omapfb_lock(%struct.omapfb2_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @omapfb_unlock(%struct.omapfb2_device*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
