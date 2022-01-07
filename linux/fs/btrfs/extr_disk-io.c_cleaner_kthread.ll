; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_cleaner_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_cleaner_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }

@BTRFS_FS_CLEANER_RUNNING = common dso_local global i32 0, align 4
@BTRFS_FS_OPEN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cleaner_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleaner_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.btrfs_root*
  store %struct.btrfs_root* %7, %struct.btrfs_root** %3, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 0
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %4, align 8
  br label %11

11:                                               ; preds = %1, %75
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @BTRFS_FS_CLEANER_RUNNING, align 4
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %17 = call i64 @btrfs_need_cleaner_sleep(%struct.btrfs_fs_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %53

20:                                               ; preds = %11
  %21 = load i32, i32* @BTRFS_FS_OPEN, align 4
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 1
  %30 = call i32 @mutex_trylock(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %53

33:                                               ; preds = %27
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %35 = call i64 @btrfs_need_cleaner_sleep(%struct.btrfs_fs_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %43 = call i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info* %42)
  %44 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %45 = call i32 @btrfs_clean_one_deleted_snapshot(%struct.btrfs_root* %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %50 = call i32 @btrfs_run_defrag_inodes(%struct.btrfs_fs_info* %49)
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %52 = call i32 @btrfs_delete_unused_bgs(%struct.btrfs_fs_info* %51)
  br label %53

53:                                               ; preds = %41, %37, %32, %26, %19
  %54 = load i32, i32* @BTRFS_FS_CLEANER_RUNNING, align 4
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = call i64 (...) @kthread_should_park()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 (...) @kthread_parkme()
  br label %62

62:                                               ; preds = %60, %53
  %63 = call i64 (...) @kthread_should_stop()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  ret i32 0

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %71 = call i32 @set_current_state(i32 %70)
  %72 = call i32 (...) @schedule()
  %73 = load i32, i32* @TASK_RUNNING, align 4
  %74 = call i32 @__set_current_state(i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  br label %11
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @btrfs_need_cleaner_sleep(%struct.btrfs_fs_info*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_clean_one_deleted_snapshot(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_run_defrag_inodes(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_delete_unused_bgs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @kthread_should_park(...) #1

declare dso_local i32 @kthread_parkme(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
