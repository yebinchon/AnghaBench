; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_xattr.c_afs_xattr_get_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%llx:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%x%016llx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c":%x\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)* @afs_xattr_get_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_xattr_get_fid(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xattr_handler*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca [51 x i8], align 16
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
  %19 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i64 %24, i64* %16, align 8
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %6
  %31 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %39 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i64, i64* %16, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %16, align 8
  br label %56

45:                                               ; preds = %6
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %50 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %16, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %16, align 8
  br label %56

56:                                               ; preds = %45, %30
  %57 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %16, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i64, i64* %16, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %86

72:                                               ; preds = %56
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @ERANGE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %86

79:                                               ; preds = %72
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @memcpy(i8* %80, i8* %81, i64 %82)
  %84 = load i64, i64* %16, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %79, %76, %69
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
