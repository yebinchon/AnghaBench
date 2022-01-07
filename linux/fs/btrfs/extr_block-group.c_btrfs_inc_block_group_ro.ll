; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_inc_block_group_ro.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_inc_block_group_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, %struct.TYPE_4__*, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BTRFS_TRANS_DIRTY_BG_RUN = common dso_local global i32 0, align 4
@CHUNK_ALLOC_FORCE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_inc_block_group_ro(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 2
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %4, align 8
  br label %12

12:                                               ; preds = %50, %1
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(i32 %15)
  store %struct.btrfs_trans_handle* %16, %struct.btrfs_trans_handle** %5, align 8
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %18 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %21)
  store i32 %22, i32* %2, align 4
  br label %130

23:                                               ; preds = %12
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* @BTRFS_TRANS_DIRTY_BG_RUN, align 4
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %27, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %42 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %41)
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @btrfs_wait_for_commit(%struct.btrfs_fs_info* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %130

50:                                               ; preds = %34
  br label %12

51:                                               ; preds = %23
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %54 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @update_block_group_flags(%struct.btrfs_fs_info* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %59 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %51
  %63 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  %66 = call i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle* %63, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ENOSPC, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %101

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %51
  %78 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %79 = call i32 @inc_block_group_ro(%struct.btrfs_block_group_cache* %78, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %101

83:                                               ; preds = %77
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %85 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %86 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @btrfs_get_alloc_profile(%struct.btrfs_fs_info* %84, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  %94 = call i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle* %91, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %101

98:                                               ; preds = %83
  %99 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %100 = call i32 @inc_block_group_ro(%struct.btrfs_block_group_cache* %99, i32 0)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %97, %82, %75
  %102 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %103 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %101
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %110 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %111 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @update_block_group_flags(%struct.btrfs_fs_info* %109, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %115 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %114, i32 0, i32 1
  %116 = call i32 @mutex_lock(i32* %115)
  %117 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @check_system_chunk(%struct.btrfs_trans_handle* %117, i32 %118)
  %120 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %121 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  br label %123

123:                                              ; preds = %108, %101
  %124 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %125 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %128 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %123, %48, %20
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_wait_for_commit(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @update_block_group_flags(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle*, i32, i32) #1

declare dso_local i32 @inc_block_group_ro(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @btrfs_get_alloc_profile(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @check_system_chunk(%struct.btrfs_trans_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
