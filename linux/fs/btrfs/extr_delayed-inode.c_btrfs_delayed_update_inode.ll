; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_delayed_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_delayed_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32, i32, i32 }

@BTRFS_DELAYED_NODE_INODE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delayed_update_inode(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_delayed_node*, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = call i32 @BTRFS_I(%struct.inode* %10)
  %12 = call %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(i32 %11)
  store %struct.btrfs_delayed_node* %12, %struct.btrfs_delayed_node** %8, align 8
  %13 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %14 = call i64 @IS_ERR(%struct.btrfs_delayed_node* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.btrfs_delayed_node* %17)
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @BTRFS_DELAYED_NODE_INODE_DIRTY, align 4
  %24 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %24, i32 0, i32 2
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %30 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %30, i32 0, i32 3
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @fill_stack_inode_item(%struct.btrfs_trans_handle* %29, i32* %31, %struct.inode* %32)
  br label %65

34:                                               ; preds = %19
  %35 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @BTRFS_I(%struct.inode* %37)
  %39 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %40 = call i32 @btrfs_delayed_inode_reserve_metadata(%struct.btrfs_trans_handle* %35, %struct.btrfs_root* %36, i32 %38, %struct.btrfs_delayed_node* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %65

44:                                               ; preds = %34
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %46 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %46, i32 0, i32 3
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @fill_stack_inode_item(%struct.btrfs_trans_handle* %45, i32* %47, %struct.inode* %48)
  %50 = load i32, i32* @BTRFS_DELAYED_NODE_INODE_DIRTY, align 4
  %51 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %52 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %51, i32 0, i32 2
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %55 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  br label %65

65:                                               ; preds = %44, %43, %28
  %66 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %67 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %70 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_or_create_delayed_node(i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fill_stack_inode_item(%struct.btrfs_trans_handle*, i32*, %struct.inode*) #1

declare dso_local i32 @btrfs_delayed_inode_reserve_metadata(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, %struct.btrfs_delayed_node*) #1

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
