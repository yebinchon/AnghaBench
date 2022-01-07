; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_start_caching.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_start_caching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, %struct.TYPE_2__, i32, i32, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.task_struct = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_NO = common dso_local global i64 0, align 8
@BTRFS_CACHE_STARTED = common dso_local global i64 0, align 8
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@BTRFS_LAST_FREE_OBJECTID = common dso_local global i64 0, align 8
@caching_kthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"btrfs-ino-cache-%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*)* @start_caching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_caching(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_free_space_ctl*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 5
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %3, align 8
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 4
  %13 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %12, align 8
  store %struct.btrfs_free_space_ctl* %13, %struct.btrfs_free_space_ctl** %4, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = load i32, i32* @INODE_MAP_CACHE, align 4
  %16 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock(i32* %30)
  br label %92

32:                                               ; preds = %19
  %33 = load i64, i64* @BTRFS_CACHE_STARTED, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %37 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %36, i32 0, i32 3
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %41 = call i32 @load_free_ino_cache(%struct.btrfs_fs_info* %39, %struct.btrfs_root* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 3
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 3
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %55 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %54, i32 0, i32 2
  %56 = call i32 @wake_up(i32* %55)
  br label %92

57:                                               ; preds = %32
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %59 = call i32 @btrfs_find_free_objectid(%struct.btrfs_root* %58, i64* %7)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %68 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %70, %71
  %73 = add nsw i64 %72, 1
  %74 = call i32 @__btrfs_add_free_space(%struct.btrfs_fs_info* %67, %struct.btrfs_free_space_ctl* %68, i64 %69, i64 %73)
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 2
  %77 = call i32 @wake_up(i32* %76)
  br label %78

78:                                               ; preds = %66, %62, %57
  %79 = load i32, i32* @caching_kthread, align 4
  %80 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %82 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.task_struct* @kthread_run(i32 %79, %struct.btrfs_root* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %84)
  store %struct.task_struct* %85, %struct.task_struct** %5, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %87 = call i64 @IS_ERR(%struct.task_struct* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %91 = call i32 @fail_caching_thread(%struct.btrfs_root* %90)
  br label %92

92:                                               ; preds = %18, %28, %44, %89, %78
  ret void
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @load_free_ino_cache(%struct.btrfs_fs_info*, %struct.btrfs_root*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @btrfs_find_free_objectid(%struct.btrfs_root*, i64*) #1

declare dso_local i32 @__btrfs_add_free_space(%struct.btrfs_fs_info*, %struct.btrfs_free_space_ctl*, i64, i64) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.btrfs_root*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @fail_caching_thread(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
