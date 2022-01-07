; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_try_tree_read_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_try_tree_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_try_tree_read_lock(%struct.extent_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  %4 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 0
  %12 = call i32 @read_trylock(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 0
  %23 = call i32 @read_unlock(i32* %22)
  store i32 0, i32* %2, align 4
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %26 = call i32 @btrfs_assert_tree_read_locks_get(%struct.extent_buffer* %25)
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %28 = call i32 @btrfs_assert_spinning_readers_get(%struct.extent_buffer* %27)
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %30 = call i32 @trace_btrfs_try_tree_read_lock(%struct.extent_buffer* %29)
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %20, %14, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @read_trylock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @btrfs_assert_tree_read_locks_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_spinning_readers_get(%struct.extent_buffer*) #1

declare dso_local i32 @trace_btrfs_try_tree_read_lock(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
