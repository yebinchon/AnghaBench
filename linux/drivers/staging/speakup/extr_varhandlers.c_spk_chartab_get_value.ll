; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_chartab_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_varhandlers.c_spk_chartab_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@ALPHA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"B_CTL\00", align 1
@B_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"WDLM\00", align 1
@WDLM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"A_PUNC\00", align 1
@A_PUNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"PUNC\00", align 1
@PUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"NUM\00", align 1
@NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"A_CAP\00", align 1
@A_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"B_CAPSYM\00", align 1
@B_CAPSYM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"B_SYM\00", align 1
@B_SYM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spk_chartab_get_value(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ALPHA, align 4
  store i32 %8, i32* %3, align 4
  br label %65

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @B_CTL, align 4
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @WDLM, align 4
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @A_PUNC, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @PUNC, align 4
  store i32 %32, i32* %3, align 4
  br label %61

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @NUM, align 4
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @A_CAP, align 4
  store i32 %44, i32* %3, align 4
  br label %59

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @B_CAPSYM, align 4
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %45
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @B_SYM, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %31
  br label %62

62:                                               ; preds = %61, %25
  br label %63

63:                                               ; preds = %62, %19
  br label %64

64:                                               ; preds = %63, %13
  br label %65

65:                                               ; preds = %64, %7
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
