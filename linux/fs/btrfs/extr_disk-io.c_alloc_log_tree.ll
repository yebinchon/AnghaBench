; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_alloc_log_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_alloc_log_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.extent_buffer*, %struct.TYPE_2__ }
%struct.extent_buffer = type { i32 }
%struct.TYPE_2__ = type { i8*, i32, i8* }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i8* null, align 8
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_root* (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*)* @alloc_log_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_root* @alloc_log_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %5, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info* %8, i32 %9)
  store %struct.btrfs_root* %10, %struct.btrfs_root** %6, align 8
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %12 = icmp ne %struct.btrfs_root* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.btrfs_root* @ERR_PTR(i32 %15)
  store %struct.btrfs_root* %16, %struct.btrfs_root** %3, align 8
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %20 = load i8*, i8** @BTRFS_TREE_LOG_OBJECTID, align 8
  %21 = call i32 @__setup_root(%struct.btrfs_root* %18, %struct.btrfs_fs_info* %19, i8* %20)
  %22 = load i8*, i8** @BTRFS_TREE_LOG_OBJECTID, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** @BTRFS_TREE_LOG_OBJECTID, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %36 = load i8*, i8** @BTRFS_TREE_LOG_OBJECTID, align 8
  %37 = call %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle* %34, %struct.btrfs_root* %35, i32 0, i8* %36, i32* null, i32 0, i32 0, i32 0)
  store %struct.extent_buffer* %37, %struct.extent_buffer** %7, align 8
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %39 = call i64 @IS_ERR(%struct.extent_buffer* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %43 = call i32 @kfree(%struct.btrfs_root* %42)
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %45 = call %struct.btrfs_root* @ERR_CAST(%struct.extent_buffer* %44)
  store %struct.btrfs_root* %45, %struct.btrfs_root** %3, align 8
  br label %59

46:                                               ; preds = %17
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %49 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %48, i32 0, i32 0
  store %struct.extent_buffer* %47, %struct.extent_buffer** %49, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 0
  %52 = load %struct.extent_buffer*, %struct.extent_buffer** %51, align 8
  %53 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %52)
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %54, i32 0, i32 0
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %55, align 8
  %57 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %56)
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_root* %58, %struct.btrfs_root** %3, align 8
  br label %59

59:                                               ; preds = %46, %41, %13
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  ret %struct.btrfs_root* %60
}

declare dso_local %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_root* @ERR_PTR(i32) #1

declare dso_local i32 @__setup_root(%struct.btrfs_root*, %struct.btrfs_fs_info*, i8*) #1

declare dso_local %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i8*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_root* @ERR_CAST(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
