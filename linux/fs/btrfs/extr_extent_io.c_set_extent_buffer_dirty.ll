; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_set_extent_buffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_set_extent_buffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32*, i32, i32 }

@EXTENT_BUFFER_DIRTY = common dso_local global i32 0, align 4
@EXTENT_BUFFER_TREE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_extent_buffer_dirty(%struct.extent_buffer* %0) #0 {
  %2 = alloca %struct.extent_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %2, align 8
  %6 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %7 = call i32 @check_buffer_tree_ref(%struct.extent_buffer* %6)
  %8 = load i32, i32* @EXTENT_BUFFER_DIRTY, align 4
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %9, i32 0, i32 1
  %11 = call i32 @test_and_set_bit(i32 %8, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %13 = call i32 @num_extent_pages(%struct.extent_buffer* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %14, i32 0, i32 2
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* @EXTENT_BUFFER_TREE_REF, align 4
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 1
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %2, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_page_dirty(i32 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %31

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @check_buffer_tree_ref(%struct.extent_buffer*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_page_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
