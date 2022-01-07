; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_close_ctree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_close_ctree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BTRFS_FS_CLOSING_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"commit super ret %d\00", align 1
@BTRFS_FS_STATE_ERROR = common dso_local global i32 0, align 4
@BTRFS_FS_STATE_TRANS_ABORTED = common dso_local global i32 0, align 4
@BTRFS_FS_CLOSING_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"at unmount delalloc count %lld\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"at unmount dio bytes count %lld\00", align 1
@BTRFS_FS_OPEN = common dso_local global i32 0, align 4
@CHECK_INTEGRITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_ctree(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %4 = load i32, i32* @BTRFS_FS_CLOSING_START, align 4
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 8
  %7 = call i32 @set_bit(i32 %4, i32* %6)
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kthread_park(i32 %10)
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %13 = call i32 @btrfs_qgroup_wait_for_completion(%struct.btrfs_fs_info* %12, i32 0)
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 18
  %16 = call i32 @down(i32* %15)
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 18
  %19 = call i32 @up(i32* %18)
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %21 = call i32 @btrfs_pause_balance(%struct.btrfs_fs_info* %20)
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %23 = call i32 @btrfs_dev_replace_suspend_for_unmount(%struct.btrfs_fs_info* %22)
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %25 = call i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info* %24)
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 16
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @wait_event(i32 %28, i32 %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %36 = call i32 @btrfs_cleanup_defrag_inodes(%struct.btrfs_fs_info* %35)
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 15
  %39 = call i32 @cancel_work_sync(i32* %38)
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sb_rdonly(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %1
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %47 = call i32 @btrfs_delete_unused_bgs(%struct.btrfs_fs_info* %46)
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %49 = call i32 @btrfs_commit_super(%struct.btrfs_fs_info* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @btrfs_err(%struct.btrfs_fs_info* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* @BTRFS_FS_STATE_ERROR, align 4
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 13
  %61 = call i64 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @BTRFS_FS_STATE_TRANS_ABORTED, align 4
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %66 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %65, i32 0, i32 13
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63, %57
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %71 = call i32 @btrfs_error_commit_super(%struct.btrfs_fs_info* %70)
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kthread_stop(i32 %75)
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %78 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kthread_stop(i32 %79)
  %81 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %82 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %81, i32 0, i32 10
  %83 = call i32 @list_empty(i32* %82)
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load i32, i32* @BTRFS_FS_CLOSING_DONE, align 4
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %86, i32 0, i32 8
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %90 = call i32 @btrfs_free_qgroup_config(%struct.btrfs_fs_info* %89)
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %92 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %91, i32 0, i32 9
  %93 = call i32 @list_empty(i32* %92)
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %96 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %95, i32 0, i32 3
  %97 = call i64 @percpu_counter_sum(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %72
  %100 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %102 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %101, i32 0, i32 3
  %103 = call i64 @percpu_counter_sum(i32* %102)
  %104 = call i32 @btrfs_info(%struct.btrfs_fs_info* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %99, %72
  %106 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %107 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %106, i32 0, i32 2
  %108 = call i64 @percpu_counter_sum(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %113 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %112, i32 0, i32 2
  %114 = call i64 @percpu_counter_sum(i32* %113)
  %115 = call i32 @btrfs_info(%struct.btrfs_fs_info* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %110, %105
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %118 = call i32 @btrfs_sysfs_remove_mounted(%struct.btrfs_fs_info* %117)
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @btrfs_sysfs_remove_fsid(i32 %121)
  %123 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %124 = call i32 @btrfs_free_fs_roots(%struct.btrfs_fs_info* %123)
  %125 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %126 = call i32 @btrfs_put_block_group_cache(%struct.btrfs_fs_info* %125)
  %127 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %128 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %127, i32 0, i32 7
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @invalidate_inode_pages2(i32 %131)
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %134 = call i32 @btrfs_stop_all_workers(%struct.btrfs_fs_info* %133)
  %135 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %136 = call i32 @btrfs_free_block_groups(%struct.btrfs_fs_info* %135)
  %137 = load i32, i32* @BTRFS_FS_OPEN, align 4
  %138 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %139 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %138, i32 0, i32 8
  %140 = call i32 @clear_bit(i32 %137, i32* %139)
  %141 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %142 = call i32 @free_root_pointers(%struct.btrfs_fs_info* %141, i32 1)
  %143 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %144 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %143, i32 0, i32 7
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = call i32 @iput(%struct.TYPE_4__* %145)
  %147 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %148 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %147, i32 0, i32 6
  %149 = call i32 @btrfs_mapping_tree_free(i32* %148)
  %150 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %151 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @btrfs_close_devices(i32 %152)
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %155 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %154, i32 0, i32 4
  %156 = call i32 @percpu_counter_destroy(i32* %155)
  %157 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %158 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %157, i32 0, i32 3
  %159 = call i32 @percpu_counter_destroy(i32* %158)
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %161 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %160, i32 0, i32 2
  %162 = call i32 @percpu_counter_destroy(i32* %161)
  %163 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %164 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = call i32 @percpu_counter_destroy(i32* %165)
  %167 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %168 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %167, i32 0, i32 0
  %169 = call i32 @cleanup_srcu_struct(i32* %168)
  %170 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %171 = call i32 @btrfs_free_csum_hash(%struct.btrfs_fs_info* %170)
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %173 = call i32 @btrfs_free_stripe_hash_table(%struct.btrfs_fs_info* %172)
  %174 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %175 = call i32 @btrfs_free_ref_cache(%struct.btrfs_fs_info* %174)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kthread_park(i32) #1

declare dso_local i32 @btrfs_qgroup_wait_for_completion(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @btrfs_pause_balance(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_dev_replace_suspend_for_unmount(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @btrfs_cleanup_defrag_inodes(%struct.btrfs_fs_info*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @sb_rdonly(i32) #1

declare dso_local i32 @btrfs_delete_unused_bgs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_commit_super(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_error_commit_super(%struct.btrfs_fs_info*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @btrfs_free_qgroup_config(%struct.btrfs_fs_info*) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i64) #1

declare dso_local i32 @btrfs_sysfs_remove_mounted(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_sysfs_remove_fsid(i32) #1

declare dso_local i32 @btrfs_free_fs_roots(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_put_block_group_cache(%struct.btrfs_fs_info*) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i32 @btrfs_stop_all_workers(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_free_block_groups(%struct.btrfs_fs_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @free_root_pointers(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @iput(%struct.TYPE_4__*) #1

declare dso_local i32 @btrfs_mapping_tree_free(i32*) #1

declare dso_local i32 @btrfs_close_devices(i32) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

declare dso_local i32 @btrfs_free_csum_hash(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_free_stripe_hash_table(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_free_ref_cache(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
