; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_extract_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_extract_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@HEX = common dso_local global i8 0, align 1
@DECIMAL = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Length of input: %d exceeds max_length: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_param(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %16, %5
  store i32 -1, i32* %6, align 4
  br label %89

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strstr(i8* %27, i8* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %89

33:                                               ; preds = %26
  %34 = load i8*, i8** %12, align 8
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %89

39:                                               ; preds = %33
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 48
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 120
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 88
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %46
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %12, align 8
  %61 = load i8, i8* @HEX, align 1
  %62 = load i8*, i8** %11, align 8
  store i8 %61, i8* %62, align 1
  br label %66

63:                                               ; preds = %52, %39
  %64 = load i8, i8* @DECIMAL, align 1
  %65 = load i8*, i8** %11, align 8
  store i8 %64, i8* %65, align 1
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @strlen_semi(i8* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %6, align 4
  br label %89

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  store i32 -1, i32* %6, align 4
  br label %89

80:                                               ; preds = %72
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @memcpy(i8* %81, i8* %82, i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 0, i8* %88, align 1
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %80, %76, %71, %38, %32, %25
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen_semi(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
