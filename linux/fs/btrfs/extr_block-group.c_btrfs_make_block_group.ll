; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_make_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_make_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FIRST_CHUNK_TREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_make_block_group(%struct.btrfs_trans_handle* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_block_group_cache*, align 8
  %14 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %15, i32 0, i32 2
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %12, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %19 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %18)
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call %struct.btrfs_block_group_cache* @btrfs_create_block_group_cache(%struct.btrfs_fs_info* %20, i32 %21, i32 %22)
  store %struct.btrfs_block_group_cache* %23, %struct.btrfs_block_group_cache** %13, align 8
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %25 = icmp ne %struct.btrfs_block_group_cache* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %127

29:                                               ; preds = %5
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %30, i32 0, i32 7
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @btrfs_set_block_group_used(i32* %31, i32 %32)
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 7
  %36 = load i32, i32* @BTRFS_FIRST_CHUNK_TREE_OBJECTID, align 4
  %37 = call i32 @btrfs_set_block_group_chunk_objectid(i32* %35, i32 %36)
  %38 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %39 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %38, i32 0, i32 7
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @btrfs_set_block_group_flags(i32* %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %44 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load i32, i32* @BTRFS_CACHE_FINISHED, align 4
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %53 = call i32 @exclude_super_stripes(%struct.btrfs_block_group_cache* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %29
  %57 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %58 = call i32 @btrfs_free_excluded_extents(%struct.btrfs_block_group_cache* %57)
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %60 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %127

62:                                               ; preds = %29
  %63 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @add_new_free_space(%struct.btrfs_block_group_cache* %63, i32 %64, i32 %67)
  %69 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %70 = call i32 @btrfs_free_excluded_extents(%struct.btrfs_block_group_cache* %69)
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %72 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %73 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @btrfs_find_space_info(%struct.btrfs_fs_info* %71, i32 %74)
  %76 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %77 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %79 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %83 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %84 = call i32 @btrfs_add_block_group_cache(%struct.btrfs_fs_info* %82, %struct.btrfs_block_group_cache* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %62
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %89 = call i32 @btrfs_remove_free_space_cache(%struct.btrfs_block_group_cache* %88)
  %90 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %91 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %127

93:                                               ; preds = %62
  %94 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %95 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %96 = call i32 @trace_btrfs_add_block_group(%struct.btrfs_fs_info* %94, %struct.btrfs_block_group_cache* %95, i32 1)
  %97 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %98 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %99 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %104 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %107 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %106, i32 0, i32 4
  %108 = call i32 @btrfs_update_space_info(%struct.btrfs_fs_info* %97, i32 %100, i32 %101, i32 %102, i32 %105, i32* %107)
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %110 = call i32 @btrfs_update_global_block_rsv(%struct.btrfs_fs_info* %109)
  %111 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %112 = call i32 @link_block_group(%struct.btrfs_block_group_cache* %111)
  %113 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %13, align 8
  %114 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %113, i32 0, i32 3
  %115 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %116 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %115, i32 0, i32 1
  %117 = call i32 @list_add_tail(i32* %114, i32* %116)
  %118 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %119 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %123 = call i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle* %122)
  %124 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @set_avail_alloc_bits(%struct.btrfs_fs_info* %124, i32 %125)
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %93, %87, %56, %26
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_create_block_group_cache(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_set_block_group_used(i32*, i32) #1

declare dso_local i32 @btrfs_set_block_group_chunk_objectid(i32*, i32) #1

declare dso_local i32 @btrfs_set_block_group_flags(i32*, i32) #1

declare dso_local i32 @exclude_super_stripes(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_free_excluded_extents(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @add_new_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @btrfs_add_block_group_cache(%struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_remove_free_space_cache(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @trace_btrfs_add_block_group(%struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @btrfs_update_space_info(%struct.btrfs_fs_info*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_update_global_block_rsv(%struct.btrfs_fs_info*) #1

declare dso_local i32 @link_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @set_avail_alloc_bits(%struct.btrfs_fs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
