; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_force_umount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_force_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32 }
%struct.ceph_mds_session = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"force umount\0A\00", align 1
@CEPH_MDS_SESSION_REJECTED = common dso_local global i64 0, align 8
@CEPH_MDS_SESSION_CLOSING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_force_umount(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  %3 = alloca %struct.ceph_mds_session*, align 8
  %4 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %5 = call i32 @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %69, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client* %16, i32 %17)
  store %struct.ceph_mds_session* %18, %struct.ceph_mds_session** %3, align 8
  %19 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %20 = icmp ne %struct.ceph_mds_session* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %69

22:                                               ; preds = %15
  %23 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CEPH_MDS_SESSION_REJECTED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %30 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %31 = call i32 @__unregister_session(%struct.ceph_mds_client* %29, %struct.ceph_mds_session* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %34 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %35 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %34, i32 0, i32 2
  %36 = call i32 @__wake_requests(%struct.ceph_mds_client* %33, i32* %35)
  %37 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %38 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %44 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %45 = call i32 @__close_session(%struct.ceph_mds_client* %43, %struct.ceph_mds_session* %44)
  %46 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CEPH_MDS_SESSION_CLOSING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %53 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %54 = call i32 @cleanup_session_requests(%struct.ceph_mds_client* %52, %struct.ceph_mds_session* %53)
  %55 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %56 = call i32 @remove_session_caps(%struct.ceph_mds_session* %55)
  br label %57

57:                                               ; preds = %51, %32
  %58 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %62 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %61)
  %63 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %64 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %63, i32 0, i32 1
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @kick_requests(%struct.ceph_mds_client* %66, i32 %67)
  br label %69

69:                                               ; preds = %57, %21
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %74 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %75 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %74, i32 0, i32 2
  %76 = call i32 @__wake_requests(%struct.ceph_mds_client* %73, i32* %75)
  %77 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  ret void
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mds_session* @__ceph_lookup_mds_session(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @__unregister_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @__wake_requests(%struct.ceph_mds_client*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__close_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @cleanup_session_requests(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @remove_session_caps(%struct.ceph_mds_session*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @kick_requests(%struct.ceph_mds_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
