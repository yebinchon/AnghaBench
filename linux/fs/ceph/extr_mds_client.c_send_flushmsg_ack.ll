; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_send_flushmsg_ack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_send_flushmsg_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32 }
%struct.ceph_msg = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"send_flushmsg_ack to mds%d (%s)s seq %lld\0A\00", align 1
@CEPH_SESSION_FLUSHMSG_ACK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, %struct.ceph_mds_session*, i32)* @send_flushmsg_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_flushmsg_ack(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_mds_client*, align 8
  %6 = alloca %struct.ceph_mds_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %5, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ceph_session_state_name(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dout(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %16)
  %18 = load i32, i32* @CEPH_SESSION_FLUSHMSG_ACK, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.ceph_msg* @create_session_msg(i32 %18, i32 %19)
  store %struct.ceph_msg* %20, %struct.ceph_msg** %8, align 8
  %21 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %22 = icmp ne %struct.ceph_msg* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %27, i32 0, i32 0
  %29 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %30 = call i32 @ceph_con_send(i32* %28, %struct.ceph_msg* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @dout(i8*, i32, i32, i32) #1

declare dso_local i32 @ceph_session_state_name(i32) #1

declare dso_local %struct.ceph_msg* @create_session_msg(i32, i32) #1

declare dso_local i32 @ceph_con_send(i32*, %struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
