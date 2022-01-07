; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_tree_read_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_tree_read_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i32, i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_read_unlock(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %3 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %4 = call i32 @trace_btrfs_tree_read_unlock(%struct.extent_buffer* %3)
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %30

20:                                               ; preds = %9, %1
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %22 = call i32 @btrfs_assert_tree_read_locked(%struct.extent_buffer* %21)
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %24 = call i32 @btrfs_assert_spinning_readers_put(%struct.extent_buffer* %23)
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %26 = call i32 @btrfs_assert_tree_read_locks_put(%struct.extent_buffer* %25)
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 2
  %29 = call i32 @read_unlock(i32* %28)
  br label %30

30:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @trace_btrfs_tree_read_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_read_locked(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_spinning_readers_put(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_read_locks_put(%struct.extent_buffer*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
