; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_previous_extent_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_previous_extent_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64 }

@BTRFS_EXTENT_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_METADATA_ITEM_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_previous_extent_item(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %12

12:                                               ; preds = %3, %98
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %21 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %20)
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %24 = call i32 @btrfs_prev_leaf(%struct.btrfs_root* %22, %struct.btrfs_path* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %100

29:                                               ; preds = %19
  br label %37

30:                                               ; preds = %12
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %30, %29
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 1
  %40 = load %struct.extent_buffer**, %struct.extent_buffer*** %39, align 8
  %41 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %40, i64 0
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %41, align 8
  store %struct.extent_buffer* %42, %struct.extent_buffer** %9, align 8
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %44 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %100

48:                                               ; preds = %37
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56, %48
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %64, %struct.btrfs_key* %8, i64 %69)
  %71 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %99

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BTRFS_EXTENT_ITEM_KEY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BTRFS_METADATA_ITEM_KEY, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %76
  store i32 0, i32* %4, align 4
  br label %100

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BTRFS_EXTENT_ITEM_KEY, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %99

98:                                               ; preds = %92, %87
  br label %12

99:                                               ; preds = %97, %75
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %86, %47, %27
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_prev_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
