; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_start_write_no_snapshotting.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_start_write_no_snapshotting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_start_write_no_snapshotting(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %4 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %5 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %4, i32 0, i32 0
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @percpu_counter_inc(i32* %13)
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %22 = call i32 @btrfs_end_write_no_snapshotting(%struct.btrfs_root* %21)
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @btrfs_end_write_no_snapshotting(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
