; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_drop_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_drop_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i32*, i64*, %struct.extent_buffer** }
%struct.walk_control = type { i32*, i32, i32, i32, i32, i64, i32, i32* }

@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK_BLOCKING = common dso_local global i32 0, align 4
@BTRFS_BLOCK_FLAG_FULL_BACKREF = common dso_local global i32 0, align 4
@DROP_REFERENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_drop_subtree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.extent_buffer* %2, %struct.extent_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.walk_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %3, %struct.extent_buffer** %9, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 1
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %10, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BTRFS_TREE_RELOC_OBJECTID, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %28, %struct.btrfs_path** %11, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %30 = icmp ne %struct.btrfs_path* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %151

34:                                               ; preds = %4
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.walk_control* @kzalloc(i32 48, i32 %35)
  store %struct.walk_control* %36, %struct.walk_control** %12, align 8
  %37 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %38 = icmp ne %struct.walk_control* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %41 = call i32 @btrfs_free_path(%struct.btrfs_path* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %151

44:                                               ; preds = %34
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %46 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %45)
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %48 = call i32 @btrfs_header_level(%struct.extent_buffer* %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %50 = call i32 @extent_buffer_get(%struct.extent_buffer* %49)
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 2
  %54 = load %struct.extent_buffer**, %struct.extent_buffer*** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %54, i64 %56
  store %struct.extent_buffer* %51, %struct.extent_buffer** %57, align 8
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %59 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %58)
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %67 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %66)
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %69 = call i32 @btrfs_header_level(%struct.extent_buffer* %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 2
  %73 = load %struct.extent_buffer**, %struct.extent_buffer*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %73, i64 %75
  store %struct.extent_buffer* %70, %struct.extent_buffer** %76, align 8
  %77 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %78 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @BTRFS_WRITE_LOCK_BLOCKING, align 4
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %85 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %91 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* @BTRFS_BLOCK_FLAG_FULL_BACKREF, align 4
  %97 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %98 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %105 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %107 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %106, i32 0, i32 2
  store i32 -1, i32* %107, align 4
  %108 = load i32, i32* @DROP_REFERENCE, align 4
  %109 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %110 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %112 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %111, i32 0, i32 5
  store i64 0, i64* %112, align 8
  %113 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %114 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %113, i32 0, i32 3
  store i32 1, i32* %114, align 8
  %115 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %116 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %115)
  %117 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %118 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %44, %144
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %122 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %123 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %124 = call i32 @walk_down_tree(%struct.btrfs_trans_handle* %120, %struct.btrfs_root* %121, %struct.btrfs_path* %122, %struct.walk_control* %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %15, align 4
  br label %145

129:                                              ; preds = %119
  %130 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %132 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %133 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @walk_up_tree(%struct.btrfs_trans_handle* %130, %struct.btrfs_root* %131, %struct.btrfs_path* %132, %struct.walk_control* %133, i32 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %138, %129
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %145

144:                                              ; preds = %140
  br label %119

145:                                              ; preds = %143, %127
  %146 = load %struct.walk_control*, %struct.walk_control** %12, align 8
  %147 = call i32 @kfree(%struct.walk_control* %146)
  %148 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %149 = call i32 @btrfs_free_path(%struct.btrfs_path* %148)
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %145, %39, %31
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.walk_control* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info*) #1

declare dso_local i32 @walk_down_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.walk_control*) #1

declare dso_local i32 @walk_up_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.walk_control*, i32) #1

declare dso_local i32 @kfree(%struct.walk_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
