; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_remove_ordered_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ordered-data.c_btrfs_remove_ordered_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32, i32, %struct.rb_node, i32 }
%struct.rb_node = type { i32 }
%struct.btrfs_fs_info = type { i32, i32, i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32, i32, i32 }
%struct.btrfs_ordered_inode_tree = type { i32, %struct.rb_node*, i32 }
%struct.btrfs_inode = type { %struct.btrfs_ordered_inode_tree, i32, %struct.btrfs_root* }

@BTRFS_ORDERED_DIRECT = common dso_local global i32 0, align 4
@BTRFS_ORDERED_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_remove_ordered_extent(%struct.inode* %0, %struct.btrfs_ordered_extent* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_ordered_extent*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_ordered_inode_tree*, align 8
  %7 = alloca %struct.btrfs_inode*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.rb_node*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.btrfs_ordered_extent* %1, %struct.btrfs_ordered_extent** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %12)
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %14)
  store %struct.btrfs_inode* %15, %struct.btrfs_inode** %7, align 8
  %16 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %16, i32 0, i32 2
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %8, align 8
  %19 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %20 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %23 = call i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode* %22, i32 -1)
  %24 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 3
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %29, align 8
  %31 = icmp ne %struct.btrfs_root* %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %34 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @btrfs_delalloc_release_metadata(%struct.btrfs_inode* %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load i32, i32* @BTRFS_ORDERED_DIRECT, align 4
  %40 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %40, i32 0, i32 2
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 2
  %47 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 0, %49
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @percpu_counter_add_batch(i32* %46, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %38
  %56 = load %struct.btrfs_inode*, %struct.btrfs_inode** %7, align 8
  %57 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %56, i32 0, i32 0
  store %struct.btrfs_ordered_inode_tree* %57, %struct.btrfs_ordered_inode_tree** %6, align 8
  %58 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %62 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %61, i32 0, i32 3
  store %struct.rb_node* %62, %struct.rb_node** %9, align 8
  %63 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %64 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %6, align 8
  %65 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %64, i32 0, i32 2
  %66 = call i32 @rb_erase(%struct.rb_node* %63, i32* %65)
  %67 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %68 = call i32 @RB_CLEAR_NODE(%struct.rb_node* %67)
  %69 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %6, align 8
  %70 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %69, i32 0, i32 1
  %71 = load %struct.rb_node*, %struct.rb_node** %70, align 8
  %72 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %73 = icmp eq %struct.rb_node* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %6, align 8
  %76 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %75, i32 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %76, align 8
  br label %77

77:                                               ; preds = %74, %55
  %78 = load i32, i32* @BTRFS_ORDERED_COMPLETE, align 4
  %79 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %80 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %79, i32 0, i32 2
  %81 = call i32 @set_bit(i32 %78, i32* %80)
  %82 = load %struct.btrfs_ordered_inode_tree*, %struct.btrfs_ordered_inode_tree** %6, align 8
  %83 = getelementptr inbounds %struct.btrfs_ordered_inode_tree, %struct.btrfs_ordered_inode_tree* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_irq(i32* %83)
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %86 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %85, i32 0, i32 0
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %89 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %88, i32 0, i32 1
  %90 = call i32 @list_del_init(i32* %89)
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %92 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %97 = call i32 @trace_btrfs_ordered_extent_remove(%struct.inode* %95, %struct.btrfs_ordered_extent* %96)
  %98 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %77
  %103 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %104 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %103, i32 0, i32 0
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %107 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %106, i32 0, i32 1
  %108 = call i32 @list_empty(i32* %107)
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %111 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %110, i32 0, i32 1
  %112 = call i32 @list_del_init(i32* %111)
  %113 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %114 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  br label %116

116:                                              ; preds = %102, %77
  %117 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %118 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock(i32* %118)
  %120 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %121 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %120, i32 0, i32 0
  %122 = call i32 @wake_up(i32* %121)
  ret void
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.btrfs_inode* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_mod_outstanding_extents(%struct.btrfs_inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_delalloc_release_metadata(%struct.btrfs_inode*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @percpu_counter_add_batch(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rb_erase(%struct.rb_node*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(%struct.rb_node*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @trace_btrfs_ordered_extent_remove(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
