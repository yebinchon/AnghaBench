; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___open_export_target_sessions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___open_export_target_sessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ceph_mds_info* }
%struct.ceph_mds_info = type { i32, i32* }
%struct.ceph_mds_session = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"open_export_target_sessions for mds%d (%d targets)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_session*)* @__open_export_target_sessions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__open_export_target_sessions(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  %5 = alloca %struct.ceph_mds_info*, align 8
  %6 = alloca %struct.ceph_mds_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %4, align 8
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.ceph_mds_info*, %struct.ceph_mds_info** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ceph_mds_info, %struct.ceph_mds_info* %25, i64 %27
  store %struct.ceph_mds_info* %28, %struct.ceph_mds_info** %5, align 8
  %29 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %30 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ceph_mds_info*, %struct.ceph_mds_info** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_info, %struct.ceph_mds_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dout(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %59, %20
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ceph_mds_info*, %struct.ceph_mds_info** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_mds_info, %struct.ceph_mds_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %44 = load %struct.ceph_mds_info*, %struct.ceph_mds_info** %5, align 8
  %45 = getelementptr inbounds %struct.ceph_mds_info, %struct.ceph_mds_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.ceph_mds_session* @__open_export_target_session(%struct.ceph_mds_client* %43, i32 %50)
  store %struct.ceph_mds_session* %51, %struct.ceph_mds_session** %6, align 8
  %52 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %53 = call i32 @IS_ERR(%struct.ceph_mds_session* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %57 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %56)
  br label %58

58:                                               ; preds = %55, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %36

62:                                               ; preds = %19, %36
  ret void
}

declare dso_local i32 @dout(i8*, i32, i32) #1

declare dso_local %struct.ceph_mds_session* @__open_export_target_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ceph_mds_session*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
