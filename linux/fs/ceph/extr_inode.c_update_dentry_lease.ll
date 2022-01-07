; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_update_dentry_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_update_dentry_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_mds_reply_lease = type { i32 }
%struct.ceph_mds_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.dentry*, %struct.ceph_mds_reply_lease*, %struct.ceph_mds_session*, i64)* @update_dentry_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dentry_lease(%struct.inode* %0, %struct.dentry* %1, %struct.ceph_mds_reply_lease* %2, %struct.ceph_mds_session* %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ceph_mds_reply_lease*, align 8
  %9 = alloca %struct.ceph_mds_session*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ceph_mds_session*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.ceph_mds_reply_lease* %2, %struct.ceph_mds_reply_lease** %8, align 8
  store %struct.ceph_mds_session* %3, %struct.ceph_mds_session** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %11, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = load %struct.ceph_mds_reply_lease*, %struct.ceph_mds_reply_lease** %8, align 8
  %18 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @__update_dentry_lease(%struct.inode* %15, %struct.dentry* %16, %struct.ceph_mds_reply_lease* %17, %struct.ceph_mds_session* %18, i64 %19, %struct.ceph_mds_session** %11)
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %11, align 8
  %25 = icmp ne %struct.ceph_mds_session* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %11, align 8
  %28 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %27)
  br label %29

29:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__update_dentry_lease(%struct.inode*, %struct.dentry*, %struct.ceph_mds_reply_lease*, %struct.ceph_mds_session*, i64, %struct.ceph_mds_session**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
