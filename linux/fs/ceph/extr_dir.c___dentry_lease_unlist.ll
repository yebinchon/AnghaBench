; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dentry_lease_unlist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dentry_lease_unlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dentry_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.TYPE_4__ = type { %struct.ceph_mds_client* }

@CEPH_DENTRY_SHRINK_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_dentry_info*)* @__dentry_lease_unlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dentry_lease_unlist(%struct.ceph_dentry_info* %0) #0 {
  %2 = alloca %struct.ceph_dentry_info*, align 8
  %3 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_dentry_info* %0, %struct.ceph_dentry_info** %2, align 8
  %4 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @CEPH_DENTRY_SHRINK_LIST, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %12, i32 0, i32 1
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %35

17:                                               ; preds = %11
  %18 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_4__* @ceph_sb_to_client(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %24, align 8
  store %struct.ceph_mds_client* %25, %struct.ceph_mds_client** %3, align 8
  %26 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %30 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %29, i32 0, i32 1
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  br label %35

35:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @ceph_sb_to_client(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
