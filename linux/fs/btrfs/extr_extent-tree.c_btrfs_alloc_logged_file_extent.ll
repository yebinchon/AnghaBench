; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_alloc_logged_file_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_alloc_logged_file_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.btrfs_block_group_cache = type { i32, i32, %struct.btrfs_space_info* }
%struct.btrfs_space_info = type { i32, i32 }

@MIXED_GROUPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_logged_file_extent(%struct.btrfs_trans_handle* %0, i32 %1, i32 %2, i32 %3, %struct.btrfs_key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_block_group_cache*, align 8
  %15 = alloca %struct.btrfs_space_info*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.btrfs_key* %4, %struct.btrfs_key** %11, align 8
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %16, i32 0, i32 0
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %12, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %20 = load i32, i32* @MIXED_GROUPS, align 4
  %21 = call i32 @btrfs_fs_incompat(%struct.btrfs_fs_info* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %5
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %25 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__exclude_logged_extent(%struct.btrfs_fs_info* %24, i32 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %87

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %5
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %39 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %38, i32 %41)
  store %struct.btrfs_block_group_cache* %42, %struct.btrfs_block_group_cache** %14, align 8
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %44 = icmp ne %struct.btrfs_block_group_cache* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %87

48:                                               ; preds = %37
  %49 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %50 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %49, i32 0, i32 2
  %51 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %50, align 8
  store %struct.btrfs_space_info* %51, %struct.btrfs_space_info** %15, align 8
  %52 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %53 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %56 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %62 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %66 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %69 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %73 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %15, align 8
  %76 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %83 = call i32 @alloc_reserved_file_extent(%struct.btrfs_trans_handle* %78, i32 0, i32 %79, i32 0, i32 %80, i32 %81, %struct.btrfs_key* %82, i32 1)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %14, align 8
  %85 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %48, %45, %34
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @btrfs_fs_incompat(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @__exclude_logged_extent(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @alloc_reserved_file_extent(%struct.btrfs_trans_handle*, i32, i32, i32, i32, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
