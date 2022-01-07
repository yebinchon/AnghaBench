; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_try_release_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_try_release_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32, i32, i32 }

@EXTENT_BUFFER_TREE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_release_extent_buffer(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @PagePrivate(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  store i32 1, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.extent_buffer*
  store %struct.extent_buffer* %23, %struct.extent_buffer** %4, align 8
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %25 = icmp ne %struct.extent_buffer* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %32, i32 0, i32 2
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %19
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %38 = call i64 @extent_buffer_under_io(%struct.extent_buffer* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %19
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  store i32 0, i32* %2, align 4
  br label %67

49:                                               ; preds = %36
  %50 = load %struct.page*, %struct.page** %3, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* @EXTENT_BUFFER_TREE_REF, align 4
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %56, i32 0, i32 1
  %58 = call i32 @test_and_clear_bit(i32 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  store i32 0, i32* %2, align 4
  br label %67

64:                                               ; preds = %49
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %66 = call i32 @release_extent_buffer(%struct.extent_buffer* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %60, %40, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @extent_buffer_under_io(%struct.extent_buffer*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @release_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
