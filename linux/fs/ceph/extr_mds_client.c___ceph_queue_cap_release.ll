; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___ceph_queue_cap_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___ceph_queue_cap_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { i32, i32, i32 }
%struct.ceph_cap = type { i32 }

@CEPH_CAPS_PER_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ceph_queue_cap_release(%struct.ceph_mds_session* %0, %struct.ceph_cap* %1) #0 {
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca %struct.ceph_cap*, align 8
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %3, align 8
  store %struct.ceph_cap* %1, %struct.ceph_cap** %4, align 8
  %5 = load %struct.ceph_cap*, %struct.ceph_cap** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %5, i32 0, i32 0
  %7 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %7, i32 0, i32 2
  %9 = call i32 @list_add_tail(i32* %6, i32* %8)
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CEPH_CAPS_PER_RELEASE, align 4
  %18 = srem i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %25 = call i32 @ceph_flush_cap_releases(i32 %23, %struct.ceph_mds_session* %24)
  br label %26

26:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ceph_flush_cap_releases(i32, %struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
