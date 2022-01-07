; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_xattr.c_v9fs_fid_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_xattr.c_v9fs_fid_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.kvec = type { i8*, i64 }
%struct.iov_iter = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"name = %s value_len = %zu flags = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"p9_client_xattrcreate failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_fid_xattr_set(%struct.p9_fid* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvec, align 8
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 1
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %18, align 8
  %20 = load i32, i32* @WRITE, align 4
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @iov_iter_kvec(%struct.iov_iter* %13, i32 %20, %struct.kvec* %12, i32 1, i64 %21)
  %23 = load i32, i32* @P9_DEBUG_VFS, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i32, i8*, ...) @p9_debug(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25, i32 %26)
  %28 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %29 = call %struct.p9_fid* @clone_fid(%struct.p9_fid* %28)
  store %struct.p9_fid* %29, %struct.p9_fid** %7, align 8
  %30 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %31 = call i64 @IS_ERR(%struct.p9_fid* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.p9_fid* %34)
  store i32 %35, i32* %6, align 4
  br label %63

36:                                               ; preds = %5
  %37 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @p9_client_xattrcreate(%struct.p9_fid* %37, i8* %38, i64 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @P9_DEBUG_VFS, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 (i32, i8*, ...) @p9_debug(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %51

48:                                               ; preds = %36
  %49 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %50 = call i32 @p9_client_write(%struct.p9_fid* %49, i32 0, %struct.iov_iter* %13, i32* %14)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %53 = call i32 @p9_client_clunk(%struct.p9_fid* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %56, %51
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %33
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_fid* @clone_fid(%struct.p9_fid*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_xattrcreate(%struct.p9_fid*, i8*, i64, i32) #1

declare dso_local i32 @p9_client_write(%struct.p9_fid*, i32, %struct.iov_iter*, i32*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
