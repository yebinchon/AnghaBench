; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_mds_check_message_signature.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_mds_check_message_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { %struct.ceph_auth_handshake }
%struct.ceph_auth_handshake = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg*)* @mds_check_message_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mds_check_message_signature(%struct.ceph_msg* %0) #0 {
  %2 = alloca %struct.ceph_msg*, align 8
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca %struct.ceph_auth_handshake*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %2, align 8
  %5 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %8, align 8
  store %struct.ceph_mds_session* %9, %struct.ceph_mds_session** %3, align 8
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %10, i32 0, i32 0
  store %struct.ceph_auth_handshake* %11, %struct.ceph_auth_handshake** %4, align 8
  %12 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %13 = load %struct.ceph_msg*, %struct.ceph_msg** %2, align 8
  %14 = call i32 @ceph_auth_check_message_signature(%struct.ceph_auth_handshake* %12, %struct.ceph_msg* %13)
  ret i32 %14
}

declare dso_local i32 @ceph_auth_check_message_signature(%struct.ceph_auth_handshake*, %struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
