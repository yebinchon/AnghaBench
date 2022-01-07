; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_xattr.c_v9fs_fid_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_xattr.c_v9fs_fid_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.kvec = type { i8*, i64 }
%struct.iov_iter = type { i32 }

@READ = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"p9_client_attrwalk failed %zd\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_fid_xattr_get(%struct.p9_fid* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.p9_fid*, align 8
  %13 = alloca %struct.kvec, align 8
  %14 = alloca %struct.iov_iter, align 4
  %15 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 0
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %18, align 8
  %20 = load i32, i32* @READ, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @iov_iter_kvec(%struct.iov_iter* %14, i32 %20, %struct.kvec* %13, i32 1, i64 %21)
  %23 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.p9_fid* @p9_client_xattrwalk(%struct.p9_fid* %23, i8* %24, i64* %11)
  store %struct.p9_fid* %25, %struct.p9_fid** %12, align 8
  %26 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %27 = call i64 @IS_ERR(%struct.p9_fid* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.p9_fid* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @P9_DEBUG_VFS, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @p9_debug(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %4
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %60

50:                                               ; preds = %36
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @iov_iter_truncate(%struct.iov_iter* %14, i64 %51)
  %53 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %54 = call i32 @p9_client_read(%struct.p9_fid* %53, i32 0, %struct.iov_iter* %14, i32* %15)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57, %50
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %62 = call i32 @p9_client_clunk(%struct.p9_fid* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %29
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local %struct.p9_fid* @p9_client_xattrwalk(%struct.p9_fid*, i8*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_debug(i32, i8*, i32) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i64) #1

declare dso_local i32 @p9_client_read(%struct.p9_fid*, i32, %struct.iov_iter*, i32*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
