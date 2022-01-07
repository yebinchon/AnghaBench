; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_get_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_get_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.hvfb_par* }
%struct.hvfb_par = type { i64 }

@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Screen option is invalid: skipped\0A\00", align 1
@HVFB_WIDTH_MIN = common dso_local global i32 0, align 4
@HVFB_HEIGHT_MIN = common dso_local global i32 0, align 4
@SYNTHVID_VERSION_WIN8 = common dso_local global i64 0, align 8
@screen_depth = common dso_local global i32 0, align 4
@SYNTHVID_FB_SIZE_WIN8 = common dso_local global i32 0, align 4
@SYNTHVID_VERSION_WIN7 = common dso_local global i64 0, align 8
@SYNTHVID_WIDTH_MAX_WIN7 = common dso_local global i32 0, align 4
@SYNTHVID_HEIGHT_MAX_WIN7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Screen resolution option is out of range: skipped\0A\00", align 1
@screen_width = common dso_local global i32 0, align 4
@screen_height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @hvfb_get_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvfb_get_option(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.hvfb_par*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.hvfb_par*, %struct.hvfb_par** %9, align 8
  store %struct.hvfb_par* %10, %struct.hvfb_par** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @KBUILD_MODNAME, align 4
  %12 = call i64 @fb_get_options(i32 %11, i8** %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %14, %1
  br label %86

22:                                               ; preds = %17
  %23 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @kstrtouint(i8* %28, i32 0, i32* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @kstrtouint(i8* %39, i32 0, i32* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %31, %27, %22
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %86

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HVFB_WIDTH_MIN, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %81, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @HVFB_HEIGHT_MIN, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %81, label %52

52:                                               ; preds = %48
  %53 = load %struct.hvfb_par*, %struct.hvfb_par** %3, align 8
  %54 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SYNTHVID_VERSION_WIN8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* @screen_depth, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sdiv i32 %63, 8
  %65 = load i32, i32* @SYNTHVID_FB_SIZE_WIN8, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %58, %52
  %68 = load %struct.hvfb_par*, %struct.hvfb_par** %3, align 8
  %69 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SYNTHVID_VERSION_WIN7, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SYNTHVID_WIDTH_MAX_WIN7, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SYNTHVID_HEIGHT_MAX_WIN7, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73, %58, %48, %44
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %86

83:                                               ; preds = %77, %67
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* @screen_width, align 4
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* @screen_height, align 4
  br label %86

86:                                               ; preds = %83, %81, %42, %21
  ret void
}

declare dso_local i64 @fb_get_options(i32, i8**) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
