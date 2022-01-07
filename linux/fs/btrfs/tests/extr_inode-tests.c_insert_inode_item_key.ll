; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_insert_inode_item_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_insert_inode_item_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.extent_buffer* }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.btrfs_key = type { i64, i8*, i8* }

@BTRFS_INODE_ITEM_KEY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*)* @insert_inode_item_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_inode_item_key(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_path, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_key, align 8
  %6 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 0
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %9, %struct.extent_buffer** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = call i32 @memset(%struct.btrfs_path* %3, i32 0, i32 16)
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %3, i32 0, i32 1
  %13 = load %struct.extent_buffer**, %struct.extent_buffer*** %12, align 8
  %14 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %13, i64 0
  store %struct.extent_buffer* %11, %struct.extent_buffer** %14, align 8
  %15 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %3, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** @BTRFS_INODE_ITEM_KEY, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @BTRFS_INODE_ITEM_KEY, align 8
  %21 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 4
  %27 = call i32 @setup_items_for_insert(%struct.btrfs_root* %23, %struct.btrfs_path* %3, %struct.btrfs_key* %5, i64* %6, i64 %24, i64 %26, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @setup_items_for_insert(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
