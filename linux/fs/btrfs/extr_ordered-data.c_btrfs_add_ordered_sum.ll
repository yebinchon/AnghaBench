; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_add_ordered_sum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_add_ordered_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ordered_extent = type { i32, i32 }
%struct.btrfs_ordered_sum = type { i32 }
%struct.btrfs_ordered_inode_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_ordered_inode_tree }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_add_ordered_sum(%struct.btrfs_ordered_extent* %0, %struct.btrfs_ordered_sum* %1) #0 {
  %3 = alloca %struct.btrfs_ordered_extent*, align 8
  %4 = alloca %struct.btrfs_ordered_sum*, align 8
  %5 = alloca %struct.btrfs_ordered_inode_tree*, align 8
  store %struct.btrfs_ordered_extent* %0, %struct.btrfs_ordered_extent** %3, align 8
  store %struct.btrfs_ordered_sum* %1, %struct.btrfs_ordered_sum** %4, align 8
  %6 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* @BTRFS_I(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.btrfs_ordered_inode_tree* %10, %struct.btrfs_ordered_inode_tree** %5, align 8
  %11 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.btrfs_ordered_sum*, %struct.btrfs_ordered_sum** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_ordered_sum, %struct.btrfs_ordered_sum* %14, i32 0, i32 0
  %16 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %16, i32 0, i32 0
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  ret void
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
