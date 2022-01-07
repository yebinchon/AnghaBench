; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_check_data_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_check_data_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_changeset = type { i32 }
%struct.btrfs_fs_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_check_data_free_space(%struct.inode* %0, %struct.extent_changeset** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.extent_changeset**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.extent_changeset** %1, %struct.extent_changeset*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %14)
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @round_up(i64 %18, i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @round_down(i64 %23, i32 %26)
  %28 = sub nsw i64 %22, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %31 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @round_down(i64 %29, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @BTRFS_I(%struct.inode* %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @btrfs_alloc_data_chunk_ondemand(i32 %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %58

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load %struct.extent_changeset**, %struct.extent_changeset*** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @btrfs_qgroup_reserve_data(%struct.inode* %43, %struct.extent_changeset** %44, i64 %45, i64 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @btrfs_free_reserved_data_space_noquota(%struct.inode* %51, i64 %52, i64 %53)
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %40
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i32 @btrfs_alloc_data_chunk_ondemand(i32, i64) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_qgroup_reserve_data(%struct.inode*, %struct.extent_changeset**, i64, i64) #1

declare dso_local i32 @btrfs_free_reserved_data_space_noquota(%struct.inode*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
