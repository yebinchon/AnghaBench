; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_check_dir_item_collision.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dir-item.c_btrfs_check_dir_item_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_dir_item = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_DIR_ITEM_KEY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_check_dir_item_collision(%struct.btrfs_root* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_key, align 4
  %12 = alloca %struct.btrfs_dir_item*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_path*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %17, %struct.btrfs_path** %16, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %19 = icmp ne %struct.btrfs_path* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %91

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @BTRFS_DIR_ITEM_KEY, align 4
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @btrfs_name_hash(i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %34 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %32, %struct.btrfs_key* %11, %struct.btrfs_path* %33, i32 0, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %87

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %87

42:                                               ; preds = %38
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.btrfs_dir_item* @btrfs_match_dir_item_name(i32 %45, %struct.btrfs_path* %46, i8* %47, i32 %48)
  store %struct.btrfs_dir_item* %49, %struct.btrfs_dir_item** %12, align 8
  %50 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %51 = icmp ne %struct.btrfs_dir_item* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EEXIST, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %87

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 4, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 1
  %62 = load %struct.extent_buffer**, %struct.extent_buffer*** %61, align 8
  %63 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %62, i64 0
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %63, align 8
  store %struct.extent_buffer* %64, %struct.extent_buffer** %14, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %72, i32 %73)
  %75 = add nsw i64 %71, %74
  %76 = add i64 %75, 4
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @BTRFS_LEAF_DATA_SIZE(i32 %79)
  %81 = icmp ugt i64 %76, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %55
  %83 = load i32, i32* @EOVERFLOW, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %86

85:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %52, %41, %37
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %16, align 8
  %89 = call i32 @btrfs_free_path(%struct.btrfs_path* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %20
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_name_hash(i8*, i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_match_dir_item_name(i32, %struct.btrfs_path*, i8*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @BTRFS_LEAF_DATA_SIZE(i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
