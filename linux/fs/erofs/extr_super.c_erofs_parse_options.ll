; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_super.c_erofs_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_super.c_erofs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@erofs_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"user_xattr options not supported\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"nouser_xattr options not supported\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"acl options not supported\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"noacl options not supported\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Unrecognized mount option \22%s\22 or missing value\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@POSIX_ACL = common dso_local global i32 0, align 4
@XATTR_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @erofs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_parse_options(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.TYPE_4__, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %63, %27, %19
  %21 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %64

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %20

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @erofs_tokens, align 4
  %35 = call i32 @match_token(i8* %33, i32 %34, %struct.TYPE_4__* %15)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %57 [
    i32 128, label %37
    i32 129, label %40
    i32 132, label %43
    i32 130, label %46
    i32 131, label %49
  ]

37:                                               ; preds = %28
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = call i32 @erofs_info(%struct.super_block* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %63

40:                                               ; preds = %28
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = call i32 @erofs_info(%struct.super_block* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %63

43:                                               ; preds = %28
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = call i32 @erofs_info(%struct.super_block* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %63

46:                                               ; preds = %28
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = call i32 @erofs_info(%struct.super_block* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %63

49:                                               ; preds = %28
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = call i32 @erofs_build_cache_strategy(%struct.super_block* %50, %struct.TYPE_4__* %15)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

56:                                               ; preds = %49
  br label %63

57:                                               ; preds = %28
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @erofs_err(%struct.super_block* %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

63:                                               ; preds = %56, %46, %43, %40, %37
  br label %20

64:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %57, %54, %18
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @erofs_info(%struct.super_block*, i8*) #2

declare dso_local i32 @erofs_build_cache_strategy(%struct.super_block*, %struct.TYPE_4__*) #2

declare dso_local i32 @erofs_err(%struct.super_block*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
