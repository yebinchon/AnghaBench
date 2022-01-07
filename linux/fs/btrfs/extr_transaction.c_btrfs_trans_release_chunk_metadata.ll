; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_trans_release_chunk_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_trans_release_chunk_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_trans_release_chunk_metadata(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca %struct.btrfs_trans_handle*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %2, align 8
  %4 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %4, i32 0, i32 2
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_fs_info* %6, %struct.btrfs_fs_info** %3, align 8
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info* %20, i32* %22, i32 %25)
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
