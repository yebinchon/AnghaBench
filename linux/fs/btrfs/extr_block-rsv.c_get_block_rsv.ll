; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_get_block_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-rsv.c_get_block_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_trans_handle = type { %struct.btrfs_block_rsv*, i64 }
%struct.btrfs_root = type { %struct.btrfs_block_rsv*, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv, %struct.btrfs_root*, %struct.btrfs_root* }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_block_rsv* (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @get_block_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_block_rsv* @get_block_rsv(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 2
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %6, align 8
  %10 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 2
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  %20 = icmp eq %struct.btrfs_root* %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 1
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %29, align 8
  %31 = icmp eq %struct.btrfs_root* %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %21, %2
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %33, i32 0, i32 0
  %35 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %34, align 8
  store %struct.btrfs_block_rsv* %35, %struct.btrfs_block_rsv** %6, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %38 = icmp ne %struct.btrfs_block_rsv* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %40, i32 0, i32 0
  %42 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %41, align 8
  store %struct.btrfs_block_rsv* %42, %struct.btrfs_block_rsv** %6, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %45 = icmp ne %struct.btrfs_block_rsv* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  store %struct.btrfs_block_rsv* %48, %struct.btrfs_block_rsv** %6, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  ret %struct.btrfs_block_rsv* %50
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
