; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_adjust_caps_max_min.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_adjust_caps_max_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32 }
%struct.ceph_mount_options = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_adjust_caps_max_min(%struct.ceph_mds_client* %0, %struct.ceph_mount_options* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_mount_options*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_mount_options* %1, %struct.ceph_mount_options** %4, align 8
  %5 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 1024
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %18, i32 0, i32 0
  store i32 1024, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %20
  %31 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %35 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %40 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %43 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %30, %20
  %45 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %46 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
