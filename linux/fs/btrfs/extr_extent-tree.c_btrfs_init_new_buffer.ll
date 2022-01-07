; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_init_new_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_init_new_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.extent_buffer = type { i64, i32, i64, i64, i32 }
%struct.btrfs_trans_handle = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.btrfs_root = type { i32, i32, %struct.TYPE_6__, %struct.btrfs_fs_info* }
%struct.TYPE_6__ = type { i64 }
%struct.btrfs_fs_info = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [85 x i8] c"tree block %llu owner %llu already locked by pid=%d, extent tree corruption detected\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@EXTENT_BUFFER_STALE = common dso_local global i32 0, align 4
@BTRFS_MIXED_BACKREF_REV = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32)* @btrfs_init_new_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @btrfs_init_new_buffer(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 3
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %12, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info* %17, i32 %18)
  store %struct.extent_buffer* %19, %struct.extent_buffer** %13, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %21 = call i64 @IS_ERR(%struct.extent_buffer* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  store %struct.extent_buffer* %24, %struct.extent_buffer** %6, align 8
  br label %175

25:                                               ; preds = %5
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %27 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %36 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %39 = call i32 @btrfs_header_owner(%struct.extent_buffer* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @btrfs_err_rl(%struct.btrfs_fs_info* %34, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %39, i64 %42)
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %45 = call i32 @free_extent_buffer(%struct.extent_buffer* %44)
  %46 = load i32, i32* @EUCLEAN, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.extent_buffer* @ERR_PTR(i32 %47)
  store %struct.extent_buffer* %48, %struct.extent_buffer** %6, align 8
  br label %175

49:                                               ; preds = %25
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @btrfs_set_buffer_lockdep_class(i64 %53, %struct.extent_buffer* %54, i32 %55)
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %58 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %57)
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %60 = call i32 @btrfs_clean_tree_block(%struct.extent_buffer* %59)
  %61 = load i32, i32* @EXTENT_BUFFER_STALE, align 4
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %63 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %62, i32 0, i32 4
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %66 = call i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer* %65)
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %68 = call i32 @set_extent_buffer_uptodate(%struct.extent_buffer* %67)
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %70 = call i32 @memzero_extent_buffer(%struct.extent_buffer* %69, i32 0, i32 4)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %71, i32 %72)
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %76 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %74, i64 %77)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %81 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @btrfs_set_header_generation(%struct.extent_buffer* %79, i32 %82)
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %85 = load i32, i32* @BTRFS_MIXED_BACKREF_REV, align 4
  %86 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %84, i32 %85)
  %87 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %87, i32 %88)
  %90 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %92 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write_extent_buffer_fsid(%struct.extent_buffer* %90, i32 %95)
  %97 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @write_extent_buffer_chunk_tree_uuid(%struct.extent_buffer* %97, i32 %100)
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %103 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %151

108:                                              ; preds = %49
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %110 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = srem i32 %111, 2
  %113 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %114 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %116 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %108
  %120 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %121 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %120, i32 0, i32 1
  %122 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %123 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %126 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %129 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = sub nsw i64 %131, 1
  %133 = load i32, i32* @GFP_NOFS, align 4
  %134 = call i32 @set_extent_dirty(i32* %121, i64 %124, i64 %132, i32 %133)
  br label %150

135:                                              ; preds = %108
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %137 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %136, i32 0, i32 1
  %138 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %139 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %142 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %145 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = sub nsw i64 %147, 1
  %149 = call i32 @set_extent_new(i32* %137, i64 %140, i64 %148)
  br label %150

150:                                              ; preds = %135, %119
  br label %171

151:                                              ; preds = %49
  %152 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %153 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %152, i32 0, i32 1
  store i32 -1, i32* %153, align 8
  %154 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %155 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %159 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %162 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  %165 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = sub nsw i64 %167, 1
  %169 = load i32, i32* @GFP_NOFS, align 4
  %170 = call i32 @set_extent_dirty(i32* %157, i64 %160, i64 %168, i32 %169)
  br label %171

171:                                              ; preds = %151, %150
  %172 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %173 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  store %struct.extent_buffer* %174, %struct.extent_buffer** %6, align 8
  br label %175

175:                                              ; preds = %171, %33, %23
  %176 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  ret %struct.extent_buffer* %176
}

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_err_rl(%struct.btrfs_fs_info*, i8*, i64, i32, i64) #1

declare dso_local i32 @btrfs_header_owner(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @btrfs_set_buffer_lockdep_class(i64, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_clean_tree_block(%struct.extent_buffer*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.extent_buffer*) #1

declare dso_local i32 @set_extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @memzero_extent_buffer(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i64) #1

declare dso_local i32 @btrfs_set_header_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @write_extent_buffer_fsid(%struct.extent_buffer*, i32) #1

declare dso_local i32 @write_extent_buffer_chunk_tree_uuid(%struct.extent_buffer*, i32) #1

declare dso_local i32 @set_extent_dirty(i32*, i64, i64, i32) #1

declare dso_local i32 @set_extent_new(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
