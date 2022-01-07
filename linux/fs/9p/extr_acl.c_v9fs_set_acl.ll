; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.posix_acl = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_fid*, i32, %struct.posix_acl*)* @v9fs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_set_acl(%struct.p9_fid* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  %12 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %13 = icmp ne %struct.posix_acl* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %17 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @posix_acl_xattr_size(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %15
  %29 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %29, i8* %30, i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %50

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %40
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %39, i8** %9, align 8
  br label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %41, i8** %9, align 8
  br label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %40, %38
  %45 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @v9fs_fid_xattr_set(%struct.p9_fid* %45, i8* %46, i8* %47, i64 %48, i32 0)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %35
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %25, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @v9fs_fid_xattr_set(%struct.p9_fid*, i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
