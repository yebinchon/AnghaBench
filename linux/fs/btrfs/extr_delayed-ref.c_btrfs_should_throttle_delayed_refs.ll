; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_should_throttle_delayed_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_should_throttle_delayed_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_should_throttle_delayed_refs(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @smp_mb()
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NSEC_PER_SEC, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NSEC_PER_SEC, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 2, i32* %2, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @btrfs_check_space_for_delayed_refs(%struct.TYPE_6__* %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31, %25
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @btrfs_check_space_for_delayed_refs(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
