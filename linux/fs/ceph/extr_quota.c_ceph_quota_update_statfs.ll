; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_ceph_quota_update_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_ceph_quota_update_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_fs_client = type { %struct.TYPE_2__*, %struct.ceph_mds_client* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.kstatfs = type { i32, i32, i32 }
%struct.ceph_inode_info = type { i32, i32, i32 }
%struct.ceph_snap_realm = type { i32, i64 }
%struct.inode = type { i32 }

@CEPH_BLOCK_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_quota_update_statfs(%struct.ceph_fs_client* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_fs_client*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.ceph_mds_client*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca %struct.ceph_snap_realm*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %14 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %14, i32 0, i32 1
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %15, align 8
  store %struct.ceph_mds_client* %16, %struct.ceph_mds_client** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %21 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @d_inode(i32 %25)
  %27 = call %struct.ceph_snap_realm* @get_quota_realm(%struct.ceph_mds_client* %20, i32 %26, i32 1)
  store %struct.ceph_snap_realm* %27, %struct.ceph_snap_realm** %8, align 8
  %28 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %28, i32 0, i32 0
  %30 = call i32 @up_read(i32* %29)
  %31 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %32 = icmp ne %struct.ceph_snap_realm* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

34:                                               ; preds = %2
  %35 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %36 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %39 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %44 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.inode* @igrab(i64 %45)
  br label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi %struct.inode* [ %46, %42 ], [ null, %47 ]
  store %struct.inode* %49, %struct.inode** %9, align 8
  %50 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %51 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = icmp ne %struct.inode* %53, null
  br i1 %54, label %55, label %105

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %56)
  store %struct.ceph_inode_info* %57, %struct.ceph_inode_info** %7, align 8
  %58 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %59 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %58, i32 0, i32 2
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %62 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %55
  %66 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %67 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %72 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CEPH_BLOCK_SHIFT, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  br label %84

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i32 [ %82, %79 ], [ 0, %83 ]
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %55
  %87 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %88 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %87, i32 0, i32 2
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %95 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %98 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %92, %86
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = call i32 @iput(%struct.inode* %103)
  br label %105

105:                                              ; preds = %102, %48
  %106 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %107 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %8, align 8
  %108 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %106, %struct.ceph_snap_realm* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %33
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ceph_snap_realm* @get_quota_realm(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @igrab(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
