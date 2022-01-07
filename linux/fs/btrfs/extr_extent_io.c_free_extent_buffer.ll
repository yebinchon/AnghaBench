; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_free_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_free_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, i32, i32 }

@EXTENT_BUFFER_UNMAPPED = common dso_local global i32 0, align 4
@EXTENT_BUFFER_STALE = common dso_local global i32 0, align 4
@EXTENT_BUFFER_TREE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_extent_buffer(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %6 = icmp ne %struct.extent_buffer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %74

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %42
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @EXTENT_BUFFER_UNMAPPED, align 4
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 3
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %9
  %22 = load i32, i32* @EXTENT_BUFFER_UNMAPPED, align 4
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %18
  br label %43

31:                                               ; preds = %27, %21
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %33 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @atomic_cmpxchg(i32* %33, i32 %34, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %74

42:                                               ; preds = %31
  br label %9

43:                                               ; preds = %30
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %45 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %44, i32 0, i32 2
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %48 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load i32, i32* @EXTENT_BUFFER_STALE, align 4
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %54 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %53, i32 0, i32 1
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %59 = call i32 @extent_buffer_under_io(%struct.extent_buffer* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @EXTENT_BUFFER_TREE_REF, align 4
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %64 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %63, i32 0, i32 1
  %65 = call i64 @test_and_clear_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %69 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %68, i32 0, i32 0
  %70 = call i32 @atomic_dec(i32* %69)
  br label %71

71:                                               ; preds = %67, %61, %57, %51, %43
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %73 = call i32 @release_extent_buffer(%struct.extent_buffer* %72)
  br label %74

74:                                               ; preds = %71, %41, %7
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

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
