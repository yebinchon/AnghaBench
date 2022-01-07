; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c___btrfs_kill_delayed_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c___btrfs_kill_delayed_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_node = type { i32, i32, %struct.btrfs_root* }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_delayed_item = type { i32 }

@BTRFS_DELAYED_NODE_DEL_IREF = common dso_local global i32 0, align 4
@BTRFS_DELAYED_NODE_INODE_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_delayed_node*)* @__btrfs_kill_delayed_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__btrfs_kill_delayed_node(%struct.btrfs_delayed_node* %0) #0 {
  %2 = alloca %struct.btrfs_delayed_node*, align 8
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_delayed_item*, align 8
  %6 = alloca %struct.btrfs_delayed_item*, align 8
  store %struct.btrfs_delayed_node* %0, %struct.btrfs_delayed_node** %2, align 8
  %7 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %7, i32 0, i32 2
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_root* %9, %struct.btrfs_root** %3, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %4, align 8
  %13 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %17 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node* %16)
  store %struct.btrfs_delayed_item* %17, %struct.btrfs_delayed_item** %5, align 8
  br label %18

18:                                               ; preds = %21, %1
  %19 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %20 = icmp ne %struct.btrfs_delayed_item* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %23 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %24 = call i32 @btrfs_delayed_item_release_metadata(%struct.btrfs_root* %22, %struct.btrfs_delayed_item* %23)
  %25 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  store %struct.btrfs_delayed_item* %25, %struct.btrfs_delayed_item** %6, align 8
  %26 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %6, align 8
  %27 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %26)
  store %struct.btrfs_delayed_item* %27, %struct.btrfs_delayed_item** %5, align 8
  %28 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %6, align 8
  %29 = call i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item* %28)
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %32 = call %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node* %31)
  store %struct.btrfs_delayed_item* %32, %struct.btrfs_delayed_item** %5, align 8
  br label %33

33:                                               ; preds = %36, %30
  %34 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %35 = icmp ne %struct.btrfs_delayed_item* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %38 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  %39 = call i32 @btrfs_delayed_item_release_metadata(%struct.btrfs_root* %37, %struct.btrfs_delayed_item* %38)
  %40 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %5, align 8
  store %struct.btrfs_delayed_item* %40, %struct.btrfs_delayed_item** %6, align 8
  %41 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %6, align 8
  %42 = call %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item* %41)
  store %struct.btrfs_delayed_item* %42, %struct.btrfs_delayed_item** %5, align 8
  %43 = load %struct.btrfs_delayed_item*, %struct.btrfs_delayed_item** %6, align 8
  %44 = call i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item* %43)
  br label %33

45:                                               ; preds = %33
  %46 = load i32, i32* @BTRFS_DELAYED_NODE_DEL_IREF, align 4
  %47 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %48 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %53 = call i32 @btrfs_release_delayed_iref(%struct.btrfs_delayed_node* %52)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* @BTRFS_DELAYED_NODE_INODE_DIRTY, align 4
  %56 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %57 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %56, i32 0, i32 1
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %62 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %63 = call i32 @btrfs_delayed_inode_release_metadata(%struct.btrfs_fs_info* %61, %struct.btrfs_delayed_node* %62, i32 0)
  %64 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %65 = call i32 @btrfs_release_delayed_inode(%struct.btrfs_delayed_node* %64)
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %2, align 8
  %68 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_insertion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_delayed_item_release_metadata(%struct.btrfs_root*, %struct.btrfs_delayed_item*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_next_delayed_item(%struct.btrfs_delayed_item*) #1

declare dso_local i32 @btrfs_release_delayed_item(%struct.btrfs_delayed_item*) #1

declare dso_local %struct.btrfs_delayed_item* @__btrfs_first_delayed_deletion_item(%struct.btrfs_delayed_node*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_release_delayed_iref(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_delayed_inode_release_metadata(%struct.btrfs_fs_info*, %struct.btrfs_delayed_node*, i32) #1

declare dso_local i32 @btrfs_release_delayed_inode(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
