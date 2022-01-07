; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mdsmap.c_ceph_mdsmap_is_cluster_available.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mdsmap.c_ceph_mdsmap_is_cluster_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mdsmap = type { i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@CEPH_MDS_STATE_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_mdsmap_is_cluster_available(%struct.ceph_mdsmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_mdsmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ceph_mdsmap* %0, %struct.ceph_mdsmap** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %52

17:                                               ; preds = %11
  %18 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CEPH_MDS_STATE_ACTIVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %22, %16, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
