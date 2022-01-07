; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_free_extent_buffer_stale.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_free_extent_buffer_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, i32, i32 }

@EXTENT_BUFFER_STALE = common dso_local global i32 0, align 4
@EXTENT_BUFFER_TREE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_extent_buffer_stale(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %3 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %4 = icmp ne %struct.extent_buffer* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %7, i32 0, i32 2
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* @EXTENT_BUFFER_STALE, align 4
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %11, i32 0, i32 1
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %6
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %20 = call i32 @extent_buffer_under_io(%struct.extent_buffer* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EXTENT_BUFFER_TREE_REF, align 4
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %24, i32 0, i32 1
  %26 = call i64 @test_and_clear_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %29, i32 0, i32 0
  %31 = call i32 @atomic_dec(i32* %30)
  br label %32

32:                                               ; preds = %28, %22, %18, %6
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %34 = call i32 @release_extent_buffer(%struct.extent_buffer* %33)
  br label %35

35:                                               ; preds = %32, %5
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @extent_buffer_under_io(%struct.extent_buffer*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @release_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
