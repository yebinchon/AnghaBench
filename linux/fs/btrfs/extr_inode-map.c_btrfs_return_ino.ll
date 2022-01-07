; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_return_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_return_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, i32, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_return_ino(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 3
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %5, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 2
  %12 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  store %struct.btrfs_free_space_ctl* %12, %struct.btrfs_free_space_ctl** %6, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %14 = load i32, i32* @INODE_MAP_CACHE, align 4
  %15 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %62

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %42, %18
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %27 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__btrfs_add_free_space(%struct.btrfs_fs_info* %26, %struct.btrfs_free_space_ctl* %27, i32 %28, i32 1)
  br label %62

30:                                               ; preds = %19
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = call i32 @down_write(i32* %32)
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 0
  %48 = call i32 @up_write(i32* %47)
  br label %19

49:                                               ; preds = %30
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %54 = call i32 @start_caching(%struct.btrfs_root* %53)
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %56 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @__btrfs_add_free_space(%struct.btrfs_fs_info* %55, %struct.btrfs_free_space_ctl* %56, i32 %57, i32 1)
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 0
  %61 = call i32 @up_write(i32* %60)
  br label %62

62:                                               ; preds = %17, %49, %25
  ret void
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @__btrfs_add_free_space(%struct.btrfs_fs_info*, %struct.btrfs_free_space_ctl*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @start_caching(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
