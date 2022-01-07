; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_unreserve_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_unreserve_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i64, i64, i32 }
%struct.ceph_cap_reservation = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"unreserve caps ctx=%p count=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_unreserve_caps(%struct.ceph_mds_client* %0, %struct.ceph_cap_reservation* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_cap_reservation*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_cap_reservation* %1, %struct.ceph_cap_reservation** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %4, align 8
  %13 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.ceph_cap_reservation* %12, i64 %15)
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %21 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @__ceph_unreserve_caps(%struct.ceph_mds_client* %20, i64 %23)
  %25 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %11
  %32 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %31, %11
  %41 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %42 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %48 = load %struct.ceph_cap_reservation*, %struct.ceph_cap_reservation** %4, align 8
  %49 = getelementptr inbounds %struct.ceph_cap_reservation, %struct.ceph_cap_reservation* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ceph_reclaim_caps_nr(%struct.ceph_mds_client* %47, i32 %50)
  br label %52

52:                                               ; preds = %10, %46, %40
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_cap_reservation*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_unreserve_caps(%struct.ceph_mds_client*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_reclaim_caps_nr(%struct.ceph_mds_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
