; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_check_fb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_check_fb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fb_var_screeninfo = type { i32, i32, i64 }

@OMAP_DSS_ROT_VRFB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cannot fit FB to memory\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"max frame size %lu, line size %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_info*, %struct.fb_var_screeninfo*)* @check_fb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fb_size(%struct.omapfb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.omapfb_info* %0, %struct.omapfb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %9 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %10 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 3
  store i32 %17, i32* %7, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %25 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %32 = call i64 @check_vrfb_fb_size(i64 %30, %struct.fb_var_screeninfo* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @omap_vrfb_max_height(i64 %35, i32 %38, i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = mul i64 %40, %41
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %44 = call i32 @shrink_height(i64 %42, %struct.fb_var_screeninfo* %43)
  br label %45

45:                                               ; preds = %34, %29
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %48 = call i64 @check_vrfb_fb_size(i64 %46, %struct.fb_var_screeninfo* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %101

54:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %101

55:                                               ; preds = %2
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %59, %62
  %64 = load i64, i64* %6, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %69 = call i32 @shrink_height(i64 %67, %struct.fb_var_screeninfo* %68)
  br label %70

70:                                               ; preds = %66, %55
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %71, %74
  %76 = load i64, i64* %6, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %81 = call i32 @shrink_width(i64 %79, %struct.fb_var_screeninfo* %80)
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %78, %70
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = mul i64 %89, %92
  %94 = load i64, i64* %6, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %96, %54, %50
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @check_vrfb_fb_size(i64, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @shrink_height(i64, %struct.fb_var_screeninfo*) #1

declare dso_local i64 @omap_vrfb_max_height(i64, i32, i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @shrink_width(i64, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
