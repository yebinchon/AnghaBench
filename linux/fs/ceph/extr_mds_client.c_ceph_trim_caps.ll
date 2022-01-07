; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_trim_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_trim_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_session = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"trim_caps mds%d start: %d / %d, trim %d\0A\00", align 1
@trim_caps_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"trim_caps mds%d done: %d / %d, trimmed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_trim_caps(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %28 = load i32, i32* @trim_caps_cb, align 4
  %29 = call i32 @ceph_iterate_session_caps(%struct.ceph_mds_session* %27, i32 %28, i32* %8)
  %30 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @dout(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %25, %3
  %42 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %43 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %44 = call i32 @ceph_flush_cap_releases(%struct.ceph_mds_client* %42, %struct.ceph_mds_session* %43)
  ret i32 0
}

declare dso_local i32 @dout(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ceph_iterate_session_caps(%struct.ceph_mds_session*, i32, i32*) #1

declare dso_local i32 @ceph_flush_cap_releases(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
