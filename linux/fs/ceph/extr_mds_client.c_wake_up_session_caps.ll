; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_wake_up_session_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_wake_up_session_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"wake_up_session_caps %p mds%d\0A\00", align 1
@wake_up_session_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_session*, i32)* @wake_up_session_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_up_session_caps(%struct.ceph_mds_session* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %6 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_session* %5, i32 %8)
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %11 = load i32, i32* @wake_up_session_cb, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @ceph_iterate_session_caps(%struct.ceph_mds_session* %10, i32 %11, i8* %14)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_mds_session*, i32) #1

declare dso_local i32 @ceph_iterate_session_caps(%struct.ceph_mds_session*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
