; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay.c_dss_ovl_simple_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay.c_dss_ovl_simple_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, i64, i32 }
%struct.omap_overlay_info = type { i64, i64, i64, i64, i32, i64, i64 }

@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"check_overlay: overlay %d doesn't support scaling\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"check_overlay: overlay %d doesn't support mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"check_overlay: zorder %d too high\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"check_overlay: rotation type %d not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_ovl_simple_check(%struct.omap_overlay* %0, %struct.omap_overlay_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay*, align 8
  %5 = alloca %struct.omap_overlay_info*, align 8
  store %struct.omap_overlay* %0, %struct.omap_overlay** %4, align 8
  store %struct.omap_overlay_info* %1, %struct.omap_overlay_info** %5, align 8
  %6 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %7 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %14 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %19 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %22 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %27 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, i64, ...) @DSSERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %99

32:                                               ; preds = %17, %12
  %33 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %34 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %39 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %42 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %47 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, i64, ...) @DSSERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %37, %32
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %55 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %58 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %64 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %67 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i64, ...) @DSSERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %99

72:                                               ; preds = %53
  %73 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %74 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = call i64 (...) @omap_dss_get_num_overlays()
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %80 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, i64, ...) @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %99

85:                                               ; preds = %72
  %86 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %87 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @dss_feat_rotation_type_supported(i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %5, align 8
  %93 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, i64, ...) @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %91, %78, %62, %45, %25
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @DSSERR(i8*, i64, ...) #1

declare dso_local i64 @omap_dss_get_num_overlays(...) #1

declare dso_local i64 @dss_feat_rotation_type_supported(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
