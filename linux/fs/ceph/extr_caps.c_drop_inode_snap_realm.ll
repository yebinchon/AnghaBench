; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_drop_inode_snap_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_drop_inode_snap_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.ceph_snap_realm*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ceph_snap_realm = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_inode_info*)* @drop_inode_snap_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_inode_snap_realm(%struct.ceph_inode_info* %0) #0 {
  %2 = alloca %struct.ceph_inode_info*, align 8
  %3 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %2, align 8
  %4 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %4, i32 0, i32 2
  %6 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %5, align 8
  store %struct.ceph_snap_realm* %6, %struct.ceph_snap_realm** %3, align 8
  %7 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %10, i32 0, i32 4
  %12 = call i32 @list_del_init(i32* %11)
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %17, i32 0, i32 2
  store %struct.ceph_snap_realm* null, %struct.ceph_snap_realm** %18, align 8
  %19 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_6__* @ceph_sb_to_client(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %3, align 8
  %42 = call i32 @ceph_put_snap_realm(i32 %40, %struct.ceph_snap_realm* %41)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_put_snap_realm(i32, %struct.ceph_snap_realm*) #1

declare dso_local %struct.TYPE_6__* @ceph_sb_to_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
