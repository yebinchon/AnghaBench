; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_btrfs_clear_free_space_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_btrfs_clear_free_space_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_root*, %struct.btrfs_root* }
%struct.btrfs_root = type { i32, i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }

@FREE_SPACE_TREE = common dso_local global i32 0, align 4
@FREE_SPACE_TREE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_clear_free_space_tree(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 1
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_root* %10, %struct.btrfs_root** %5, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 0
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %6, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %15 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %14, i32 0)
  store %struct.btrfs_trans_handle* %15, %struct.btrfs_trans_handle** %4, align 8
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %17 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %20)
  store i32 %21, i32* %2, align 4
  br label %86

22:                                               ; preds = %1
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %24 = load i32, i32* @FREE_SPACE_TREE, align 4
  %25 = call i32 @btrfs_clear_fs_compat_ro(%struct.btrfs_fs_info* %23, i32 %24)
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %27 = load i32, i32* @FREE_SPACE_TREE_VALID, align 4
  %28 = call i32 @btrfs_clear_fs_compat_ro(%struct.btrfs_fs_info* %26, i32 %27)
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 0
  store %struct.btrfs_root* null, %struct.btrfs_root** %30, align 8
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %33 = call i32 @clear_free_space_tree(%struct.btrfs_trans_handle* %31, %struct.btrfs_root* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %79

37:                                               ; preds = %22
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 3
  %41 = call i32 @btrfs_del_root(%struct.btrfs_trans_handle* %38, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %79

45:                                               ; preds = %37
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 2
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @btrfs_tree_lock(i32 %51)
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @btrfs_clean_tree_block(i32 %55)
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @btrfs_tree_unlock(i32 %59)
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @btrfs_free_tree_block(%struct.btrfs_trans_handle* %61, %struct.btrfs_root* %62, i32 %65, i32 0, i32 1)
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @free_extent_buffer(i32 %69)
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @free_extent_buffer(i32 %73)
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %76 = call i32 @kfree(%struct.btrfs_root* %75)
  %77 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %78 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %77)
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %44, %36
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %80, i32 %81)
  %83 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %84 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %45, %19
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_clear_fs_compat_ro(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @clear_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_del_root(%struct.btrfs_trans_handle*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @btrfs_tree_lock(i32) #1

declare dso_local i32 @btrfs_clean_tree_block(i32) #1

declare dso_local i32 @btrfs_tree_unlock(i32) #1

declare dso_local i32 @btrfs_free_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
