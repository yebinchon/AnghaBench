; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_update_delayed_refs_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_update_delayed_refs_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca %struct.btrfs_trans_handle*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_block_rsv*, align 8
  %5 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %2, align 8
  %6 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %6, i32 0, i32 1
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %3, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 0
  store %struct.btrfs_block_rsv* %10, %struct.btrfs_block_rsv** %4, align 8
  %11 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %19 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %17, i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %38 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
