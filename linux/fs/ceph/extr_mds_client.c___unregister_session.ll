; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___unregister_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___unregister_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, %struct.ceph_mds_session** }
%struct.ceph_mds_session = type { i64, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"__unregister_session mds%d %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_session*)* @__unregister_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unregister_session(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %4, align 8
  %5 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %9 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %7, %struct.ceph_mds_session* %8)
  %10 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %10, i32 0, i32 1
  %12 = load %struct.ceph_mds_session**, %struct.ceph_mds_session*** %11, align 8
  %13 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_session*, %struct.ceph_mds_session** %12, i64 %15
  %17 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %16, align 8
  %18 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %19 = icmp ne %struct.ceph_mds_session* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %22, i32 0, i32 1
  %24 = load %struct.ceph_mds_session**, %struct.ceph_mds_session*** %23, align 8
  %25 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_session*, %struct.ceph_mds_session** %24, i64 %27
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %28, align 8
  %29 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %31, i32 0, i32 1
  %33 = call i32 @ceph_con_close(i32* %32)
  %34 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %35 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %34)
  %36 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %37 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %36, i32 0, i32 0
  %38 = call i32 @atomic_dec(i32* %37)
  ret void
}

declare dso_local i32 @dout(i8*, i64, %struct.ceph_mds_session*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_con_close(i32*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
