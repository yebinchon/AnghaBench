; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_find_first_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_find_first_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_block_group_item = type { i32 }
%struct.extent_map = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BTRFS_BLOCK_GROUP_ITEM_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"logical %llu len %llu found bg but no related chunk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"block group %llu len %llu mismatch with chunk %llu len %llu\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_TYPE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"block group %llu len %llu type flags 0x%llx mismatch with chunk type flags 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_path*, %struct.btrfs_key*)* @find_first_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_first_block_group(%struct.btrfs_fs_info* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_key*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca %struct.btrfs_block_group_item, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_map_tree*, align 8
  %15 = alloca %struct.extent_map*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %6, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 0
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %20 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %21 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %22 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %19, %struct.btrfs_key* %20, %struct.btrfs_path* %21, i32 0, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %175

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %48, %167
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %33, i32 0, i32 1
  %35 = load %struct.extent_buffer**, %struct.extent_buffer*** %34, align 8
  %36 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %35, i64 0
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %36, align 8
  store %struct.extent_buffer* %37, %struct.extent_buffer** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %40 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %39)
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %27
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %45 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %43, %struct.btrfs_path* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %27

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %175

53:                                               ; preds = %49
  br label %174

54:                                               ; preds = %27
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %55, %struct.btrfs_key* %9, i32 %56)
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %61 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %167

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BTRFS_BLOCK_GROUP_ITEM_KEY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %167

69:                                               ; preds = %64
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %71 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.extent_map_tree* %73, %struct.extent_map_tree** %14, align 8
  %74 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %75 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %74, i32 0, i32 0
  %76 = call i32 @read_lock(i32* %75)
  %77 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %78 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %77, i64 %79, i64 %81)
  store %struct.extent_map* %82, %struct.extent_map** %15, align 8
  %83 = load %struct.extent_map_tree*, %struct.extent_map_tree** %14, align 8
  %84 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %83, i32 0, i32 0
  %85 = call i32 @read_unlock(i32* %84)
  %86 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %87 = icmp ne %struct.extent_map* %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %69
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %90 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (%struct.btrfs_fs_info*, i8*, i64, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %93)
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %164

97:                                               ; preds = %69
  %98 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %99 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %106 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %107, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %104, %97
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %113 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %118 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %121 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (%struct.btrfs_fs_info*, i8*, i64, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %112, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %114, i64 %116, i64 %119, i64 %122)
  %124 = load i32, i32* @EUCLEAN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %163

126:                                              ; preds = %104
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %128 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %128, i32 %129)
  %131 = call i32 @read_extent_buffer(%struct.extent_buffer* %127, %struct.btrfs_block_group_item* %11, i32 %130, i32 4)
  %132 = call i32 @btrfs_block_group_flags(%struct.btrfs_block_group_item* %11)
  %133 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %134 = and i32 %132, %133
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %137 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %135, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %126
  %145 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %146 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %152 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %153 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %151, %156
  %158 = call i32 (%struct.btrfs_fs_info*, i8*, i64, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %145, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i64 %147, i64 %149, i32 %150, i32 %157)
  %159 = load i32, i32* @EUCLEAN, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %8, align 4
  br label %162

161:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %161, %144
  br label %163

163:                                              ; preds = %162, %111
  br label %164

164:                                              ; preds = %163, %88
  %165 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %166 = call i32 @free_extent_map(%struct.extent_map* %165)
  br label %175

167:                                              ; preds = %64, %54
  %168 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %169 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %27

174:                                              ; preds = %53
  br label %175

175:                                              ; preds = %174, %164, %52, %25
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, i64, ...) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, %struct.btrfs_block_group_item*, i32, i32) #1

declare dso_local i32 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_block_group_flags(%struct.btrfs_block_group_item*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
