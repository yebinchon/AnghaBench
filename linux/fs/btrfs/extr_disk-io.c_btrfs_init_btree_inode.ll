; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_btree_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_init_btree_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.inode* }
%struct.inode = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@BTRFS_BTREE_INODE_OBJECTID = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@btree_aops = common dso_local global i32 0, align 4
@IO_TREE_INODE_IO = common dso_local global i32 0, align 4
@btree_extent_io_ops = common dso_local global i32 0, align 4
@BTRFS_INODE_DUMMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @btrfs_init_btree_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_init_btree_inode(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %4 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %4, i32 0, i32 1
  %6 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %6, %struct.inode** %3, align 8
  %7 = load i32, i32* @BTRFS_BTREE_INODE_OBJECTID, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @set_nlink(%struct.inode* %10, i32 1)
  %12 = load i32, i32* @OFFSET_MAX, align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* @btree_aops, i32** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 5
  %22 = call i32 @RB_CLEAR_NODE(i32* %21)
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* @IO_TREE_INODE_IO, align 4
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @extent_io_tree_init(%struct.btrfs_fs_info* %23, %struct.TYPE_5__* %26, i32 %27, %struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = call i32 @extent_map_tree_init(i32* %36)
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32* @btree_extent_io_ops, i32** %41, align 8
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 8
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = call i32 @memset(i32* %50, i32 0, i32 4)
  %52 = load i32, i32* @BTRFS_INODE_DUMMY, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %52, i32* %55)
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i32 @btrfs_insert_inode_hash(%struct.inode* %57)
  ret void
}

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @extent_io_tree_init(%struct.btrfs_fs_info*, %struct.TYPE_5__*, i32, %struct.inode*) #1

declare dso_local i32 @extent_map_tree_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_insert_inode_hash(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
