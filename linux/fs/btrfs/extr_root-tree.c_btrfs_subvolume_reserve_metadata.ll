; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_subvolume_reserve_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_subvolume_reserve_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@BTRFS_RESERVE_FLUSH_ALL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_subvolume_reserve_metadata(%struct.btrfs_root* %0, %struct.btrfs_block_rsv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_fs_info*, align 8
  %14 = alloca %struct.btrfs_block_rsv*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 0
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %13, align 8
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 2
  store %struct.btrfs_block_rsv* %19, %struct.btrfs_block_rsv** %14, align 8
  %20 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 3, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @btrfs_qgroup_reserve_meta_prealloc(%struct.btrfs_root* %30, i32 %31, i32 1)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %76

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  %43 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %44 = call i32 @btrfs_find_space_info(%struct.btrfs_fs_info* %42, i32 %43)
  %45 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %48 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  %51 = call i32 @btrfs_block_rsv_add(%struct.btrfs_root* %47, %struct.btrfs_block_rsv* %48, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %38
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %14, align 8
  %61 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv* %60, %struct.btrfs_block_rsv* %61, i32 %62, i32 1)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %56, %38
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @btrfs_qgroup_free_meta_prealloc(%struct.btrfs_root* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %67, %64
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %35
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_qgroup_reserve_meta_prealloc(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_block_rsv_add(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i32, i32) #1

declare dso_local i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv*, %struct.btrfs_block_rsv*, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_free_meta_prealloc(%struct.btrfs_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
