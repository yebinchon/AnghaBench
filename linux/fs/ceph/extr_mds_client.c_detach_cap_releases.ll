; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_detach_cap_releases.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_detach_cap_releases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { i32, i64, i32, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"dispose_cap_releases mds%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_session*, %struct.list_head*)* @detach_cap_releases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_cap_releases(%struct.ceph_mds_session* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %5, i32 0, i32 3
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %8, i32 0, i32 2
  %10 = load %struct.list_head*, %struct.list_head** %4, align 8
  %11 = call i32 @list_splice_init(i32* %9, %struct.list_head* %10)
  %12 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_splice_init(i32*, %struct.list_head*) #1

declare dso_local i32 @dout(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
