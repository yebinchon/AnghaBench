; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_encode_snapfh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_encode_snapfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_nfs_snapfh = type { i64, i8*, i64, i8* }
%struct.dentry = type { i32 }

@ceph_encode_snapfh.snap_handle_length = internal constant i32 8, align 4
@FILEID_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"encode_snapfh %llx.%llx ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @ceph_encode_snapfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_encode_snapfh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ceph_nfs_snapfh*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.ceph_nfs_snapfh*
  store %struct.ceph_nfs_snapfh* %17, %struct.ceph_nfs_snapfh** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i64 @ceph_snap(%struct.inode* %18)
  store i64 %19, i64* %10, align 8
  store i32 1, i32* %12, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  store i32 8, i32* %24, align 4
  %25 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %25, i32* %11, align 4
  br label %90

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @CEPH_SNAPDIR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call %struct.dentry* @d_find_alias(%struct.inode* %33)
  store %struct.dentry* %34, %struct.dentry** %14, align 8
  %35 = load %struct.dentry*, %struct.dentry** %14, align 8
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %90

38:                                               ; preds = %32
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load %struct.dentry*, %struct.dentry** %14, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.inode* @d_inode_rcu(i32 %42)
  store %struct.inode* %43, %struct.inode** %13, align 8
  %44 = load %struct.inode*, %struct.inode** %13, align 8
  %45 = call i64 @ceph_snap(%struct.inode* %44)
  %46 = load i64, i64* @CEPH_SNAPDIR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.inode*, %struct.inode** %13, align 8
  %50 = call i8* @ceph_ino(%struct.inode* %49)
  %51 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %52 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %13, align 8
  %54 = load %struct.dentry*, %struct.dentry** %14, align 8
  %55 = call i64 @ceph_dentry_hash(%struct.inode* %53, %struct.dentry* %54)
  %56 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %57 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %48, %38
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load %struct.dentry*, %struct.dentry** %14, align 8
  %61 = call i32 @dput(%struct.dentry* %60)
  br label %62

62:                                               ; preds = %58, %26
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @S_ISDIR(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %90

72:                                               ; preds = %65
  %73 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %74 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %77 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %79 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %62
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = call i8* @ceph_ino(%struct.inode* %81)
  %83 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %84 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %9, align 8
  %87 = getelementptr inbounds %struct.ceph_nfs_snapfh, %struct.ceph_nfs_snapfh* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32*, i32** %7, align 8
  store i32 8, i32* %88, align 4
  %89 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %80, %71, %37, %23
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = call i32 @ceph_vinop(%struct.inode* %91)
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inode* @d_inode_rcu(i32) #1

declare dso_local i8* @ceph_ino(%struct.inode*) #1

declare dso_local i64 @ceph_dentry_hash(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @dout(i8*, i32, i32) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
