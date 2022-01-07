; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_delayed_delete_inode_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_delayed_delete_inode_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32, i32 }

@BTRFS_FS_LOG_RECOVERING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_DELAYED_NODE_DEL_IREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delayed_delete_inode_ref(%struct.btrfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_delayed_node*, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  %6 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %4, align 8
  %11 = load i32, i32* @BTRFS_FS_LOG_RECOVERING, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %21 = call %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(%struct.btrfs_inode* %20)
  store %struct.btrfs_delayed_node* %21, %struct.btrfs_delayed_node** %5, align 8
  %22 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %23 = call i64 @IS_ERR(%struct.btrfs_delayed_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.btrfs_delayed_node* %26)
  store i32 %27, i32* %2, align 4
  br label %58

28:                                               ; preds = %19
  %29 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @BTRFS_DELAYED_NODE_DEL_IREF, align 4
  %33 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %52

38:                                               ; preds = %28
  %39 = load i32, i32* @BTRFS_DELAYED_NODE_DEL_IREF, align 4
  %40 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %44 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  br label %52

52:                                               ; preds = %38, %37
  %53 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %5, align 8
  %57 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %25, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(%struct.btrfs_inode*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
