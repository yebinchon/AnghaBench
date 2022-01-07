; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_delalloc_release_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_delalloc_release_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_delalloc_release_extents(%struct.btrfs_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %5, align 8
  %12 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @count_max_extents(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 0, %18
  %20 = call i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode* %17, i32 %19)
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %23 = call i32 @btrfs_calculate_inode_block_rsv_size(%struct.btrfs_fs_info* %21, %struct.btrfs_inode* %22)
  %24 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %25 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %28 = call i64 @btrfs_is_testing(%struct.btrfs_fs_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %33 = call i32 @btrfs_inode_rsv_release(%struct.btrfs_inode* %32, i32 1)
  br label %34

34:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @count_max_extents(i32) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode*, i32) #1

declare dso_local i32 @btrfs_calculate_inode_block_rsv_size(%struct.btrfs_fs_info*, %struct.btrfs_inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_is_testing(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_inode_rsv_release(%struct.btrfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
