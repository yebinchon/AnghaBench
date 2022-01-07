; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_add_root_to_dirty_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_add_root_to_dirty_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, %struct.TYPE_2__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32, i32 }

@BTRFS_ROOT_DIRTY = common dso_local global i32 0, align 4
@BTRFS_ROOT_TRACK_DIRTY = common dso_local global i32 0, align 4
@BTRFS_EXTENT_TREE_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*)* @add_root_to_dirty_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_root_to_dirty_list(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %4 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %4, i32 0, i32 3
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_fs_info* %6, %struct.btrfs_fs_info** %3, align 8
  %7 = load i32, i32* @BTRFS_ROOT_DIRTY, align 4
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 2
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @BTRFS_ROOT_TRACK_DIRTY, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %1
  br label %52

19:                                               ; preds = %12
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* @BTRFS_ROOT_DIRTY, align 4
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 2
  %26 = call i32 @test_and_set_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %19
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BTRFS_EXTENT_TREE_OBJECTID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 0
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = call i32 @list_move_tail(i32* %37, i32* %39)
  br label %47

41:                                               ; preds = %28
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 0
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %44, i32 0, i32 1
  %46 = call i32 @list_move(i32* %43, i32* %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %50 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %18
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
