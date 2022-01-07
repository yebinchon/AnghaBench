; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_remove_from_free_space_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_remove_from_free_space_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_path = type { i32 }

@FREE_SPACE_TREE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_from_free_space_tree(%struct.btrfs_trans_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FREE_SPACE_TREE, align 4
  %15 = call i32 @btrfs_fs_compat_ro(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %19, %struct.btrfs_path** %9, align 8
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %21 = icmp ne %struct.btrfs_path* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(i32 %28, i32 %29)
  store %struct.btrfs_block_group_cache* %30, %struct.btrfs_block_group_cache** %8, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %32 = icmp ne %struct.btrfs_block_group_cache* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = call i32 @ASSERT(i32 0)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle* %41, %struct.btrfs_block_group_cache* %42, %struct.btrfs_path* %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %51 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %50)
  br label %52

52:                                               ; preds = %37, %33, %22
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %54 = call i32 @btrfs_free_path(%struct.btrfs_path* %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @btrfs_fs_compat_ro(i32, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
