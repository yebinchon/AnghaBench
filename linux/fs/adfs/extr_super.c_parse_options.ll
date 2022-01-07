; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_sb_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"unrecognised mount option \22%s\22 or missing value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.adfs_sb_info*, i8*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(%struct.super_block* %0, %struct.adfs_sb_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.adfs_sb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.adfs_sb_info* %1, %struct.adfs_sb_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %118, %115, %17
  %19 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %119

21:                                               ; preds = %18
  %22 = load i32, i32* @MAX_OPT_ARGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 2, i32* %13, align 4
  br label %115

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @tokens, align 4
  %33 = call i32 @match_token(i8* %31, i32 %32, i32* %25)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %107 [
    i32 128, label %35
    i32 131, label %56
    i32 129, label %77
    i32 130, label %87
    i32 132, label %97
  ]

35:                                               ; preds = %30
  %36 = call i32 @match_int(i32* %25, i32* %9)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

41:                                               ; preds = %35
  %42 = call i32 (...) @current_user_ns()
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @make_kuid(i32 %42, i32 %43)
  %45 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %46 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @uid_valid(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

55:                                               ; preds = %41
  br label %114

56:                                               ; preds = %30
  %57 = call i32 @match_int(i32* %25, i32* %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

62:                                               ; preds = %56
  %63 = call i32 (...) @current_user_ns()
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @make_kgid(i32 %63, i32 %64)
  %66 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %67 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %69 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gid_valid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

76:                                               ; preds = %62
  br label %114

77:                                               ; preds = %30
  %78 = call i32 @match_octal(i32* %25, i32* %9)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %86 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %114

87:                                               ; preds = %30
  %88 = call i32 @match_octal(i32* %25, i32* %9)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %96 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %114

97:                                               ; preds = %30
  %98 = call i32 @match_int(i32* %25, i32* %9)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %106 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  br label %114

107:                                              ; preds = %30
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = load i32, i32* @KERN_ERR, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @adfs_msg(%struct.super_block* %108, i32 %109, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

114:                                              ; preds = %103, %93, %83, %76, %55
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %107, %100, %90, %80, %73, %59, %52, %38, %29
  %116 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %13, align 4
  switch i32 %117, label %122 [
    i32 0, label %118
    i32 2, label %18
    i32 1, label %120
  ]

118:                                              ; preds = %115
  br label %18

119:                                              ; preds = %18
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %115, %16
  %121 = load i32, i32* %4, align 4
  ret i32 %121

122:                                              ; preds = %115
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @match_octal(i32*, i32*) #1

declare dso_local i32 @adfs_msg(%struct.super_block*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
