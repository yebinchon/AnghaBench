; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_dentry_lease_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_dentry_lease_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_dentry_info = type { i32, i64, i32, i32 }
%struct.ceph_mds_session = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@CEPH_MDS_LEASE_RENEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dentry_lease_is_valid - dentry %p = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @dentry_lease_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dentry_lease_is_valid(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_dentry_info*, align 8
  %6 = alloca %struct.ceph_mds_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %12)
  store %struct.ceph_dentry_info* %13, %struct.ceph_dentry_info** %5, align 8
  %14 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %15 = icmp ne %struct.ceph_dentry_info* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %18 = call i64 @__dentry_lease_is_valid(%struct.ceph_dentry_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %21 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %22 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %28 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @time_after(i32 %26, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @LOOKUP_RCU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ECHILD, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %53

40:                                               ; preds = %32
  %41 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %42 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.ceph_mds_session* @ceph_get_mds_session(i32 %43)
  store %struct.ceph_mds_session* %44, %struct.ceph_mds_session** %6, align 8
  %45 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %46 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %49 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %5, align 8
  %52 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %40, %37
  br label %54

54:                                               ; preds = %53, %25, %20
  br label %55

55:                                               ; preds = %54, %16, %2
  %56 = load %struct.dentry*, %struct.dentry** %3, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %60 = icmp ne %struct.ceph_mds_session* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %63 = load %struct.dentry*, %struct.dentry** %3, align 8
  %64 = load i32, i32* @CEPH_MDS_LEASE_RENEW, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ceph_mdsc_lease_send_msg(%struct.ceph_mds_session* %62, %struct.dentry* %63, i32 %64, i32 %65)
  %67 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  %68 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %67)
  br label %69

69:                                               ; preds = %61, %55
  %70 = load %struct.dentry*, %struct.dentry** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.dentry* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i64 @__dentry_lease_is_valid(%struct.ceph_dentry_info*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local %struct.ceph_mds_session* @ceph_get_mds_session(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_mdsc_lease_send_msg(%struct.ceph_mds_session*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @dout(i8*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
