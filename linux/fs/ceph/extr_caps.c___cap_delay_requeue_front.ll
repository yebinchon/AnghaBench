; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_delay_requeue_front.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_delay_requeue_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32 }
%struct.ceph_inode_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"__cap_delay_requeue_front %p\0A\00", align 1
@CEPH_I_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_inode_info*)* @__cap_delay_requeue_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cap_delay_requeue_front(%struct.ceph_mds_client* %0, %struct.ceph_inode_info* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_inode_info*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_inode_info* %1, %struct.ceph_inode_info** %4, align 8
  %5 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %5, i32 0, i32 2
  %7 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i32, i32* @CEPH_I_FLUSH, align 4
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 0
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %21, i32 0, i32 0
  %23 = call i32 @list_del_init(i32* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %25, i32 0, i32 0
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %27, i32 0, i32 1
  %29 = call i32 @list_add(i32* %26, i32* %28)
  %30 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  ret void
}

declare dso_local i32 @dout(i8*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
