; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_requeue_inode_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_requeue_inode_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.inode_defrag = type { i32 }

@btrfs_inode_defrag_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_inode*, %struct.inode_defrag*)* @btrfs_requeue_inode_defrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_requeue_inode_defrag(%struct.btrfs_inode* %0, %struct.inode_defrag* %1) #0 {
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca %struct.inode_defrag*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  store %struct.inode_defrag* %1, %struct.inode_defrag** %4, align 8
  %7 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %5, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = call i32 @__need_auto_defrag(%struct.btrfs_fs_info* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %21 = load %struct.inode_defrag*, %struct.inode_defrag** %4, align 8
  %22 = call i32 @__btrfs_add_inode_defrag(%struct.btrfs_inode* %20, %struct.inode_defrag* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %30

29:                                               ; preds = %16
  br label %34

30:                                               ; preds = %28, %15
  %31 = load i32, i32* @btrfs_inode_defrag_cachep, align 4
  %32 = load %struct.inode_defrag*, %struct.inode_defrag** %4, align 8
  %33 = call i32 @kmem_cache_free(i32 %31, %struct.inode_defrag* %32)
  br label %34

34:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @__need_auto_defrag(%struct.btrfs_fs_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__btrfs_add_inode_defrag(%struct.btrfs_inode*, %struct.inode_defrag*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.inode_defrag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
