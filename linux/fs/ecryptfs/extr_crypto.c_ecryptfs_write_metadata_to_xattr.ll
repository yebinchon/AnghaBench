; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_write_metadata_to_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_write_metadata_to_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@IOP_XATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ECRYPTFS_XATTR_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, i8*, i64)* @ecryptfs_write_metadata_to_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_write_metadata_to_xattr(%struct.dentry* %0, %struct.inode* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %10, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %11, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IOP_XATTR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = call i32 @inode_lock(%struct.inode* %26)
  %28 = load %struct.dentry*, %struct.dentry** %10, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = load i32, i32* @ECRYPTFS_XATTR_NAME, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @__vfs_setxattr(%struct.dentry* %28, %struct.inode* %29, i32 %30, i8* %31, i64 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %25
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @fsstack_copy_attr_all(%struct.inode* %40, %struct.inode* %41)
  br label %43

43:                                               ; preds = %39, %36, %25
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call i32 @inode_unlock(%struct.inode* %44)
  br label %46

46:                                               ; preds = %43, %22
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @__vfs_setxattr(%struct.dentry*, %struct.inode*, i32, i8*, i64, i32) #1

declare dso_local i32 @fsstack_copy_attr_all(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
