; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___open_export_target_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___open_export_target_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { i64 }
%struct.ceph_mds_client = type { i32 }

@CEPH_MDS_SESSION_NEW = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_mds_session* (%struct.ceph_mds_client*, i32)* @__open_export_target_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_mds_session* @__open_export_target_session(%struct.ceph_mds_client* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client* %7, i32 %8)
  store %struct.ceph_mds_session* %9, %struct.ceph_mds_session** %6, align 8
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %11 = icmp ne %struct.ceph_mds_session* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.ceph_mds_session* @register_session(%struct.ceph_mds_client* %13, i32 %14)
  store %struct.ceph_mds_session* %15, %struct.ceph_mds_session** %6, align 8
  %16 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %17 = call i64 @IS_ERR(%struct.ceph_mds_session* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  store %struct.ceph_mds_session* %20, %struct.ceph_mds_session** %3, align 8
  br label %40

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CEPH_MDS_SESSION_NEW, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CEPH_MDS_SESSION_CLOSING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22
  %35 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %36 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %37 = call i32 @__open_session(%struct.ceph_mds_client* %35, %struct.ceph_mds_session* %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  store %struct.ceph_mds_session* %39, %struct.ceph_mds_session** %3, align 8
  br label %40

40:                                               ; preds = %38, %19
  %41 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  ret %struct.ceph_mds_session* %41
}

declare dso_local %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client*, i32) #1

declare dso_local %struct.ceph_mds_session* @register_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_session*) #1

declare dso_local i32 @__open_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
