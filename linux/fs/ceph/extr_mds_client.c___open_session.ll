; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___open_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___open_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32, i32, i32 }
%struct.ceph_msg = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"open_session to mds%d (%s)\0A\00", align 1
@CEPH_MDS_SESSION_OPENING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, %struct.ceph_mds_session*)* @__open_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__open_session(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ceph_mdsmap_get_state(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ceph_mds_state_name(i32 %18)
  %20 = call i32 @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load i32, i32* @CEPH_MDS_SESSION_OPENING, align 4
  %22 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %28 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ceph_msg* @create_session_open_msg(%struct.ceph_mds_client* %27, i32 %30)
  store %struct.ceph_msg* %31, %struct.ceph_msg** %6, align 8
  %32 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %33 = icmp ne %struct.ceph_msg* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %38, i32 0, i32 1
  %40 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %41 = call i32 @ceph_con_send(i32* %39, %struct.ceph_msg* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ceph_mdsmap_get_state(i32, i32) #1

declare dso_local i32 @dout(i8*, i32, i32) #1

declare dso_local i32 @ceph_mds_state_name(i32) #1

declare dso_local %struct.ceph_msg* @create_session_open_msg(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @ceph_con_send(i32*, %struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
