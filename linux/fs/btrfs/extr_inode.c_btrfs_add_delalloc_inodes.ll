; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_add_delalloc_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_add_delalloc_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BTRFS_INODE_IN_DELALLOC_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, %struct.inode*)* @btrfs_add_delalloc_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_add_delalloc_inodes(%struct.btrfs_root* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %8)
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %5, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 3
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  %25 = load i32, i32* @BTRFS_INODE_IN_DELALLOC_LIST, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %25, i32* %28)
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %18
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 2
  %44 = call i64 @list_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 2
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 1
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  br label %57

57:                                               ; preds = %38, %18
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  ret void
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
