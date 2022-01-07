; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_create_session_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_create_session_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ceph_mds_session_head* }
%struct.ceph_mds_session_head = type { i32, i32 }

@CEPH_MSG_CLIENT_SESSION = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"create_session_msg ENOMEM creating msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_msg* (i32, i32)* @create_session_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_msg* @create_session_msg(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca %struct.ceph_mds_session_head*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @CEPH_MSG_CLIENT_SESSION, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.ceph_msg* @ceph_msg_new(i32 %8, i32 8, i32 %9, i32 0)
  store %struct.ceph_msg* %10, %struct.ceph_msg** %6, align 8
  %11 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %12 = icmp ne %struct.ceph_msg* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.ceph_msg* null, %struct.ceph_msg** %3, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ceph_mds_session_head*, %struct.ceph_mds_session_head** %18, align 8
  store %struct.ceph_mds_session_head* %19, %struct.ceph_mds_session_head** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = load %struct.ceph_mds_session_head*, %struct.ceph_mds_session_head** %7, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_session_head, %struct.ceph_mds_session_head* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @cpu_to_le64(i32 %24)
  %26 = load %struct.ceph_mds_session_head*, %struct.ceph_mds_session_head** %7, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_session_head, %struct.ceph_mds_session_head* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  store %struct.ceph_msg* %28, %struct.ceph_msg** %3, align 8
  br label %29

29:                                               ; preds = %15, %13
  %30 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  ret %struct.ceph_msg* %30
}

declare dso_local %struct.ceph_msg* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
