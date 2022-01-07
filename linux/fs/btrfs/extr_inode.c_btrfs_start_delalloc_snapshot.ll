; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_start_delalloc_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_start_delalloc_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@BTRFS_FS_STATE_ERROR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_start_delalloc_snapshot(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %6 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %7 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %6, i32 0, i32 0
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %4, align 8
  %9 = load i32, i32* @BTRFS_FS_STATE_ERROR, align 4
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EROFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %19 = call i32 @start_delalloc_inodes(%struct.btrfs_root* %18, i32 -1, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @start_delalloc_inodes(%struct.btrfs_root*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
