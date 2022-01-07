; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcloop_ctrl_options = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@opt_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"unknown parameter or missing value '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcloop_ctrl_options*, i8*)* @fcloop_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcloop_parse_options(%struct.fcloop_ctrl_options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fcloop_ctrl_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.fcloop_ctrl_options* %0, %struct.fcloop_ctrl_options** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kstrdup(i8* %19, i32 %20)
  store i8* %21, i8** %9, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %117

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %111, %35, %27
  %29 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %112

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %28

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @opt_tokens, align 4
  %39 = call i32 @match_token(i8* %37, i32 %38, i32* %18)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %42 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %11, align 4
  switch i32 %45, label %106 [
    i32 129, label %46
    i32 128, label %56
    i32 130, label %66
    i32 133, label %76
    i32 132, label %86
    i32 131, label %96
  ]

46:                                               ; preds = %36
  %47 = call i32 @match_u64(i32* %18, i8** %13)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %113

52:                                               ; preds = %46
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %55 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  br label %111

56:                                               ; preds = %36
  %57 = call i32 @match_u64(i32* %18, i8** %13)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %113

62:                                               ; preds = %56
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %65 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  br label %111

66:                                               ; preds = %36
  %67 = call i32 @match_int(i32* %18, i32* %11)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %113

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %75 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %111

76:                                               ; preds = %36
  %77 = call i32 @match_hex(i32* %18, i32* %11)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %113

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %85 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %111

86:                                               ; preds = %36
  %87 = call i32 @match_u64(i32* %18, i8** %13)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %113

92:                                               ; preds = %86
  %93 = load i8*, i8** %13, align 8
  %94 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %95 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  br label %111

96:                                               ; preds = %36
  %97 = call i32 @match_u64(i32* %18, i8** %13)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %12, align 4
  br label %113

102:                                              ; preds = %96
  %103 = load i8*, i8** %13, align 8
  %104 = load %struct.fcloop_ctrl_options*, %struct.fcloop_ctrl_options** %4, align 8
  %105 = getelementptr inbounds %struct.fcloop_ctrl_options, %struct.fcloop_ctrl_options* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  br label %111

106:                                              ; preds = %36
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %113

111:                                              ; preds = %102, %92, %82, %72, %62, %52
  br label %28

112:                                              ; preds = %28
  br label %113

113:                                              ; preds = %112, %106, %99, %89, %79, %69, %59, %49
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @kfree(i8* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %117

117:                                              ; preds = %113, %24
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_u64(i32*, i8**) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @match_hex(i32*, i32*) #2

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
