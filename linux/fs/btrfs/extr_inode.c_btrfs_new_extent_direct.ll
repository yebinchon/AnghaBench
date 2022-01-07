; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_new_extent_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_new_extent_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@BTRFS_ORDERED_REGULAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_map* (%struct.inode*, i32, i32)* @btrfs_new_extent_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_map* @btrfs_new_extent_direct(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.extent_map*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.extent_map*, align 8
  %11 = alloca %struct.btrfs_key, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %16)
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_extent_allocation_hint(%struct.inode* %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @btrfs_reserve_extent(%struct.btrfs_root* %26, i32 %27, i32 %28, i32 %31, i32 0, i32 %32, %struct.btrfs_key* %11, i32 1, i32 1)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.extent_map* @ERR_PTR(i32 %37)
  store %struct.extent_map* %38, %struct.extent_map** %4, align 8
  br label %71

39:                                               ; preds = %3
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BTRFS_ORDERED_REGULAR, align 4
  %54 = call %struct.extent_map* @btrfs_create_dio_extent(%struct.inode* %40, i32 %41, i32 %43, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %53)
  store %struct.extent_map* %54, %struct.extent_map** %10, align 8
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @btrfs_dec_block_group_reservations(%struct.btrfs_fs_info* %55, i32 %57)
  %59 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  %60 = call i64 @IS_ERR(%struct.extent_map* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %39
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %64 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @btrfs_free_reserved_extent(%struct.btrfs_fs_info* %63, i32 %65, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %62, %39
  %70 = load %struct.extent_map*, %struct.extent_map** %10, align 8
  store %struct.extent_map* %70, %struct.extent_map** %4, align 8
  br label %71

71:                                               ; preds = %69, %36
  %72 = load %struct.extent_map*, %struct.extent_map** %4, align 8
  ret %struct.extent_map* %72
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @get_extent_allocation_hint(%struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_reserve_extent(%struct.btrfs_root*, i32, i32, i32, i32, i32, %struct.btrfs_key*, i32, i32) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

declare dso_local %struct.extent_map* @btrfs_create_dio_extent(%struct.inode*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_dec_block_group_reservations(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @btrfs_free_reserved_extent(%struct.btrfs_fs_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
