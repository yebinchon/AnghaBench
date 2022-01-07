; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_parse_subvol_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_parse_subvol_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"BTRFS: 'subvolrootid' mount option is deprecated and has no effect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*)* @btrfs_parse_subvol_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_parse_subvol_options(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

33:                                               ; preds = %24
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %11, align 8
  br label %35

35:                                               ; preds = %79, %42, %33
  %36 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %35

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* @tokens, align 4
  %46 = call i32 @match_token(i8* %44, i32 %45, i32* %20)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  switch i32 %47, label %78 [
    i32 130, label %48
    i32 129, label %62
    i32 128, label %76
  ]

48:                                               ; preds = %43
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = getelementptr inbounds i32, i32* %20, i64 0
  %53 = call i8* @match_strdup(i32* %52)
  %54 = load i8**, i8*** %6, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  br label %81

61:                                               ; preds = %48
  br label %79

62:                                               ; preds = %43
  %63 = getelementptr inbounds i32, i32* %20, i64 0
  %64 = call i32 @match_u64(i32* %63, i32* %14)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  br label %79

76:                                               ; preds = %43
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %79

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78, %76, %73, %61
  br label %35

80:                                               ; preds = %35
  br label %81

81:                                               ; preds = %80, %67, %58
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

85:                                               ; preds = %81, %30, %23
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @match_u64(i32*, i32*) #2

declare dso_local i32 @pr_warn(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
