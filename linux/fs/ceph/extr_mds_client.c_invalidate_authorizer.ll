; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_invalidate_authorizer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_invalidate_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ceph_auth_client* }
%struct.ceph_auth_client = type { i32 }

@CEPH_ENTITY_TYPE_MDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @invalidate_authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_authorizer(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_auth_client*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %6 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %6, i32 0, i32 0
  %8 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %7, align 8
  store %struct.ceph_mds_session* %8, %struct.ceph_mds_session** %3, align 8
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 0
  %11 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %10, align 8
  store %struct.ceph_mds_client* %11, %struct.ceph_mds_client** %4, align 8
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %18, align 8
  store %struct.ceph_auth_client* %19, %struct.ceph_auth_client** %5, align 8
  %20 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %21 = load i32, i32* @CEPH_ENTITY_TYPE_MDS, align 4
  %22 = call i32 @ceph_auth_invalidate_authorizer(%struct.ceph_auth_client* %20, i32 %21)
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @ceph_monc_validate_auth(%struct.TYPE_6__* %28)
  ret i32 %29
}

declare dso_local i32 @ceph_auth_invalidate_authorizer(%struct.ceph_auth_client*, i32) #1

declare dso_local i32 @ceph_monc_validate_auth(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
