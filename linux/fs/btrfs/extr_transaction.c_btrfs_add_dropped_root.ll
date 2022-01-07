; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_add_dropped_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_add_dropped_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i32, i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32, i32 }

@BTRFS_ROOT_TRANS_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_add_dropped_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 2
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %5, align 8
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 0
  %12 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %11, align 8
  store %struct.btrfs_transaction* %12, %struct.btrfs_transaction** %6, align 8
  %13 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 1
  %18 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %22 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 1
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @BTRFS_ROOT_TRANS_TAG, align 4
  %34 = call i32 @radix_tree_tag_clear(i32* %28, i64 %32, i32 %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
