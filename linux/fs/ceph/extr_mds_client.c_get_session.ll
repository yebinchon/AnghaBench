; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_get_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_get_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"mdsc get_session %p %d -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mdsc get_session %p 0 -- FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_mds_session* (%struct.ceph_mds_session*)* @get_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_mds_session* @get_session(%struct.ceph_mds_session* %0) #0 {
  %2 = alloca %struct.ceph_mds_session*, align 8
  %3 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %3, align 8
  %4 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %5 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %4, i32 0, i32 0
  %6 = call i64 @refcount_inc_not_zero(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %10, i32 0, i32 0
  %12 = call i64 @refcount_read(i32* %11)
  %13 = sub nsw i64 %12, 1
  %14 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %14, i32 0, i32 0
  %16 = call i64 @refcount_read(i32* %15)
  %17 = call i32 (i8*, %struct.ceph_mds_session*, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_session* %9, i64 %13, i64 %16)
  %18 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  store %struct.ceph_mds_session* %18, %struct.ceph_mds_session** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %21 = call i32 (i8*, %struct.ceph_mds_session*, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_mds_session* %20)
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %2, align 8
  br label %22

22:                                               ; preds = %19, %8
  %23 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  ret %struct.ceph_mds_session* %23
}

declare dso_local i64 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_mds_session*, ...) #1

declare dso_local i64 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
