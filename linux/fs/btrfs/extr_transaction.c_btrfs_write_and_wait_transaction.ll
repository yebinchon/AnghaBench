; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_write_and_wait_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_write_and_wait_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { %struct.extent_io_tree }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.blk_plug = type { i32 }

@EXTENT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*)* @btrfs_write_and_wait_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_write_and_wait_transaction(%struct.btrfs_trans_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.blk_plug, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  %9 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.extent_io_tree* %12, %struct.extent_io_tree** %6, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 1
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %7, align 8
  %16 = call i32 @blk_start_plug(%struct.blk_plug* %8)
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %18 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %19 = load i32, i32* @EXTENT_DIRTY, align 4
  %20 = call i32 @btrfs_write_marked_extents(%struct.btrfs_fs_info* %17, %struct.extent_io_tree* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = call i32 @blk_finish_plug(%struct.blk_plug* %8)
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %23 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %24 = call i32 @btrfs_wait_extents(%struct.btrfs_fs_info* %22, %struct.extent_io_tree* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @extent_io_tree_release(%struct.extent_io_tree* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @btrfs_write_marked_extents(%struct.btrfs_fs_info*, %struct.extent_io_tree*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @btrfs_wait_extents(%struct.btrfs_fs_info*, %struct.extent_io_tree*) #1

declare dso_local i32 @extent_io_tree_release(%struct.extent_io_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
