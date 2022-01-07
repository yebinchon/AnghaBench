; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_get_authorizer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_get_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_handshake = type { i32* }
%struct.ceph_connection = type { %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { %struct.ceph_auth_handshake, %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ceph_auth_client* }
%struct.ceph_auth_client = type { i32 }

@CEPH_ENTITY_TYPE_MDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_auth_handshake* (%struct.ceph_connection*, i32*, i32)* @get_authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_auth_handshake* @get_authorizer(%struct.ceph_connection* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_auth_handshake*, align 8
  %5 = alloca %struct.ceph_connection*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_mds_session*, align 8
  %9 = alloca %struct.ceph_mds_client*, align 8
  %10 = alloca %struct.ceph_auth_client*, align 8
  %11 = alloca %struct.ceph_auth_handshake*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 0
  %16 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %15, align 8
  store %struct.ceph_mds_session* %16, %struct.ceph_mds_session** %8, align 8
  %17 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %8, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %17, i32 0, i32 1
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %18, align 8
  store %struct.ceph_mds_client* %19, %struct.ceph_mds_client** %9, align 8
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %9, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %26, align 8
  store %struct.ceph_auth_client* %27, %struct.ceph_auth_client** %10, align 8
  %28 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %8, align 8
  %29 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %28, i32 0, i32 0
  store %struct.ceph_auth_handshake* %29, %struct.ceph_auth_handshake** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %3
  %33 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  %34 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  %39 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ceph_auth_destroy_authorizer(i32* %40)
  %42 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  %43 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %32, %3
  %45 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  %46 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %10, align 8
  %51 = load i32, i32* @CEPH_ENTITY_TYPE_MDS, align 4
  %52 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  %53 = call i32 @ceph_auth_create_authorizer(%struct.ceph_auth_client* %50, i32 %51, %struct.ceph_auth_handshake* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.ceph_auth_handshake* @ERR_PTR(i32 %57)
  store %struct.ceph_auth_handshake* %58, %struct.ceph_auth_handshake** %4, align 8
  br label %77

59:                                               ; preds = %49
  br label %71

60:                                               ; preds = %44
  %61 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %10, align 8
  %62 = load i32, i32* @CEPH_ENTITY_TYPE_MDS, align 4
  %63 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  %64 = call i32 @ceph_auth_update_authorizer(%struct.ceph_auth_client* %61, i32 %62, %struct.ceph_auth_handshake* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.ceph_auth_handshake* @ERR_PTR(i32 %68)
  store %struct.ceph_auth_handshake* %69, %struct.ceph_auth_handshake** %4, align 8
  br label %77

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %10, align 8
  %73 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %11, align 8
  store %struct.ceph_auth_handshake* %76, %struct.ceph_auth_handshake** %4, align 8
  br label %77

77:                                               ; preds = %71, %67, %56
  %78 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  ret %struct.ceph_auth_handshake* %78
}

declare dso_local i32 @ceph_auth_destroy_authorizer(i32*) #1

declare dso_local i32 @ceph_auth_create_authorizer(%struct.ceph_auth_client*, i32, %struct.ceph_auth_handshake*) #1

declare dso_local %struct.ceph_auth_handshake* @ERR_PTR(i32) #1

declare dso_local i32 @ceph_auth_update_authorizer(%struct.ceph_auth_client*, i32, %struct.ceph_auth_handshake*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
