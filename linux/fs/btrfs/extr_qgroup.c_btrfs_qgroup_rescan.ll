; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_rescan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }

@BTRFS_QGROUP_STATUS_FLAG_RESCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_rescan(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %7 = call i32 @qgroup_rescan_init(%struct.btrfs_fs_info* %6, i32 0, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(i32 %15)
  store %struct.btrfs_trans_handle* %16, %struct.btrfs_trans_handle** %5, align 8
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %18 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_RESCAN, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %28 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %27)
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %12
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %31 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_RESCAN, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %44 = call i32 @qgroup_rescan_zero_tracking(%struct.btrfs_fs_info* %43)
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 0
  %50 = call i32 @btrfs_queue_work(i32 %47, i32* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %34, %20, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @qgroup_rescan_init(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @qgroup_rescan_zero_tracking(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
