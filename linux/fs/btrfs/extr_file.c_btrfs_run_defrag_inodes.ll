; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_run_defrag_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_run_defrag_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.inode_defrag = type { i64, i64 }

@BTRFS_FS_STATE_REMOUNTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_run_defrag_inodes(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.inode_defrag*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 1
  %8 = call i32 @atomic_inc(i32* %7)
  br label %9

9:                                                ; preds = %1, %34, %36
  %10 = load i32, i32* @BTRFS_FS_STATE_REMOUNTING, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %47

16:                                               ; preds = %9
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %18 = call i32 @__need_auto_defrag(%struct.btrfs_fs_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %47

21:                                               ; preds = %16
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.inode_defrag* @btrfs_pick_defrag_inode(%struct.btrfs_fs_info* %22, i64 %23, i64 %24)
  store %struct.inode_defrag* %25, %struct.inode_defrag** %3, align 8
  %26 = load %struct.inode_defrag*, %struct.inode_defrag** %3, align 8
  %27 = icmp ne %struct.inode_defrag* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

35:                                               ; preds = %31
  br label %47

36:                                               ; preds = %21
  %37 = load %struct.inode_defrag*, %struct.inode_defrag** %3, align 8
  %38 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %4, align 8
  %41 = load %struct.inode_defrag*, %struct.inode_defrag** %3, align 8
  %42 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %45 = load %struct.inode_defrag*, %struct.inode_defrag** %3, align 8
  %46 = call i32 @__btrfs_run_defrag_inode(%struct.btrfs_fs_info* %44, %struct.inode_defrag* %45)
  br label %9

47:                                               ; preds = %35, %20, %15
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 1
  %50 = call i32 @atomic_dec(i32* %49)
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 0
  %53 = call i32 @wake_up(i32* %52)
  ret i32 0
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__need_auto_defrag(%struct.btrfs_fs_info*) #1

declare dso_local %struct.inode_defrag* @btrfs_pick_defrag_inode(%struct.btrfs_fs_info*, i64, i64) #1

declare dso_local i32 @__btrfs_run_defrag_inode(%struct.btrfs_fs_info*, %struct.inode_defrag*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
