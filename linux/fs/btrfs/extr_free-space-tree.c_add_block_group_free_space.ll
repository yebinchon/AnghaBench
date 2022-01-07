; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_add_block_group_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_add_block_group_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i32 }
%struct.btrfs_path = type { i32 }

@FREE_SPACE_TREE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_block_group_free_space(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %5, align 8
  %9 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %13 = load i32, i32* @FREE_SPACE_TREE, align 4
  %14 = call i32 @btrfs_fs_compat_ro(%struct.btrfs_fs_info* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %38

26:                                               ; preds = %17
  %27 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %27, %struct.btrfs_path** %7, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %29 = icmp ne %struct.btrfs_path* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %38

33:                                               ; preds = %26
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %35 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %37 = call i32 @__add_block_group_free_space(%struct.btrfs_trans_handle* %34, %struct.btrfs_block_group_cache* %35, %struct.btrfs_path* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %30, %25
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %40 = call i32 @btrfs_free_path(%struct.btrfs_path* %39)
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @btrfs_fs_compat_ro(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @__add_block_group_free_space(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
