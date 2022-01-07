; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_readdir_get_delayed_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_readdir_get_delayed_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.btrfs_delayed_node = type { i32, i32 }
%struct.btrfs_delayed_item = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_readdir_get_delayed_items(%struct.inode* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.btrfs_delayed_node*, align 8
  %9 = alloca %struct.btrfs_delayed_item*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i32 @BTRFS_I(%struct.inode* %10)
  %12 = call %struct.btrfs_delayed_node* @btrfs_get_delayed_node(i32 %11)
  store %struct.btrfs_delayed_node* %12, %struct.btrfs_delayed_node** %8, align 8
  %13 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %14 = icmp ne %struct.btrfs_delayed_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @inode_unlock_shared(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @inode_lock(%struct.inode* %19)
  %21 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %22 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %25 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node* %24)
  store %struct.btrfs_delayed_item* %25, %struct.btrfs_delayed_item** %9, align 8
  br label %26

26:                                               ; preds = %29, %16
  %27 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %28 = icmp ne %struct.btrfs_delayed_item* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %30, i32 0, i32 1
  %32 = call i32 @refcount_inc(i32* %31)
  %33 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %34 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %33, i32 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %6, align 8
  %36 = call i32 @list_add_tail(i32* %34, %struct.list_head* %35)
  %37 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %38 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %37)
  store %struct.btrfs_delayed_item* %38, %struct.btrfs_delayed_item** %9, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %41 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node* %40)
  store %struct.btrfs_delayed_item* %41, %struct.btrfs_delayed_item** %9, align 8
  br label %42

42:                                               ; preds = %45, %39
  %43 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %44 = icmp ne %struct.btrfs_delayed_item* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %46, i32 0, i32 1
  %48 = call i32 @refcount_inc(i32* %47)
  %49 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %50 = getelementptr inbounds %struct.btrfs_delayed_item, %struct.btrfs_delayed_item* %49, i32 0, i32 0
  %51 = load %struct.list_head*, %struct.list_head** %7, align 8
  %52 = call i32 @list_add_tail(i32* %50, %struct.list_head* %51)
  %53 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %9, align 8
  %54 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %53)
  store %struct.btrfs_delayed_item* %54, %struct.btrfs_delayed_item** %9, align 8
  br label %42

55:                                               ; preds = %42
  %56 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %57 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %59, i32 0, i32 0
  %61 = call i32 @refcount_dec(i32* %60)
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.btrfs_delayed_node* @btrfs_get_delayed_node(i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @inode_unlock_shared(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
