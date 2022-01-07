; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_tree_read_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_locking.c_btrfs_tree_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i64, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_tree_read_lock(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @trace_btrfs_tree_read_lock_enabled()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @ktime_get_ns()
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  br label %9

9:                                                ; preds = %59, %8
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 4
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi i1 [ false, %9 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %43 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %47 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %49 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %48, i32 0, i32 4
  %50 = call i32 @read_unlock(i32* %49)
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @trace_btrfs_tree_read_lock(%struct.extent_buffer* %51, i32 %52)
  br label %80

54:                                               ; preds = %33, %25
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %56 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %61 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %60, i32 0, i32 4
  %62 = call i32 @read_unlock(i32* %61)
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %64 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %67 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @wait_event(i32 %65, i32 %70)
  br label %9

72:                                               ; preds = %54
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %74 = call i32 @btrfs_assert_tree_read_locks_get(%struct.extent_buffer* %73)
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %76 = call i32 @btrfs_assert_spinning_readers_get(%struct.extent_buffer* %75)
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @trace_btrfs_tree_read_lock(%struct.extent_buffer* %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %41
  ret void
}

declare dso_local i64 @trace_btrfs_tree_read_lock_enabled(...) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @trace_btrfs_tree_read_lock(%struct.extent_buffer*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @btrfs_assert_tree_read_locks_get(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_spinning_readers_get(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
