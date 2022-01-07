; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c___alloc_dummy_extent_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c___alloc_dummy_extent_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32*, i32 }
%struct.btrfs_fs_info = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_BUFFER_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @__alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.extent_buffer* @__alloc_extent_buffer(%struct.btrfs_fs_info* %11, i32 %12, i64 %13)
  store %struct.extent_buffer* %14, %struct.extent_buffer** %8, align 8
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %16 = icmp ne %struct.extent_buffer* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.extent_buffer* null, %struct.extent_buffer** %4, align 8
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %20 = call i32 @num_extent_pages(%struct.extent_buffer* %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %44, %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call i32 @alloc_page(i32 %26)
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %35 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %57

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %49 = call i32 @set_extent_buffer_uptodate(%struct.extent_buffer* %48)
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %51 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %50, i32 0)
  %52 = load i32, i32* @EXTENT_BUFFER_UNMAPPED, align 4
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %53, i32 0, i32 1
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %56, %struct.extent_buffer** %4, align 8
  br label %77

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %63 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__free_page(i32 %69)
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %10, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %76 = call i32 @__free_extent_buffer(%struct.extent_buffer* %75)
  store %struct.extent_buffer* null, %struct.extent_buffer** %4, align 8
  br label %77

77:                                               ; preds = %74, %47, %17
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  ret %struct.extent_buffer* %78
}

declare dso_local %struct.extent_buffer* @__alloc_extent_buffer(%struct.btrfs_fs_info*, i32, i64) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @set_extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @__free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
