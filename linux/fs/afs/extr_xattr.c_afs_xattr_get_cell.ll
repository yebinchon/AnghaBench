; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_cell.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.afs_cell* }
%struct.afs_cell = type { i64, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @afs_xattr_get_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_get_cell(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca %struct.afs_cell*, align 8
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
  %23 = load %struct.afs_cell*, %struct.afs_cell** %22, align 8
  store %struct.afs_cell* %23, %struct.afs_cell** %15, align 8
  %24 = load %struct.afs_cell*, %struct.afs_cell** %15, align 8
  %25 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i64, i64* %16, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %48

32:                                               ; preds = %6
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ERANGE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.afs_cell*, %struct.afs_cell** %15, align 8
  %42 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %16, align 8
  %45 = call i32 @memcpy(i8* %40, i32 %43, i64 %44)
  %46 = load i64, i64* %16, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %39, %36, %29
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
