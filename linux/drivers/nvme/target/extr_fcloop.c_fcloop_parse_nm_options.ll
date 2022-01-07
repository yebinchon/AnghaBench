; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_parse_nm_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_parse_nm_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@opt_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unknown parameter or missing value '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32*, i8*)* @fcloop_parse_nm_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_parse_nm_options(%struct.device* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i32, i32* @MAX_OPT_ARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 -1, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 -1, i32* %24, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %13, align 8
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %94

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %70, %41, %33
  %35 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %34

42:                                               ; preds = %37
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* @opt_tokens, align 4
  %45 = call i32 @match_token(i8* %43, i32 %44, i32* %22)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  switch i32 %46, label %65 [
    i32 129, label %47
    i32 128, label %56
  ]

47:                                               ; preds = %42
  %48 = call i32 @match_u64(i32* %22, i32* %17)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %16, align 4
  br label %72

53:                                               ; preds = %47
  %54 = load i32, i32* %17, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %70

56:                                               ; preds = %42
  %57 = call i32 @match_u64(i32* %22, i32* %17)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  br label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %17, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %70

65:                                               ; preds = %42
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %16, align 4
  br label %72

70:                                               ; preds = %62, %53
  br label %34

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71, %65, %59, %50
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %94

84:                                               ; preds = %77
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %94

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %72
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %94

94:                                               ; preds = %92, %88, %81, %30
  %95 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_u64(i32*, i32*) #2

declare dso_local i32 @pr_warn(i8*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
