; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vesafb.c_vesafb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vesafb.c_vesafb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@inverse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"redraw\00", align 1
@ypan = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ypan\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ywrap\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"vgapal\00", align 1
@pmi_setpal = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"pmipal\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mtrr:\00", align 1
@mtrr = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vtotal:\00", align 1
@vram_total = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"vremap:\00", align 1
@vram_remap = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vesafb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesafb_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %91

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %89, %20, %12
  %14 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %90

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %13

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* @inverse, align 4
  br label %89

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* @ypan, align 4
  br label %88

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* @ypan, align 4
  br label %87

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 2, i32* @ypan, align 4
  br label %86

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* @pmi_setpal, align 4
  br label %85

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 1, i32* @pmi_setpal, align 4
  br label %84

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  %58 = call i8* @simple_strtoul(i8* %57, i32* null, i32 0)
  store i8* %58, i8** @mtrr, align 8
  br label %83

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i8* null, i8** @mtrr, align 8
  br label %82

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strncmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = call i8* @simple_strtoul(i8* %70, i32* null, i32 0)
  store i8* %71, i8** @vram_total, align 8
  br label %81

72:                                               ; preds = %64
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  %79 = call i8* @simple_strtoul(i8* %78, i32* null, i32 0)
  store i8* %79, i8** @vram_remap, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %68
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %45
  br label %86

86:                                               ; preds = %85, %40
  br label %87

87:                                               ; preds = %86, %35
  br label %88

88:                                               ; preds = %87, %30
  br label %89

89:                                               ; preds = %88, %25
  br label %13

90:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %11
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
