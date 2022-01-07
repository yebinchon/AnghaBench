; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IOP_XATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_setxattr(%struct.dentry* %0, %struct.inode* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %14, align 8
  %17 = load %struct.dentry*, %struct.dentry** %14, align 8
  %18 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IOP_XATTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  br label %45

27:                                               ; preds = %6
  %28 = load %struct.dentry*, %struct.dentry** %14, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @vfs_setxattr(%struct.dentry* %28, i8* %29, i8* %30, i64 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %14, align 8
  %42 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %41)
  %43 = call i32 @fsstack_copy_attr_all(%struct.inode* %40, %struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %39, %36, %27
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %13, align 4
  ret i32 %46
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.TYPE_3__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @vfs_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @fsstack_copy_attr_all(%struct.inode*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
