; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dentry_lease_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dentry_lease_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dentry_info = type { i64, i64, %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { i64, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_dentry_info*)* @__dentry_lease_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dentry_lease_is_valid(%struct.ceph_dentry_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_dentry_info*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ceph_dentry_info* %0, %struct.ceph_dentry_info** %3, align 8
  %7 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %13, i32 0, i32 2
  %15 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %14, align 8
  store %struct.ceph_mds_session* %15, %struct.ceph_mds_session** %4, align 8
  %16 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %17 = icmp ne %struct.ceph_mds_session* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %29 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %18
  %37 = load i32, i32* @jiffies, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @time_before(i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @time_before(i32 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %53

49:                                               ; preds = %41, %36, %18
  br label %50

50:                                               ; preds = %49, %12
  %51 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %52 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %48, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
