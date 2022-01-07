; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_alloc_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_alloc_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i64 }
%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.btrfs_block_rsv = type opaque
%struct.btrfs_delayed_extent_op = type { i32, i32, i32, i32, i32, i32 }
%struct.btrfs_ref = type { i32, i32 }

@SKINNY_METADATA = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_BLOCK_FLAG_FULL_BACKREF = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3, %struct.btrfs_disk_key* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_disk_key*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_fs_info*, align 8
  %19 = alloca %struct.btrfs_key, align 4
  %20 = alloca %struct.btrfs_block_rsv*, align 8
  %21 = alloca %struct.extent_buffer*, align 8
  %22 = alloca %struct.btrfs_delayed_extent_op*, align 8
  %23 = alloca %struct.btrfs_ref, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %10, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.btrfs_disk_key* %4, %struct.btrfs_disk_key** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 2
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %29, align 8
  store %struct.btrfs_fs_info* %30, %struct.btrfs_fs_info** %18, align 8
  %31 = bitcast %struct.btrfs_ref* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 8, i1 false)
  store i32 0, i32* %24, align 4
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %26, align 8
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %36 = load i32, i32* @SKINNY_METADATA, align 4
  %37 = call i32 @btrfs_fs_incompat(%struct.btrfs_fs_info* %35, i32 %36)
  store i32 %37, i32* %27, align 4
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %40 = load i64, i64* %26, align 8
  %41 = call %struct.extent_buffer* @btrfs_use_block_rsv(%struct.btrfs_trans_handle* %38, %struct.btrfs_root* %39, i64 %40)
  %42 = bitcast %struct.extent_buffer* %41 to %struct.btrfs_block_rsv*
  store %struct.btrfs_block_rsv* %42, %struct.btrfs_block_rsv** %20, align 8
  %43 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %20, align 8
  %44 = bitcast %struct.btrfs_block_rsv* %43 to %struct.extent_buffer*
  %45 = call i64 @IS_ERR(%struct.extent_buffer* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %8
  %48 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %20, align 8
  %49 = bitcast %struct.btrfs_block_rsv* %48 to %struct.extent_buffer*
  %50 = call %struct.extent_buffer* @ERR_CAST(%struct.extent_buffer* %49)
  store %struct.extent_buffer* %50, %struct.extent_buffer** %9, align 8
  br label %182

51:                                               ; preds = %8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %53 = load i64, i64* %26, align 8
  %54 = load i64, i64* %26, align 8
  %55 = load i64, i64* %26, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @btrfs_reserve_extent(%struct.btrfs_root* %52, i64 %53, i64 %54, i64 %55, i32 %56, i32 %57, %struct.btrfs_key* %19, i32 0, i32 0)
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %174

62:                                               ; preds = %51
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call %struct.extent_buffer* @btrfs_init_new_buffer(%struct.btrfs_trans_handle* %63, %struct.btrfs_root* %64, i32 %66, i32 %67, i32 %68)
  store %struct.extent_buffer* %69, %struct.extent_buffer** %21, align 8
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %71 = call i64 @IS_ERR(%struct.extent_buffer* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %75 = call i32 @PTR_ERR(%struct.extent_buffer* %74)
  store i32 %75, i32* %25, align 4
  br label %167

76:                                               ; preds = %62
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* @BTRFS_BLOCK_FLAG_FULL_BACKREF, align 4
  %88 = load i32, i32* %24, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %24, align 4
  br label %95

90:                                               ; preds = %76
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @BTRFS_TREE_LOG_OBJECTID, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %159

99:                                               ; preds = %95
  %100 = call %struct.btrfs_delayed_extent_op* (...) @btrfs_alloc_delayed_extent_op()
  store %struct.btrfs_delayed_extent_op* %100, %struct.btrfs_delayed_extent_op** %22, align 8
  %101 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %102 = icmp ne %struct.btrfs_delayed_extent_op* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %25, align 4
  br label %164

106:                                              ; preds = %99
  %107 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %14, align 8
  %108 = icmp ne %struct.btrfs_disk_key* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %111 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %110, i32 0, i32 5
  %112 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %14, align 8
  %113 = call i32 @memcpy(i32* %111, %struct.btrfs_disk_key* %112, i32 4)
  br label %118

114:                                              ; preds = %106
  %115 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %116 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %115, i32 0, i32 5
  %117 = call i32 @memset(i32* %116, i32 0, i32 4)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %24, align 4
  %120 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %121 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %27, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 1
  %126 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %127 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %129 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %131 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %134 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %136 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @btrfs_init_generic_ref(%struct.btrfs_ref* %23, i32 %135, i32 %137, i32 %139, i32 %140)
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %143 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %23, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @btrfs_init_tree_ref(%struct.btrfs_ref* %23, i32 %147, i32 %148)
  %150 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %151 = call i32 @btrfs_ref_tree_mod(%struct.btrfs_fs_info* %150, %struct.btrfs_ref* %23)
  %152 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %153 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %154 = call i32 @btrfs_add_delayed_tree_ref(%struct.btrfs_trans_handle* %152, %struct.btrfs_ref* %23, %struct.btrfs_delayed_extent_op* %153, i32* null, i32* null)
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %25, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %118
  br label %161

158:                                              ; preds = %118
  br label %159

159:                                              ; preds = %158, %95
  %160 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  store %struct.extent_buffer* %160, %struct.extent_buffer** %9, align 8
  br label %182

161:                                              ; preds = %157
  %162 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %22, align 8
  %163 = call i32 @btrfs_free_delayed_extent_op(%struct.btrfs_delayed_extent_op* %162)
  br label %164

164:                                              ; preds = %161, %103
  %165 = load %struct.extent_buffer*, %struct.extent_buffer** %21, align 8
  %166 = call i32 @free_extent_buffer(%struct.extent_buffer* %165)
  br label %167

167:                                              ; preds = %164, %73
  %168 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %169 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %19, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @btrfs_free_reserved_extent(%struct.btrfs_fs_info* %168, i32 %170, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %167, %61
  %175 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %176 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %20, align 8
  %177 = bitcast %struct.btrfs_block_rsv* %176 to %struct.extent_buffer*
  %178 = load i64, i64* %26, align 8
  %179 = call i32 @btrfs_unuse_block_rsv(%struct.btrfs_fs_info* %175, %struct.extent_buffer* %177, i64 %178)
  %180 = load i32, i32* %25, align 4
  %181 = call %struct.extent_buffer* @ERR_PTR(i32 %180)
  store %struct.extent_buffer* %181, %struct.extent_buffer** %9, align 8
  br label %182

182:                                              ; preds = %174, %159, %47
  %183 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  ret %struct.extent_buffer* %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btrfs_fs_incompat(%struct.btrfs_fs_info*, i32) #2

declare dso_local %struct.extent_buffer* @btrfs_use_block_rsv(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64) #2

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #2

declare dso_local %struct.extent_buffer* @ERR_CAST(%struct.extent_buffer*) #2

declare dso_local i32 @btrfs_reserve_extent(%struct.btrfs_root*, i64, i64, i64, i32, i32, %struct.btrfs_key*, i32, i32) #2

declare dso_local %struct.extent_buffer* @btrfs_init_new_buffer(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.btrfs_delayed_extent_op* @btrfs_alloc_delayed_extent_op(...) #2

declare dso_local i32 @memcpy(i32*, %struct.btrfs_disk_key*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @btrfs_init_generic_ref(%struct.btrfs_ref*, i32, i32, i32, i32) #2

declare dso_local i32 @btrfs_init_tree_ref(%struct.btrfs_ref*, i32, i32) #2

declare dso_local i32 @btrfs_ref_tree_mod(%struct.btrfs_fs_info*, %struct.btrfs_ref*) #2

declare dso_local i32 @btrfs_add_delayed_tree_ref(%struct.btrfs_trans_handle*, %struct.btrfs_ref*, %struct.btrfs_delayed_extent_op*, i32*, i32*) #2

declare dso_local i32 @btrfs_free_delayed_extent_op(%struct.btrfs_delayed_extent_op*) #2

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #2

declare dso_local i32 @btrfs_free_reserved_extent(%struct.btrfs_fs_info*, i32, i32, i32) #2

declare dso_local i32 @btrfs_unuse_block_rsv(%struct.btrfs_fs_info*, %struct.extent_buffer*, i64) #2

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
