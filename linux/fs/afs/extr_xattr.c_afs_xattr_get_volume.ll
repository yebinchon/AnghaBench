; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_volume.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @afs_xattr_get_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_get_volume(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %17)
  store %struct.afs_vnode* %18, %struct.afs_vnode** %14, align 8
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i64, i64* %16, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %45

31:                                               ; preds = %6
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ERANGE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %45

38:                                               ; preds = %31
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  %43 = load i64, i64* %16, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38, %35, %28
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
