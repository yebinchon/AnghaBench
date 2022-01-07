; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_push_leaf_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_push_leaf_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i64)* @push_leaf_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_leaf_left(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.extent_buffer*, align 8
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %23 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %22, i32 0, i32 1
  %24 = load %struct.extent_buffer**, %struct.extent_buffer*** %23, align 8
  %25 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %24, i64 0
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %25, align 8
  store %struct.extent_buffer* %26, %struct.extent_buffer** %16, align 8
  store i32 0, i32* %21, align 4
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %28 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %122

35:                                               ; preds = %7
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 1
  %38 = load %struct.extent_buffer**, %struct.extent_buffer*** %37, align 8
  %39 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %38, i64 1
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %39, align 8
  %41 = icmp ne %struct.extent_buffer* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %122

43:                                               ; preds = %35
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %45 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %44)
  store i64 %45, i64* %20, align 8
  %46 = load i64, i64* %20, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %122

49:                                               ; preds = %43
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %51 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %50, i32 0, i32 1
  %52 = load %struct.extent_buffer**, %struct.extent_buffer*** %51, align 8
  %53 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %52, i64 1
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %53, align 8
  %55 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %54)
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %57 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %56, i32 0, i32 1
  %58 = load %struct.extent_buffer**, %struct.extent_buffer*** %57, align 8
  %59 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %58, i64 1
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer* %60, i32 %62)
  store %struct.extent_buffer* %63, %struct.extent_buffer** %17, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %65 = call i64 @IS_ERR(%struct.extent_buffer* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %122

68:                                               ; preds = %49
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %70 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %69)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %72 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %71)
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %74 = call i32 @btrfs_leaf_free_space(%struct.extent_buffer* %73)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 1, i32* %21, align 4
  br label %116

79:                                               ; preds = %68
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %83 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %84 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %83, i32 0, i32 1
  %85 = load %struct.extent_buffer**, %struct.extent_buffer*** %84, align 8
  %86 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %85, i64 1
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @btrfs_cow_block(%struct.btrfs_trans_handle* %80, %struct.btrfs_root* %81, %struct.extent_buffer* %82, %struct.extent_buffer* %87, i32 %89, %struct.extent_buffer** %17)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* @ENOSPC, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %21, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %116

100:                                              ; preds = %79
  %101 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %102 = call i32 @btrfs_leaf_free_space(%struct.extent_buffer* %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 1, i32* %21, align 4
  br label %116

107:                                              ; preds = %100
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i32 @__push_leaf_left(%struct.btrfs_path* %108, i32 %109, i32 %110, %struct.extent_buffer* %111, i32 %112, i64 %113, i64 %114)
  store i32 %115, i32* %8, align 4
  br label %122

116:                                              ; preds = %106, %99, %78
  %117 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %118 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %117)
  %119 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %120 = call i32 @free_extent_buffer(%struct.extent_buffer* %119)
  %121 = load i32, i32* %21, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %107, %67, %48, %42, %34
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @btrfs_read_node_slot(%struct.extent_buffer*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_leaf_free_space(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**) #1

declare dso_local i32 @__push_leaf_left(%struct.btrfs_path*, i32, i32, %struct.extent_buffer*, i32, i64, i64) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
