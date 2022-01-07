; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dir_lease_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dir_lease_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ceph_lease_walk_control = type { i32, i64 }
%struct.ceph_dentry_info = type { i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@KEEP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@TOUCH = common dso_local global i32 0, align 4
@CEPH_DENTRY_REFERENCED = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*)* @__dir_lease_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dir_lease_check(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_lease_walk_control*, align 8
  %7 = alloca %struct.ceph_dentry_info*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ceph_lease_walk_control*
  store %struct.ceph_lease_walk_control* %10, %struct.ceph_lease_walk_control** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %11)
  store %struct.ceph_dentry_info* %12, %struct.ceph_dentry_info** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = call i32 @__dir_lease_try_check(%struct.dentry* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @KEEP, align 4
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %7, align 8
  %27 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ceph_lease_walk_control*, %struct.ceph_lease_walk_control** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i64 @time_before(i32 %25, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @STOP, align 4
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %24
  %38 = load %struct.ceph_lease_walk_control*, %struct.ceph_lease_walk_control** %6, align 8
  %39 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @TOUCH, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %37
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %7, align 8
  %52 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CEPH_DENTRY_REFERENCED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %44
  %58 = load i32, i32* @TOUCH, align 4
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %7, align 8
  %61 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %21
  %63 = load i32, i32* @DELETE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %57, %42, %35, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i32 @__dir_lease_try_check(%struct.dentry*) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
