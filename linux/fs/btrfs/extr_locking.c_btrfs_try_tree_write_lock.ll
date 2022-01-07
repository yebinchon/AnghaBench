; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_try_tree_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_try_tree_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32, i32, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_try_tree_write_lock(%struct.extent_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  %4 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %9, i32 0, i32 2
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %15, i32 0, i32 1
  %17 = call i32 @write_lock(i32* %16)
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %23, i32 0, i32 2
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %14
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %28, i32 0, i32 1
  %30 = call i32 @write_unlock(i32* %29)
  store i32 0, i32* %2, align 4
  br label %43

31:                                               ; preds = %22
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %33 = call i32 @btrfs_assert_tree_write_locks_get(%struct.extent_buffer* %32)
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %35 = call i32 @btrfs_assert_spinning_writers_get(%struct.extent_buffer* %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %42 = call i32 @trace_btrfs_try_tree_write_lock(%struct.extent_buffer* %41)
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %31, %27, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @btrfs_assert_tree_write_locks_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_spinning_writers_get(%struct.extent_buffer*) #1

declare dso_local i32 @trace_btrfs_try_tree_write_lock(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
