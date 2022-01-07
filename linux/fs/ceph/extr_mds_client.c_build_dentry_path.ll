; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_build_dentry_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_build_dentry_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.inode = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, i8**, i32*, i32*, i32*, i32)* @build_dentry_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_dentry_path(%struct.dentry* %0, %struct.inode* %1, i8** %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.inode* @d_inode_rcu(i32 %23)
  store %struct.inode* %24, %struct.inode** %10, align 8
  br label %25

25:                                               ; preds = %20, %7
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call i64 @ceph_snap(%struct.inode* %32)
  %34 = load i64, i64* @CEPH_NOSNAP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = call i32 @ceph_ino(%struct.inode* %37)
  %39 = load i32*, i32** %13, align 8
  store i32 %38, i32* %39, align 4
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %11, align 8
  store i8* %44, i8** %45, align 8
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %8, align 4
  br label %67

51:                                               ; preds = %31, %28, %25
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i8* @ceph_mdsc_build_path(%struct.dentry* %53, i32* %54, i32* %55, i32 1)
  store i8* %56, i8** %16, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %8, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load i8*, i8** %16, align 8
  %65 = load i8**, i8*** %11, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** %14, align 8
  store i32 1, i32* %66, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %60, %36
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inode* @d_inode_rcu(i32) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @ceph_mdsc_build_path(%struct.dentry*, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
