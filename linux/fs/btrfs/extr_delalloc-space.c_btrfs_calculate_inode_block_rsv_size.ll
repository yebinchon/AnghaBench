; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_calculate_inode_block_rsv_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_calculate_inode_block_rsv_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_inode = type { i32, i32, i32, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_inode*)* @btrfs_calculate_inode_block_rsv_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_calculate_inode_block_rsv_size(%struct.btrfs_fs_info* %0, %struct.btrfs_inode* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca %struct.btrfs_block_rsv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %4, align 8
  %10 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %10, i32 0, i32 3
  store %struct.btrfs_block_rsv* %11, %struct.btrfs_block_rsv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %12, i32 0, i32 2
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %25 = call i64 @btrfs_calc_metadata_size(%struct.btrfs_fs_info* %24, i32 1)
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %20, %2
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %32 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @btrfs_csum_bytes_to_leaves(%struct.btrfs_fs_info* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul i32 %41, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %46, i32 0, i32 2
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %56 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_calc_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_csum_bytes_to_leaves(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
