; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_queue_cap_reclaim_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_queue_cap_reclaim_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"caps reclaim work queued\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to queue caps release work\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_queue_cap_reclaim_work(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %3 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %14, i32 0, i32 0
  %16 = call i64 @queue_work(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = call i32 @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %22

20:                                               ; preds = %8
  %21 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %7, %20, %18
  ret void
}

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @dout(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
