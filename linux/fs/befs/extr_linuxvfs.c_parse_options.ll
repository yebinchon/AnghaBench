; ModuleID = '/home/carl/AnghaBench/linux/fs/befs/extr_linuxvfs.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/befs/extr_linuxvfs.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.befs_mount_options = type { i32, i32, i32, i32*, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@befs_tokens = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid uid %d, using default\0A\00", align 1
@INVALID_GID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid gid %d, using default\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"allocation failure for iocharset string\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.befs_mount_options*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.befs_mount_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.befs_mount_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.befs_mount_options* %1, %struct.befs_mount_options** %5, align 8
  %14 = load i32, i32* @MAX_OPT_ARGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %19 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %20 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %22 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %23 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %25 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %27 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %29 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %31 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %123, %43, %35
  %37 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %124

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %36

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @befs_tokens, align 4
  %47 = call i32 @match_token(i8* %45, i32 %46, i32* %17)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  switch i32 %48, label %120 [
    i32 128, label %49
    i32 129, label %75
    i32 131, label %101
    i32 130, label %117
  ]

49:                                               ; preds = %44
  %50 = getelementptr inbounds i32, i32* %17, i64 0
  %51 = call i32 @match_int(i32* %50, i32* %9)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

54:                                               ; preds = %49
  %55 = load i32, i32* @INVALID_UID, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 (...) @current_user_ns()
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @make_kuid(i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @uid_valid(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %123

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %72 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %74 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %123

75:                                               ; preds = %44
  %76 = getelementptr inbounds i32, i32* %17, i64 0
  %77 = call i32 @match_int(i32* %76, i32* %9)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

80:                                               ; preds = %75
  %81 = load i32, i32* @INVALID_GID, align 4
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = call i32 (...) @current_user_ns()
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @make_kgid(i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @gid_valid(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %123

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %98 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %100 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %123

101:                                              ; preds = %44
  %102 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %103 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = getelementptr inbounds i32, i32* %17, i64 0
  %107 = call i32* @match_strdup(i32* %106)
  %108 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %109 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %108, i32 0, i32 3
  store i32* %107, i32** %109, align 8
  %110 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %111 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

116:                                              ; preds = %101
  br label %123

117:                                              ; preds = %44
  %118 = load %struct.befs_mount_options*, %struct.befs_mount_options** %5, align 8
  %119 = getelementptr inbounds %struct.befs_mount_options, %struct.befs_mount_options* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  br label %123

120:                                              ; preds = %44
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

123:                                              ; preds = %117, %116, %95, %92, %69, %66
  br label %36

124:                                              ; preds = %36
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %120, %114, %79, %53, %34
  %126 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32* @match_strdup(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
