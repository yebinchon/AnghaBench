; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c___btrfs_del_delalloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c___btrfs_del_delalloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_inode = type { i32, i32 }

@BTRFS_INODE_IN_DELALLOC_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__btrfs_del_delalloc_inode(%struct.btrfs_root* %0, %struct.btrfs_inode* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %4, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %6, i32 0, i32 3
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %5, align 8
  %9 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %9, i32 0, i32 1
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %2
  %14 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %14, i32 0, i32 1
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load i32, i32* @BTRFS_INODE_IN_DELALLOC_LIST, align 4
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %13
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 1
  %32 = call i32 @list_empty(i32* %31)
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = call i32 @list_empty(i32* %38)
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 0
  %43 = call i32 @list_del_init(i32* %42)
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %45 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %29, %13
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
