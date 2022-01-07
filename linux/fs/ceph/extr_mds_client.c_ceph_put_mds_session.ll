; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_put_mds_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_put_mds_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"mdsc put_session %p %d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_put_mds_session(%struct.ceph_mds_session* %0) #0 {
  %2 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %2, align 8
  %3 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %4 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %4, i32 0, i32 1
  %6 = call i64 @refcount_read(i32* %5)
  %7 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %7, i32 0, i32 1
  %9 = call i64 @refcount_read(i32* %8)
  %10 = sub nsw i64 %9, 1
  %11 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_session* %3, i64 %6, i64 %10)
  %12 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %12, i32 0, i32 1
  %14 = call i64 @refcount_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ceph_auth_destroy_authorizer(i64 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %2, align 8
  %30 = call i32 @kfree(%struct.ceph_mds_session* %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_mds_session*, i64, i64) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @ceph_auth_destroy_authorizer(i64) #1

declare dso_local i32 @kfree(%struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
