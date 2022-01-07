; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_check_chunk_block_group_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_check_chunk_block_group_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_block_group_cache = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [65 x i8] c"chunk start=%llu len=%llu doesn't have corresponding block group\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"chunk start=%llu len=%llu flags=0x%llx doesn't match block group start=%llu len=%llu flags=0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*)* @check_chunk_block_group_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_chunk_block_group_mappings(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.extent_map_tree*, align 8
  %4 = alloca %struct.extent_map*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  store %struct.extent_map_tree* %9, %struct.extent_map_tree** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %1, %111
  %11 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %12 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %11, i32 0, i32 0
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %14, i64 %15, i32 1)
  store %struct.extent_map* %16, %struct.extent_map** %4, align 8
  %17 = load %struct.extent_map_tree*, %struct.extent_map_tree** %3, align 8
  %18 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %17, i32 0, i32 0
  %19 = call i32 @read_unlock(i32* %18)
  %20 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %21 = icmp ne %struct.extent_map* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %123

23:                                               ; preds = %10
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %25 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %26 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %24, i64 %27)
  store %struct.btrfs_block_group_cache* %28, %struct.btrfs_block_group_cache** %5, align 8
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %30 = icmp ne %struct.btrfs_block_group_cache* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %23
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %33 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %34 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %37 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.btrfs_fs_info*, i8*, i64, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %38)
  %40 = load i32, i32* @EUCLEAN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %43 = call i32 @free_extent_map(%struct.extent_map* %42)
  br label %123

44:                                               ; preds = %23
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %50 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %76, label %53

53:                                               ; preds = %44
  %54 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %59 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %53
  %63 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %69 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %67, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %62, %53, %44
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %78 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %79 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %82 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %85 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %96 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %100 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %103 = and i32 %101, %102
  %104 = call i32 (%struct.btrfs_fs_info*, i8*, i64, i64, ...) @btrfs_err(%struct.btrfs_fs_info* %77, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %83, i32 %90, i64 %94, i64 %98, i32 %103)
  %105 = load i32, i32* @EUCLEAN, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  %107 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %108 = call i32 @free_extent_map(%struct.extent_map* %107)
  %109 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %110 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %109)
  br label %123

111:                                              ; preds = %62
  %112 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %113 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %116 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  store i64 %118, i64* %6, align 8
  %119 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  %120 = call i32 @free_extent_map(%struct.extent_map* %119)
  %121 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %122 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %121)
  br label %10

123:                                              ; preds = %76, %31, %22
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i64, i64, ...) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
