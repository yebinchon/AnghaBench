; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_truncate_free_space_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_truncate_free_space_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.TYPE_5__ = type { %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_DC_CLEAR = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_truncate_free_space_cache(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_path*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %16 = icmp ne %struct.btrfs_block_group_cache* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %3
  %18 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %18, %struct.btrfs_path** %10, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %20 = icmp ne %struct.btrfs_path* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %75

24:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %30, i32 0, i32 2
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %35, i32 0, i32 2
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %41 = call i32 @btrfs_wait_cache_io(%struct.btrfs_trans_handle* %38, %struct.btrfs_block_group_cache* %39, %struct.btrfs_path* %40)
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %43 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %42)
  br label %44

44:                                               ; preds = %34, %24
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i32, i32* @BTRFS_DC_CLEAR, align 4
  %49 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %55 = call i32 @btrfs_free_path(%struct.btrfs_path* %54)
  br label %56

56:                                               ; preds = %44, %3
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %57)
  %59 = call i32 @btrfs_i_size_write(%struct.TYPE_5__* %58, i32 0)
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @truncate_pagecache(%struct.inode* %60, i32 0)
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load i32, i32* @BTRFS_EXTENT_DATA_KEY, align 4
  %66 = call i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle* %62, %struct.btrfs_root* %63, %struct.inode* %64, i32 0, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %75

70:                                               ; preds = %56
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %72 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %71, %struct.btrfs_root* %72, %struct.inode* %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %69, %21
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %80 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_5__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @btrfs_wait_cache_io(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_i_size_write(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
