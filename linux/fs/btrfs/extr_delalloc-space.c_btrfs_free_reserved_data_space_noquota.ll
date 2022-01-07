; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_free_reserved_data_space_noquota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_free_reserved_data_space_noquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_space_info*, i32 }
%struct.btrfs_space_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_free_reserved_data_space_noquota(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_space_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %11)
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @round_up(i64 %15, i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @round_down(i64 %20, i32 %23)
  %25 = sub nsw i64 %19, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @round_down(i64 %26, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %32, align 8
  store %struct.btrfs_space_info* %33, %struct.btrfs_space_info** %8, align 8
  %34 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %35 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %38 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub nsw i64 0, %39
  %41 = call i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info* %37, %struct.btrfs_space_info* %38, i64 %40)
  %42 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %43 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
