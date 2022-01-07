; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_xattr_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_xattr_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.posix_acl = type { i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@V9FS_ACCESS_CLIENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @v9fs_xattr_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_xattr_get_acl(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.v9fs_session_info*, align 8
  %15 = alloca %struct.posix_acl*, align 8
  %16 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %17)
  store %struct.v9fs_session_info* %18, %struct.v9fs_session_info** %14, align 8
  %19 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %14, align 8
  %20 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @V9FS_ACCESS_CLIENT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.dentry*, %struct.dentry** %9, align 8
  %28 = load %struct.xattr_handler*, %struct.xattr_handler** %8, align 8
  %29 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @v9fs_xattr_get(%struct.dentry* %27, i32 %30, i8* %31, i64 %32)
  store i32 %33, i32* %7, align 4
  br label %60

34:                                               ; preds = %6
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = load %struct.xattr_handler*, %struct.xattr_handler** %8, align 8
  %37 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.posix_acl* @v9fs_get_cached_acl(%struct.inode* %35, i32 %38)
  store %struct.posix_acl* %39, %struct.posix_acl** %15, align 8
  %40 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %41 = call i64 @IS_ERR(%struct.posix_acl* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %45 = call i32 @PTR_ERR(%struct.posix_acl* %44)
  store i32 %45, i32* %7, align 4
  br label %60

46:                                               ; preds = %34
  %47 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %48 = icmp eq %struct.posix_acl* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %60

52:                                               ; preds = %46
  %53 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %53, i8* %54, i64 %55)
  store i32 %56, i32* %16, align 4
  %57 = load %struct.posix_acl*, %struct.posix_acl** %15, align 8
  %58 = call i32 @posix_acl_release(%struct.posix_acl* %57)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %52, %49, %43, %26
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local i32 @v9fs_xattr_get(%struct.dentry*, i32, i8*, i64) #1

declare dso_local %struct.posix_acl* @v9fs_get_cached_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
