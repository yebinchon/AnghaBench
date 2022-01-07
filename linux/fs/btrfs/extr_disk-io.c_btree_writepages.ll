; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64, i64 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }

@WB_SYNC_NONE = common dso_local global i64 0, align 8
@BTRFS_DIRTY_METADATA_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @btree_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %8 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %9 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WB_SYNC_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %15 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

19:                                               ; preds = %13
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_4__* @BTRFS_I(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %26, align 8
  store %struct.btrfs_fs_info* %27, %struct.btrfs_fs_info** %6, align 8
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 1
  %30 = load i32, i32* @BTRFS_DIRTY_METADATA_THRESH, align 4
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__percpu_counter_compare(i32* %29, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %43

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.address_space*, %struct.address_space** %4, align 8
  %41 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %42 = call i32 @btree_write_cache_pages(%struct.address_space* %40, %struct.writeback_control* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %37, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i32 @__percpu_counter_compare(i32*, i32, i32) #1

declare dso_local i32 @btree_write_cache_pages(%struct.address_space*, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
