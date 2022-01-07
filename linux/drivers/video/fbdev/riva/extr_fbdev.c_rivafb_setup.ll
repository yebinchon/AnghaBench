; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"forceCRTC\00", align 1
@forceCRTC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"flatpanel\00", align 1
@flatpanel = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"backlight:\00", align 1
@backlight = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@nomtrr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"strictmode\00", align 1
@strictmode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@noaccel = common dso_local global i32 0, align 4
@mode_option = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rivafb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @NVTRACE_ENTER()
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %84

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %81, %33, %14
  %16 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %82

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 9
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %22
  br label %15

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  store i32 %38, i32* @forceCRTC, align 4
  %39 = load i32, i32* @forceCRTC, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @forceCRTC, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %34
  store i32 -1, i32* @forceCRTC, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %81

46:                                               ; preds = %18
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 1, i32* @flatpanel, align 4
  br label %80

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 10
  %58 = call i32 @simple_strtoul(i8* %57, i32* null, i32 0)
  store i32 %58, i32* @backlight, align 4
  br label %79

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 1, i32* @nomtrr, align 4
  br label %78

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 1, i32* @strictmode, align 4
  br label %77

69:                                               ; preds = %64
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 1, i32* @noaccel, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i8*, i8** %4, align 8
  store i8* %75, i8** @mode_option, align 8
  br label %76

76:                                               ; preds = %74, %73
  br label %77

77:                                               ; preds = %76, %68
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %45
  br label %15

82:                                               ; preds = %15
  %83 = call i32 (...) @NVTRACE_LEAVE()
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
