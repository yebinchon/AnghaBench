; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_has_new_snaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_has_new_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_snap_context = type { i64, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_snap_context*, %struct.ceph_snap_context*)* @has_new_snaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_new_snaps(%struct.ceph_snap_context* %0, %struct.ceph_snap_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_snap_context*, align 8
  %5 = alloca %struct.ceph_snap_context*, align 8
  store %struct.ceph_snap_context* %0, %struct.ceph_snap_context** %4, align 8
  store %struct.ceph_snap_context* %1, %struct.ceph_snap_context** %5, align 8
  %6 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %7 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ceph_snap_context*, %struct.ceph_snap_context** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_snap_context, %struct.ceph_snap_context* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
