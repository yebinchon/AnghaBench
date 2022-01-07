; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_search_dir_index_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_search_dir_index_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_dir_item = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_DIR_INDEX_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_dir_item* @btrfs_search_dir_index_item(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_dir_item*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca %struct.btrfs_dir_item*, align 8
  %14 = alloca %struct.btrfs_key, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* @BTRFS_DIR_INDEX_KEY, align 8
  %20 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %24 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %22, %struct.btrfs_key* %14, %struct.btrfs_path* %23, i32 0, i32 0)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* %16, align 4
  %29 = call %struct.btrfs_dir_item* @ERR_PTR(i32 %28)
  store %struct.btrfs_dir_item* %29, %struct.btrfs_dir_item** %6, align 8
  br label %105

30:                                               ; preds = %5
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %32 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %31, i32 0, i32 1
  %33 = load %struct.extent_buffer**, %struct.extent_buffer*** %32, align 8
  %34 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %33, i64 0
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %34, align 8
  store %struct.extent_buffer* %35, %struct.extent_buffer** %12, align 8
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %37 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %36)
  store i64 %37, i64* %15, align 8
  br label %38

38:                                               ; preds = %30, %59, %97
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %49 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %47, %struct.btrfs_path* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %16, align 4
  %54 = call %struct.btrfs_dir_item* @ERR_PTR(i32 %53)
  store %struct.btrfs_dir_item* %54, %struct.btrfs_dir_item** %6, align 8
  br label %105

55:                                               ; preds = %46
  %56 = load i32, i32* %16, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %104

59:                                               ; preds = %55
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 1
  %62 = load %struct.extent_buffer**, %struct.extent_buffer*** %61, align 8
  %63 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %62, i64 0
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %63, align 8
  store %struct.extent_buffer* %64, %struct.extent_buffer** %12, align 8
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %66 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %65)
  store i64 %66, i64* %15, align 8
  br label %38

67:                                               ; preds = %38
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %70 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %68, %struct.btrfs_key* %14, i64 %73)
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BTRFS_DIR_INDEX_KEY, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %67
  br label %104

85:                                               ; preds = %79
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %87 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call %struct.btrfs_dir_item* @btrfs_match_dir_item_name(i32 %88, %struct.btrfs_path* %89, i8* %90, i32 %91)
  store %struct.btrfs_dir_item* %92, %struct.btrfs_dir_item** %13, align 8
  %93 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %94 = icmp ne %struct.btrfs_dir_item* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  store %struct.btrfs_dir_item* %96, %struct.btrfs_dir_item** %6, align 8
  br label %105

97:                                               ; preds = %85
  %98 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %38

104:                                              ; preds = %84, %58
  store %struct.btrfs_dir_item* null, %struct.btrfs_dir_item** %6, align 8
  br label %105

105:                                              ; preds = %104, %95, %52, %27
  %106 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %6, align 8
  ret %struct.btrfs_dir_item* %106
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_dir_item* @ERR_PTR(i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_match_dir_item_name(i32, %struct.btrfs_path*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
