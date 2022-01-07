; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_inode_rsv_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_inode_rsv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { %struct.TYPE_3__*, %struct.btrfs_block_rsv }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_rsv = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"delalloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_inode*, i32)* @btrfs_inode_rsv_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_inode_rsv_release(%struct.btrfs_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %5, align 8
  %14 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %14, i32 0, i32 1
  store %struct.btrfs_block_rsv* %15, %struct.btrfs_block_rsv** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %17 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %18 = call i64 @__btrfs_block_rsv_release(%struct.btrfs_fs_info* %16, %struct.btrfs_block_rsv* %17, i32 0, i64* %8)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %23 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %24 = call i32 @btrfs_ino(%struct.btrfs_inode* %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25, i32 0)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @btrfs_qgroup_free_meta_prealloc(%struct.TYPE_3__* %33, i64 %34)
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @btrfs_qgroup_convert_reserved_meta(%struct.TYPE_3__* %39, i64 %40)
  br label %42

42:                                               ; preds = %36, %30
  ret void
}

declare dso_local i64 @__btrfs_block_rsv_release(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i32, i64*) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i64, i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @btrfs_qgroup_free_meta_prealloc(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @btrfs_qgroup_convert_reserved_meta(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
