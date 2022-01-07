; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_request_close_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_request_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32, i32 }
%struct.ceph_msg = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"request_close_session mds%d state %s seq %lld\0A\00", align 1
@CEPH_SESSION_REQUEST_CLOSE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, %struct.ceph_mds_session*)* @request_close_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_close_session(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  %7 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ceph_session_state_name(i32 %12)
  %14 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dout(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %16)
  %18 = load i32, i32* @CEPH_SESSION_REQUEST_CLOSE, align 4
  %19 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ceph_msg* @create_session_msg(i32 %18, i32 %21)
  store %struct.ceph_msg* %22, %struct.ceph_msg** %6, align 8
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %24 = icmp ne %struct.ceph_msg* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %29, i32 0, i32 0
  %31 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %32 = call i32 @ceph_con_send(i32* %30, %struct.ceph_msg* %31)
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
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
