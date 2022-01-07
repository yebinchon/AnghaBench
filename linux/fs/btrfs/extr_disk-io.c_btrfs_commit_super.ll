; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_commit_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_commit_super(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 3
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_root* %8, %struct.btrfs_root** %4, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %13 = call i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info* %12)
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wake_up_process(i32 %19)
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  %23 = call i32 @down_write(i32* %22)
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = call i32 @up_write(i32* %25)
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %28 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %27)
  store %struct.btrfs_trans_handle* %28, %struct.btrfs_trans_handle** %5, align 8
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %30 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %34 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %33)
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %37 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
