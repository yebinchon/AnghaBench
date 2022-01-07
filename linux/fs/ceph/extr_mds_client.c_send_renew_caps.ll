; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_send_renew_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_send_renew_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32, i32, i32 }
%struct.ceph_msg = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mds%d caps stale\0A\00", align 1
@CEPH_MDS_STATE_RECONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"send_renew_caps ignoring mds%d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"send_renew_caps to mds%d (%s)\0A\00", align 1
@CEPH_SESSION_REQUEST_RENEWCAPS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, %struct.ceph_mds_session*)* @send_renew_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_renew_caps(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @time_after_eq(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @time_after_eq(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %14, %2
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ceph_mdsmap_get_state(i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CEPH_MDS_STATE_RECONNECT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ceph_mds_state_name(i32 %46)
  %48 = call i32 @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47)
  store i32 0, i32* %3, align 4
  br label %72

49:                                               ; preds = %28
  %50 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ceph_mds_state_name(i32 %53)
  %55 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %54)
  %56 = load i32, i32* @CEPH_SESSION_REQUEST_RENEWCAPS, align 4
  %57 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %58 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = call %struct.ceph_msg* @create_session_msg(i32 %56, i32 %60)
  store %struct.ceph_msg* %61, %struct.ceph_msg** %6, align 8
  %62 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %63 = icmp ne %struct.ceph_msg* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %49
  %68 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %69 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %68, i32 0, i32 0
  %70 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %71 = call i32 @ceph_con_send(i32* %69, %struct.ceph_msg* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %64, %42
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @ceph_mdsmap_get_state(i32, i32) #1

declare dso_local i32 @dout(i8*, i32, i32) #1

declare dso_local i32 @ceph_mds_state_name(i32) #1

declare dso_local %struct.ceph_msg* @create_session_msg(i32, i32) #1

declare dso_local i32 @ceph_con_send(i32*, %struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
