; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_acl.c_ceph_set_cached_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_acl.c_ceph_set_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.ceph_inode_info = type { i32 }

@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, %struct.posix_acl*)* @ceph_set_cached_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_set_cached_acl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %8)
  store %struct.ceph_inode_info* %9, %struct.ceph_inode_info** %7, align 8
  %10 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %11 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %14 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %15 = call i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info* %13, i32 %14, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %21 = call i32 @set_cached_acl(%struct.inode* %18, i32 %19, %struct.posix_acl* %20)
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @forget_cached_acl(%struct.inode* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %28 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__ceph_caps_issued_mask(%struct.ceph_inode_info*, i32, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @forget_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
