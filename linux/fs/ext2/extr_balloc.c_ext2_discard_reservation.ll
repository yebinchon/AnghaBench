; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_ext2_discard_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_ext2_discard_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext2_inode_info = type { %struct.ext2_block_alloc_info* }
%struct.ext2_block_alloc_info = type { %struct.ext2_reserve_window_node }
%struct.ext2_reserve_window_node = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_discard_reservation(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext2_inode_info*, align 8
  %4 = alloca %struct.ext2_block_alloc_info*, align 8
  %5 = alloca %struct.ext2_reserve_window_node*, align 8
  %6 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %7)
  store %struct.ext2_inode_info* %8, %struct.ext2_inode_info** %3, align 8
  %9 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %9, i32 0, i32 0
  %11 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %10, align 8
  store %struct.ext2_block_alloc_info* %11, %struct.ext2_block_alloc_info** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @EXT2_SB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %18 = icmp ne %struct.ext2_block_alloc_info* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %22 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %21, i32 0, i32 0
  store %struct.ext2_reserve_window_node* %22, %struct.ext2_reserve_window_node** %5, align 8
  %23 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %5, align 8
  %24 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %23, i32 0, i32 0
  %25 = call i32 @rsv_is_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %5, align 8
  %31 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %30, i32 0, i32 0
  %32 = call i32 @rsv_is_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %5, align 8
  %39 = call i32 @rsv_window_remove(i32 %37, %struct.ext2_reserve_window_node* %38)
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %19, %40, %20
  ret void
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(i32) #1

declare dso_local i32 @rsv_is_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rsv_window_remove(i32, %struct.ext2_reserve_window_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
