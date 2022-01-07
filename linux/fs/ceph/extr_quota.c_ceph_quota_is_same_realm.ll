; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_ceph_quota_is_same_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_ceph_quota_is_same_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_snap_realm = type { i32 }
%struct.TYPE_2__ = type { %struct.ceph_mds_client* }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_quota_is_same_realm(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ceph_mds_client*, align 8
  %6 = alloca %struct.ceph_snap_realm*, align 8
  %7 = alloca %struct.ceph_snap_realm*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %11, align 8
  store %struct.ceph_mds_client* %12, %struct.ceph_mds_client** %5, align 8
  br label %13

13:                                               ; preds = %38, %2
  %14 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.ceph_snap_realm* @get_quota_realm(%struct.ceph_mds_client* %17, %struct.inode* %18, i32 1)
  store %struct.ceph_snap_realm* %19, %struct.ceph_snap_realm** %6, align 8
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.ceph_snap_realm* @get_quota_realm(%struct.ceph_mds_client* %20, %struct.inode* %21, i32 0)
  store %struct.ceph_snap_realm* %22, %struct.ceph_snap_realm** %7, align 8
  %23 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %24 = call i32 @PTR_ERR(%struct.ceph_snap_realm* %23)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %13
  %29 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %29, i32 0, i32 0
  %31 = call i32 @up_read(i32* %30)
  %32 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %33 = icmp ne %struct.ceph_snap_realm* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %36 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %37 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %35, %struct.ceph_snap_realm* %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %41 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %42 = icmp eq %struct.ceph_snap_realm* %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %45 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %44, i32 0, i32 0
  %46 = call i32 @up_read(i32* %45)
  %47 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %48 = icmp ne %struct.ceph_snap_realm* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %51 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %52 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %50, %struct.ceph_snap_realm* %51)
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %55 = icmp ne %struct.ceph_snap_realm* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %58 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %59 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %57, %struct.ceph_snap_realm* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ceph_snap_realm* @get_quota_realm(%struct.ceph_mds_client*, %struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_snap_realm*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
