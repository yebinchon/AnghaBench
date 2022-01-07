; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_write_out_ino_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_write_out_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_io_ctl = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_write_out_ino_cache(%struct.btrfs_root* %0, %struct.btrfs_trans_handle* %1, %struct.btrfs_path* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.btrfs_free_space_ctl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_io_ctl, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 2
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %10, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 1
  %20 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %19, align 8
  store %struct.btrfs_free_space_ctl* %20, %struct.btrfs_free_space_ctl** %11, align 8
  store i32 1, i32* %14, align 4
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %22 = load i32, i32* @INODE_MAP_CACHE, align 4
  %23 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %56

26:                                               ; preds = %4
  %27 = call i32 @memset(%struct.btrfs_io_ctl* %13, i32 0, i32 4)
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %31 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %32 = call i32 @__btrfs_write_out_cache(%struct.btrfs_root* %28, %struct.inode* %29, %struct.btrfs_free_space_ctl* %30, i32* null, %struct.btrfs_io_ctl* %13, %struct.btrfs_trans_handle* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %39 = call i32 @btrfs_wait_cache_io_root(%struct.btrfs_root* %36, %struct.btrfs_trans_handle* %37, %struct.btrfs_io_ctl* %13, %struct.btrfs_path* %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @BTRFS_I(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @btrfs_delalloc_release_metadata(i32 %48, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %46, %43
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %25
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @memset(%struct.btrfs_io_ctl*, i32, i32) #1

declare dso_local i32 @__btrfs_write_out_cache(%struct.btrfs_root*, %struct.inode*, %struct.btrfs_free_space_ctl*, i32*, %struct.btrfs_io_ctl*, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_wait_cache_io_root(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_io_ctl*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_delalloc_release_metadata(i32, i32, i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
