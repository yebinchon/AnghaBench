; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_renewed_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_renewed_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_mds_session = type { i32, i64, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mds%d caps renewed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mds%d caps still stale\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"renewed_caps mds%d ttl now %lu, was %s, now %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fresh\00", align 1
@RENEWCAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_session*, i32)* @renewed_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renewed_caps(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @time_after_eq(i32 %15, i64 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %3
  %22 = phi i1 [ false, %3 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %26, %34
  %36 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %37 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %21
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %43 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @time_before(i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %49 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 1, i32* %8, align 4
  br label %57

52:                                               ; preds = %40
  %53 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %54 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %60 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %69 = load i32, i32* @jiffies, align 4
  %70 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @time_before(i32 %69, i64 %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %77 = call i32 @dout(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %64, i8* %68, i8* %76)
  %78 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %58
  %84 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %85 = load i32, i32* @RENEWCAPS, align 4
  %86 = call i32 @wake_up_session_caps(%struct.ceph_mds_session* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %58
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @dout(i8*, i32, i64, i8*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_session_caps(%struct.ceph_mds_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
