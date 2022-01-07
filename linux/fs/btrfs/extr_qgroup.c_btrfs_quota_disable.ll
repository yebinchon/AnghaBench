; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_quota_disable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_quota_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, %struct.btrfs_root*, i32, i32 }
%struct.btrfs_root = type { i32, i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@BTRFS_QGROUP_STATUS_FLAG_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_quota_disable(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 3
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %12 = icmp ne %struct.btrfs_root* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %106

14:                                               ; preds = %1
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(i32 %17, i32 1)
  store %struct.btrfs_trans_handle* %18, %struct.btrfs_trans_handle** %4, align 8
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %20 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %23)
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %14
  %26 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 4
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %31 = call i32 @btrfs_qgroup_wait_for_completion(%struct.btrfs_fs_info* %30, i32 0)
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 3
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %36, align 8
  store %struct.btrfs_root* %37, %struct.btrfs_root** %3, align 8
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 3
  store %struct.btrfs_root* null, %struct.btrfs_root** %39, align 8
  %40 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_ON, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %50 = call i32 @btrfs_free_qgroup_config(%struct.btrfs_fs_info* %49)
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %53 = call i32 @btrfs_clean_quota_tree(%struct.btrfs_trans_handle* %51, %struct.btrfs_root* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %25
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %57, i32 %58)
  br label %103

60:                                               ; preds = %25
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 3
  %64 = call i32 @btrfs_del_root(%struct.btrfs_trans_handle* %61, i32* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %68, i32 %69)
  br label %103

71:                                               ; preds = %60
  %72 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %73 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %72, i32 0, i32 2
  %74 = call i32 @list_del(i32* %73)
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @btrfs_tree_lock(i32 %77)
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %80 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @btrfs_clean_tree_block(i32 %81)
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %84 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @btrfs_tree_unlock(i32 %85)
  %87 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %88 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %90 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @btrfs_free_tree_block(%struct.btrfs_trans_handle* %87, %struct.btrfs_root* %88, i32 %91, i32 0, i32 1)
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @free_extent_buffer(i32 %95)
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %98 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @free_extent_buffer(i32 %99)
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %102 = call i32 @kfree(%struct.btrfs_root* %101)
  br label %103

103:                                              ; preds = %71, %67, %56
  %104 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %105 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %22, %13
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %108 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btrfs_qgroup_wait_for_completion(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_free_qgroup_config(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_clean_quota_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_del_root(%struct.btrfs_trans_handle*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @btrfs_tree_lock(i32) #1

declare dso_local i32 @btrfs_clean_tree_block(i32) #1

declare dso_local i32 @btrfs_tree_unlock(i32) #1

declare dso_local i32 @btrfs_free_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
