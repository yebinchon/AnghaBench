; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_walk_down_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_walk_down_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32*, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

@EIO = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_path*, i32, i32*, i32*)* @walk_down_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_down_tree(%struct.btrfs_root* %0, %struct.btrfs_path* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btrfs_key, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 0
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %12, align 8
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %132, %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %135

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %122

27:                                               ; preds = %24
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 2
  %30 = load %struct.extent_buffer**, %struct.extent_buffer*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %30, i64 %32
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %33, align 8
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @btrfs_node_blockptr(%struct.extent_buffer* %34, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 2
  %45 = load %struct.extent_buffer**, %struct.extent_buffer*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %45, i64 %47
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %48, align 8
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %51 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @btrfs_node_ptr_generation(%struct.extent_buffer* %49, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %59 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %58, i32 0, i32 2
  %60 = load %struct.extent_buffer**, %struct.extent_buffer*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %60, i64 %62
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %63, align 8
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %66 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @btrfs_node_key_to_cpu(%struct.extent_buffer* %64, %struct.btrfs_key* %17, i32 %71)
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %73, i32 %74, i32 %75, i32 %77, %struct.btrfs_key* %17)
  store %struct.extent_buffer* %78, %struct.extent_buffer** %13, align 8
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %80 = call i64 @IS_ERR(%struct.extent_buffer* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %27
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %84 = call i32 @PTR_ERR(%struct.extent_buffer* %83)
  store i32 %84, i32* %6, align 4
  br label %137

85:                                               ; preds = %27
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %87 = call i32 @extent_buffer_uptodate(%struct.extent_buffer* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %91 = call i32 @free_extent_buffer(%struct.extent_buffer* %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %137

94:                                               ; preds = %85
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %96 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %95)
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %98 = call i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer* %97)
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %100 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %101 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %100, i32 0, i32 2
  %102 = load %struct.extent_buffer**, %struct.extent_buffer*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %102, i64 %105
  store %struct.extent_buffer* %99, %struct.extent_buffer** %106, align 8
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %108 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @BTRFS_READ_LOCK_BLOCKING, align 4
  %115 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %116 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %114, i32* %121, align 4
  br label %132

122:                                              ; preds = %24
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %124 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @process_leaf(%struct.btrfs_root* %123, %struct.btrfs_path* %124, i32* %125, i32* %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %135

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %94
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %9, align 4
  br label %21

135:                                              ; preds = %130, %21
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %89, %82
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @btrfs_node_blockptr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_ptr_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info*, i32, i32, i32, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking_read(%struct.extent_buffer*) #1

declare dso_local i32 @process_leaf(%struct.btrfs_root*, %struct.btrfs_path*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
