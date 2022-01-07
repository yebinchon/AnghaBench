; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_cmdline.c_fb_get_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fb_cmdline.c_fb_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofonly = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"offb\00", align 1
@FB_MAX = common dso_local global i32 0, align 4
@video_options = common dso_local global i8** null, align 8
@fb_mode_option = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fb_get_options(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* @ofonly, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %17, %14, %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %81, label %28

28:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %77, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FB_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %29
  %34 = load i8**, i8*** @video_options, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %77

41:                                               ; preds = %33
  %42 = load i8**, i8*** @video_options, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %77

51:                                               ; preds = %41
  %52 = load i8**, i8*** @video_options, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @strncmp(i8* %57, i8* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %51
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** %6, align 8
  br label %76

76:                                               ; preds = %70, %62, %51
  br label %77

77:                                               ; preds = %76, %50, %40
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %29

80:                                               ; preds = %29
  br label %81

81:                                               ; preds = %80, %25, %22
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load i8**, i8*** %4, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i64, i64* @fb_mode_option, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i64, i64* @fb_mode_option, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kstrdup(i64 %91, i32 %92)
  store i8* %93, i8** %6, align 8
  br label %94

94:                                               ; preds = %90, %87, %84, %81
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @strncmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %97, %94
  %103 = load i8**, i8*** %4, align 8
  %104 = icmp ne i8** %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = load i8**, i8*** %4, align 8
  store i8* %106, i8** %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @kstrdup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
