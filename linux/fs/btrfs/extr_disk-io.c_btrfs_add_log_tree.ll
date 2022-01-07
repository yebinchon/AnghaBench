; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_add_log_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_add_log_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, i64, i64, %struct.btrfs_root*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { %struct.btrfs_inode_item }
%struct.btrfs_inode_item = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btrfs_fs_info = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_log_tree(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_inode_item*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %6, align 8
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %14 = call %struct.btrfs_root* @alloc_log_tree(%struct.btrfs_trans_handle* %12, %struct.btrfs_fs_info* %13)
  store %struct.btrfs_root* %14, %struct.btrfs_root** %7, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %16 = call i64 @IS_ERR(%struct.btrfs_root* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.btrfs_root* %19)
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.btrfs_inode_item* %36, %struct.btrfs_inode_item** %8, align 8
  %37 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %8, align 8
  %38 = call i32 @btrfs_set_stack_inode_generation(%struct.btrfs_inode_item* %37, i32 1)
  %39 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %8, align 8
  %40 = call i32 @btrfs_set_stack_inode_size(%struct.btrfs_inode_item* %39, i32 3)
  %41 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %8, align 8
  %42 = call i32 @btrfs_set_stack_inode_nlink(%struct.btrfs_inode_item* %41, i32 1)
  %43 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %8, align 8
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %45 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @btrfs_set_stack_inode_nbytes(%struct.btrfs_inode_item* %43, i32 %46)
  %48 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %8, align 8
  %49 = load i32, i32* @S_IFDIR, align 4
  %50 = or i32 %49, 493
  %51 = call i32 @btrfs_set_stack_inode_mode(%struct.btrfs_inode_item* %48, i32 %50)
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 5
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %55 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @btrfs_set_root_node(%struct.TYPE_4__* %53, i32 %56)
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 3
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %59, align 8
  %61 = call i32 @WARN_ON(%struct.btrfs_root* %60)
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 3
  store %struct.btrfs_root* %62, %struct.btrfs_root** %64, align 8
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %66 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %21, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.btrfs_root* @alloc_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_set_stack_inode_generation(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_size(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_nlink(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_nbytes(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_mode(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_root_node(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @WARN_ON(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
