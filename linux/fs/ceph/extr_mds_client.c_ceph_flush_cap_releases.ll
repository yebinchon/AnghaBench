; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_flush_cap_releases.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_flush_cap_releases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_mds_session = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cap release work queued\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to queue cap release work\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_flush_cap_releases(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %4, align 8
  %5 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %12 = call i32 @get_session(%struct.ceph_mds_session* %11)
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %18, i32 0, i32 0
  %20 = call i64 @queue_work(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = call i32 @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %28

24:                                               ; preds = %10
  %25 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %26 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %25)
  %27 = call i32 @dout(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %9, %24, %22
  ret void
}

declare dso_local i32 @get_session(%struct.ceph_mds_session*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
