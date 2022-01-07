; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_wait_for_snapshot_creation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_wait_for_snapshot_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_wait_for_snapshot_creation(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  br label %4

4:                                                ; preds = %1, %10
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %6 = call i32 @btrfs_start_write_no_snapshotting(%struct.btrfs_root* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %20

10:                                               ; preds = %4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 0
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @wait_var_event(i32* %12, i32 %18)
  br label %4

20:                                               ; preds = %9
  ret void
}

declare dso_local i32 @btrfs_start_write_no_snapshotting(%struct.btrfs_root*) #1

declare dso_local i32 @wait_var_event(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
