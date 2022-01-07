; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dentry_dir_lease_touch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dentry_dir_lease_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_dentry_info = type { i32, i32, i32, i64 }

@CEPH_DENTRY_LEASE_LIST = common dso_local global i32 0, align 4
@CEPH_DENTRY_REFERENCED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_dentry_info*)* @__dentry_dir_lease_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dentry_dir_lease_touch(%struct.ceph_mds_client* %0, %struct.ceph_dentry_info* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_dentry_info* %1, %struct.ceph_dentry_info** %4, align 8
  %5 = load i32, i32* @CEPH_DENTRY_LEASE_LIST, align 4
  %6 = load i32, i32* @CEPH_DENTRY_REFERENCED, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %18, i32 0, i32 1
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %20, i32 0, i32 0
  %22 = call i32 @list_move_tail(i32* %19, i32* %21)
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
