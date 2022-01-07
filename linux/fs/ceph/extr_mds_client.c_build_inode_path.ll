; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_build_inode_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_build_inode_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8**, i32*, i32*, i32*)* @build_inode_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_inode_path(%struct.inode* %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @ceph_snap(%struct.inode* %14)
  %16 = load i64, i64* @CEPH_NOSNAP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call i32 @ceph_ino(%struct.inode* %19)
  %21 = load i32*, i32** %10, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %42

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.dentry* @d_find_alias(%struct.inode* %24)
  store %struct.dentry* %25, %struct.dentry** %12, align 8
  %26 = load %struct.dentry*, %struct.dentry** %12, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i8* @ceph_mdsc_build_path(%struct.dentry* %26, i32* %27, i32* %28, i32 1)
  store i8* %29, i8** %13, align 8
  %30 = load %struct.dentry*, %struct.dentry** %12, align 8
  %31 = call i32 @dput(%struct.dentry* %30)
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %6, align 4
  br label %42

38:                                               ; preds = %23
  %39 = load i8*, i8** %13, align 8
  %40 = load i8**, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** %11, align 8
  store i32 1, i32* %41, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %35, %18
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i8* @ceph_mdsc_build_path(%struct.dentry*, i32*, i32*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
