; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_insert_empty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-item.c_btrfs_insert_empty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i64, i32, i32 }

@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_empty_inode(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %14 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %19 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %16, %struct.btrfs_root* %17, %struct.btrfs_path* %18, %struct.btrfs_key* %9, i32 4)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  ret i32 %20
}

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
