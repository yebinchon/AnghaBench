; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_create_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_create_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer*, %struct.TYPE_15__, i32, %struct.extent_buffer*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64, i32, i64, i64 }
%struct.extent_buffer = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i8*, i8* }
%struct.btrfs_trans_handle = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_key = type { i64, i8*, i8* }

@NULL_UUID_LE = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i8* null, align 8
@BTRFS_ROOT_TRACK_DIRTY = common dso_local global i32 0, align 4
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_root* @btrfs_create_tree(%struct.btrfs_trans_handle* %0, i8* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_key, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 1
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %6, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 0
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %8, align 8
  store i32 0, i32* %12, align 4
  %20 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_14__* @NULL_UUID_LE to i8*), i64 4, i1 false)
  %21 = call i32 (...) @memalloc_nofs_save()
  store i32 %21, i32* %11, align 4
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info* %22, i32 %23)
  store %struct.btrfs_root* %24, %struct.btrfs_root** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @memalloc_nofs_restore(i32 %25)
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %28 = icmp ne %struct.btrfs_root* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.btrfs_root* @ERR_PTR(i32 %31)
  store %struct.btrfs_root* %32, %struct.btrfs_root** %3, align 8
  br label %160

33:                                               ; preds = %2
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @__setup_root(%struct.btrfs_root* %34, %struct.btrfs_fs_info* %35, i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @BTRFS_ROOT_ITEM_KEY, align 8
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle* %49, %struct.btrfs_root* %50, i32 0, i8* %51, i32* null, i32 0, i32 0, i32 0)
  store %struct.extent_buffer* %52, %struct.extent_buffer** %7, align 8
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %54 = call i64 @IS_ERR(%struct.extent_buffer* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %33
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.extent_buffer* %57)
  store i32 %58, i32* %12, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %7, align 8
  br label %143

59:                                               ; preds = %33
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 3
  store %struct.extent_buffer* %60, %struct.extent_buffer** %62, align 8
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %64 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %63)
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %66 = call %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root* %65)
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 0
  store %struct.extent_buffer* %66, %struct.extent_buffer** %68, align 8
  %69 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %71 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %70, i32 0, i32 2
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %77 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %80 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %79, i32 0, i32 1
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %82 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @btrfs_set_root_bytenr(%struct.TYPE_15__* %80, i32 %83)
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %86 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %85, i32 0, i32 1
  %87 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %88 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @btrfs_set_root_generation(%struct.TYPE_15__* %86, i32 %89)
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %92 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %91, i32 0, i32 1
  %93 = call i32 @btrfs_set_root_level(%struct.TYPE_15__* %92, i32 0)
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %95 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %94, i32 0, i32 1
  %96 = call i32 @btrfs_set_root_refs(%struct.TYPE_15__* %95, i32 1)
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %98 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %97, i32 0, i32 1
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @btrfs_set_root_used(%struct.TYPE_15__* %98, i32 %101)
  %103 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %104 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %103, i32 0, i32 1
  %105 = call i32 @btrfs_set_root_last_snapshot(%struct.TYPE_15__* %104, i32 0)
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %107 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %106, i32 0, i32 1
  %108 = call i32 @btrfs_set_root_dirid(%struct.TYPE_15__* %107, i32 0)
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @is_fstree(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %59
  %113 = call i32 @uuid_le_gen(%struct.TYPE_14__* %13)
  br label %114

114:                                              ; preds = %112, %59
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %116 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %122 = call i32 @memcpy(i32 %118, i32 %120, i32 %121)
  %123 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %124 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 2
  store i8* %126, i8** %127, align 8
  %128 = load i8*, i8** @BTRFS_ROOT_ITEM_KEY, align 8
  %129 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %10, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %132 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %133 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %134 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %133, i32 0, i32 1
  %135 = call i32 @btrfs_insert_root(%struct.btrfs_trans_handle* %131, %struct.btrfs_root* %132, %struct.btrfs_key* %10, %struct.TYPE_15__* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %114
  br label %143

139:                                              ; preds = %114
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %141 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %140)
  %142 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_root* %142, %struct.btrfs_root** %3, align 8
  br label %160

143:                                              ; preds = %138, %56
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %145 = icmp ne %struct.extent_buffer* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %148 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %147)
  %149 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %150 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %149, i32 0, i32 0
  %151 = load %struct.extent_buffer*, %struct.extent_buffer** %150, align 8
  %152 = call i32 @free_extent_buffer(%struct.extent_buffer* %151)
  %153 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %154 = call i32 @free_extent_buffer(%struct.extent_buffer* %153)
  br label %155

155:                                              ; preds = %146, %143
  %156 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %157 = call i32 @kfree(%struct.btrfs_root* %156)
  %158 = load i32, i32* %12, align 4
  %159 = call %struct.btrfs_root* @ERR_PTR(i32 %158)
  store %struct.btrfs_root* %159, %struct.btrfs_root** %3, align 8
  br label %160

160:                                              ; preds = %155, %139, %29
  %161 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  ret %struct.btrfs_root* %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memalloc_nofs_save(...) #2

declare dso_local %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info*, i32) #2

declare dso_local i32 @memalloc_nofs_restore(i32) #2

declare dso_local %struct.btrfs_root* @ERR_PTR(i32) #2

declare dso_local i32 @__setup_root(%struct.btrfs_root*, %struct.btrfs_fs_info*, i8*) #2

declare dso_local %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i8*, i32*, i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #2

declare dso_local i32 @PTR_ERR(%struct.extent_buffer*) #2

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #2

declare dso_local %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @btrfs_set_root_bytenr(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @btrfs_set_root_generation(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @btrfs_set_root_level(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @btrfs_set_root_refs(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @btrfs_set_root_used(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @btrfs_set_root_last_snapshot(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @btrfs_set_root_dirid(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @is_fstree(i8*) #2

declare dso_local i32 @uuid_le_gen(%struct.TYPE_14__*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @btrfs_insert_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.TYPE_15__*) #2

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #2

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #2

declare dso_local i32 @kfree(%struct.btrfs_root*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
