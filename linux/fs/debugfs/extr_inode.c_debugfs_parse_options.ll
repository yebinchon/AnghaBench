; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debugfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_mount_opts = type { i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@DEBUGFS_DEFAULT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.debugfs_mount_opts*)* @debugfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_parse_options(i8* %0, %struct.debugfs_mount_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debugfs_mount_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.debugfs_mount_opts* %1, %struct.debugfs_mount_opts** %5, align 8
  %14 = load i32, i32* @MAX_OPT_ARGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @DEBUGFS_DEFAULT_MODE, align 4
  %19 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %20 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %89, %28, %2
  %22 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %90

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %21

29:                                               ; preds = %24
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @tokens, align 4
  %32 = call i32 @match_token(i8* %30, i32 %31, i32* %17)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %89 [
    i32 128, label %34
    i32 130, label %55
    i32 129, label %76
  ]

34:                                               ; preds = %29
  %35 = getelementptr inbounds i32, i32* %17, i64 0
  %36 = call i32 @match_int(i32* %35, i32* %8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %91

41:                                               ; preds = %34
  %42 = call i32 (...) @current_user_ns()
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @make_kuid(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @uid_valid(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %91

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %54 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %89

55:                                               ; preds = %29
  %56 = getelementptr inbounds i32, i32* %17, i64 0
  %57 = call i32 @match_int(i32* %56, i32* %8)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %91

62:                                               ; preds = %55
  %63 = call i32 (...) @current_user_ns()
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @make_kgid(i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @gid_valid(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %91

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %75 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %89

76:                                               ; preds = %29
  %77 = getelementptr inbounds i32, i32* %17, i64 0
  %78 = call i32 @match_octal(i32* %77, i32* %8)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %91

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @S_IALLUGO, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.debugfs_mount_opts*, %struct.debugfs_mount_opts** %5, align 8
  %88 = getelementptr inbounds %struct.debugfs_mount_opts, %struct.debugfs_mount_opts* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %29, %83, %72, %51
  br label %21

90:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %80, %69, %59, %48, %38
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
