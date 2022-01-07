; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_remove_block_group_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_remove_block_group_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@FREE_SPACE_TREE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_INFO_KEY = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_EXTENT_KEY = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_BITMAP_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_block_group_free_space(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %5, align 8
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %6, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @FREE_SPACE_TREE, align 4
  %25 = call i32 @btrfs_fs_compat_ro(%struct.TYPE_4__* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %204

28:                                               ; preds = %2
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %204

34:                                               ; preds = %28
  %35 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %35, %struct.btrfs_path** %7, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %37 = icmp ne %struct.btrfs_path* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  br label %193

41:                                               ; preds = %34
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %49, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %55, 1
  %57 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i64 -1, i64* %58, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i64 -1, i64* %59, align 8
  br label %60

60:                                               ; preds = %189, %41
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br i1 %63, label %64, label %192

64:                                               ; preds = %60
  %65 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %66 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %68 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %65, %struct.btrfs_root* %66, %struct.btrfs_key* %8, %struct.btrfs_path* %67, i32 -1, i32 1)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %193

72:                                               ; preds = %64
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 1
  %75 = load %struct.extent_buffer**, %struct.extent_buffer*** %74, align 8
  %76 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %75, i64 0
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %76, align 8
  store %struct.extent_buffer* %77, %struct.extent_buffer** %10, align 8
  store i32 0, i32* %14, align 4
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %79 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %174, %72
  %85 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %86 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %175

91:                                               ; preds = %84
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %94 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  %99 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %92, %struct.btrfs_key* %9, i64 %98)
  %100 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BTRFS_FREE_SPACE_INFO_KEY, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %108 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %106, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  %114 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %117 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %115, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  store i32 1, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  %125 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %126 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %128, align 8
  br label %175

131:                                              ; preds = %91
  %132 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @BTRFS_FREE_SPACE_BITMAP_KEY, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %136, %131
  %142 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = icmp sge i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @ASSERT(i32 %146)
  %148 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = icmp slt i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @ASSERT(i32 %152)
  %154 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %155, %157
  %159 = load i64, i64* %12, align 8
  %160 = icmp sle i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @ASSERT(i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %166 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* %168, align 8
  br label %173

171:                                              ; preds = %136
  %172 = call i32 @ASSERT(i32 0)
  br label %173

173:                                              ; preds = %171, %141
  br label %174

174:                                              ; preds = %173
  br label %84

175:                                              ; preds = %104, %84
  %176 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %177 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %178 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %179 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %180 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @btrfs_del_items(%struct.btrfs_trans_handle* %176, %struct.btrfs_root* %177, %struct.btrfs_path* %178, i64 %183, i32 %184)
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %175
  br label %193

189:                                              ; preds = %175
  %190 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %191 = call i32 @btrfs_release_path(%struct.btrfs_path* %190)
  br label %60

192:                                              ; preds = %60
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %192, %188, %71, %38
  %194 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %195 = call i32 @btrfs_free_path(%struct.btrfs_path* %194)
  %196 = load i32, i32* %15, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %33, %27
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @btrfs_fs_compat_ro(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
