; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_maybe_recover_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_maybe_recover_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { %struct.ceph_fs_client* }
%struct.ceph_fs_client = type { i32, i64, i32, i32 }

@CLEANRECOVER = common dso_local global i32 0, align 4
@CEPH_MOUNT_MOUNTED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"auto reconnect after blacklisted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*)* @maybe_recover_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_recover_session(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  %3 = alloca %struct.ceph_fs_client*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %4 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %4, i32 0, i32 0
  %6 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %5, align 8
  store %struct.ceph_fs_client* %6, %struct.ceph_fs_client** %3, align 8
  %7 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %8 = load i32, i32* @CLEANRECOVER, align 4
  %9 = call i32 @ceph_test_mount_opt(%struct.ceph_fs_client* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @READ_ONCE(i32 %15)
  %17 = load i64, i64* @CEPH_MOUNT_MOUNTED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %54

20:                                               ; preds = %12
  %21 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @READ_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %54

27:                                               ; preds = %20
  %28 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %35 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 %37, 60
  %39 = mul nsw i32 %38, 30
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = call i64 @time_before(i64 %33, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %54

45:                                               ; preds = %32, %27
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load i64, i64* @jiffies, align 8
  %48 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %51 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ceph_force_reconnect(i32 %52)
  br label %54

54:                                               ; preds = %45, %44, %26, %19, %11
  ret void
}

declare dso_local i32 @ceph_test_mount_opt(%struct.ceph_fs_client*, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ceph_force_reconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
