; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_lock_unlock_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_lock_unlock_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32 }
%struct.ceph_mds_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*)* @lock_unlock_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_unlock_sessions(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %5 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client* %15, i32 %16)
  store %struct.ceph_mds_session* %17, %struct.ceph_mds_session** %4, align 8
  %18 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %19 = icmp ne %struct.ceph_mds_session* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %29 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %32 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %31)
  %33 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  br label %36

36:                                               ; preds = %21, %20
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
