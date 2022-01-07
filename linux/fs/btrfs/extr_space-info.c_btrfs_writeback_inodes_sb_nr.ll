; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_writeback_inodes_sb_nr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_writeback_inodes_sb_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { %struct.super_block* }
%struct.super_block = type { i32 }

@WB_REASON_FS_FREE_SPACE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, i64, i32)* @btrfs_writeback_inodes_sb_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_writeback_inodes_sb_nr(%struct.btrfs_fs_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %7, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = call i64 @down_read_trylock(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @WB_REASON_FS_FREE_SPACE, align 4
  %19 = call i32 @writeback_inodes_sb_nr(%struct.super_block* %16, i64 %17, i32 %18)
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @btrfs_start_delalloc_roots(%struct.btrfs_fs_info* %24, i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %32, i32 %33, i32 0, i32 -1)
  br label %35

35:                                               ; preds = %31, %23
  br label %36

36:                                               ; preds = %35, %15
  ret void
}

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @writeback_inodes_sb_nr(%struct.super_block*, i64, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @btrfs_start_delalloc_roots(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
