; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___ceph_dentry_lease_touch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___ceph_dentry_lease_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dentry_info = type { i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ceph_mds_client = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ceph_mds_client* }

@.str = private unnamed_addr constant [32 x i8] c"dentry_lease_touch %p %p '%pd'\0A\00", align 1
@CEPH_DENTRY_LEASE_LIST = common dso_local global i32 0, align 4
@CEPH_DENTRY_SHRINK_LIST = common dso_local global i32 0, align 4
@CEPH_DENTRY_REFERENCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ceph_dentry_lease_touch(%struct.ceph_dentry_info* %0) #0 {
  %2 = alloca %struct.ceph_dentry_info*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_dentry_info* %0, %struct.ceph_dentry_info** %2, align 8
  %5 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %5, i32 0, i32 2
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call i32 @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.ceph_dentry_info* %8, %struct.dentry* %9, %struct.dentry* %10)
  %12 = load i32, i32* @CEPH_DENTRY_LEASE_LIST, align 4
  %13 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CEPH_DENTRY_SHRINK_LIST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @CEPH_DENTRY_REFERENCED, align 4
  %25 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %26 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %47

29:                                               ; preds = %1
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_2__* @ceph_sb_to_client(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %34, align 8
  store %struct.ceph_mds_client* %35, %struct.ceph_mds_client** %4, align 8
  %36 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %37 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %40 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %39, i32 0, i32 1
  %41 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %42 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %41, i32 0, i32 1
  %43 = call i32 @list_move_tail(i32* %40, i32* %42)
  %44 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_dentry_info*, %struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @ceph_sb_to_client(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
