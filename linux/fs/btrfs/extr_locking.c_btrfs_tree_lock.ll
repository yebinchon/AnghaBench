; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_tree_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_tree_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i64, i32, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_lock(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @trace_btrfs_tree_lock_enabled()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @ktime_get_ns()
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  br label %18

18:                                               ; preds = %49, %8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %23 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %22, i32 0, i32 3
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event(i32 %21, i32 %26)
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event(i32 %30, i32 %35)
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %37, i32 0, i32 2
  %39 = call i32 @write_lock(i32* %38)
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %41 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %40, i32 0, i32 3
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %18
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %46 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %18
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %51 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %50, i32 0, i32 2
  %52 = call i32 @write_unlock(i32* %51)
  br label %18

53:                                               ; preds = %44
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %55 = call i32 @btrfs_assert_spinning_writers_get(%struct.extent_buffer* %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %57 = call i32 @btrfs_assert_tree_write_locks_get(%struct.extent_buffer* %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %62 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @trace_btrfs_tree_lock(%struct.extent_buffer* %63, i32 %64)
  ret void
}

declare dso_local i64 @trace_btrfs_tree_lock_enabled(...) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @btrfs_assert_spinning_writers_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_write_locks_get(%struct.extent_buffer*) #1

declare dso_local i32 @trace_btrfs_tree_lock(%struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
