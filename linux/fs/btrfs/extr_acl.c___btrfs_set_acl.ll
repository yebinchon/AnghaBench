; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_acl.c___btrfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_acl.c___btrfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.inode*, %struct.posix_acl*, i32)* @__btrfs_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_set_acl(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.posix_acl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.posix_acl* %2, %struct.posix_acl** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 128, label %18
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  store i8* %17, i8** %12, align 8
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISDIR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %26 = icmp ne %struct.posix_acl* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  store i32 %32, i32* %5, align 4
  br label %95

33:                                               ; preds = %18
  %34 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  store i8* %34, i8** %12, align 8
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %95

38:                                               ; preds = %33, %16
  %39 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %40 = icmp ne %struct.posix_acl* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %43 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @posix_acl_xattr_size(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = call i32 (...) @memalloc_nofs_save()
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kmalloc(i32 %47, i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @memalloc_nofs_restore(i32 %50)
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %83

57:                                               ; preds = %41
  %58 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %58, i8* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %83

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %68 = icmp ne %struct.btrfs_trans_handle* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %70, %struct.inode* %71, i8* %72, i8* %73, i32 %74, i32 0)
  store i32 %75, i32* %10, align 4
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @btrfs_setxattr_trans(%struct.inode* %77, i8* %78, i8* %79, i32 %80, i32 0)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82, %64, %54
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %92 = call i32 @set_cached_acl(%struct.inode* %89, i32 %90, %struct.posix_acl* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %35, %31
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @posix_acl_xattr_size(i32) #1

declare dso_local i32 @memalloc_nofs_save(...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memalloc_nofs_restore(i32) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i32) #1

declare dso_local i32 @btrfs_setxattr(%struct.btrfs_trans_handle*, %struct.inode*, i8*, i8*, i32, i32) #1

declare dso_local i32 @btrfs_setxattr_trans(%struct.inode*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
