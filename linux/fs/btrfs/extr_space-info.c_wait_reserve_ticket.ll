; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_wait_reserve_ticket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_wait_reserve_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32 }
%struct.reserve_ticket = type { i64, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, %struct.reserve_ticket*)* @wait_reserve_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_reserve_ticket(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, %struct.reserve_ticket* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_space_info*, align 8
  %6 = alloca %struct.reserve_ticket*, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %5, align 8
  store %struct.reserve_ticket* %2, %struct.reserve_ticket** %6, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DEFINE_WAIT(i32 %8)
  store i32 0, i32* %7, align 4
  %10 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %40, %3
  %14 = load %struct.reserve_ticket*, %struct.reserve_ticket** %6, align 8
  %15 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.reserve_ticket*, %struct.reserve_ticket** %6, align 8
  %20 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %51

25:                                               ; preds = %23
  %26 = load %struct.reserve_ticket*, %struct.reserve_ticket** %6, align 8
  %27 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %26, i32 0, i32 1
  %28 = load i32, i32* @TASK_KILLABLE, align 4
  %29 = call i32 @prepare_to_wait_event(i32* %27, i32* @wait, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.reserve_ticket*, %struct.reserve_ticket** %6, align 8
  %34 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %33, i32 0, i32 3
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load i32, i32* @EINTR, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.reserve_ticket*, %struct.reserve_ticket** %6, align 8
  %39 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %51

40:                                               ; preds = %25
  %41 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = call i32 (...) @schedule()
  %45 = load %struct.reserve_ticket*, %struct.reserve_ticket** %6, align 8
  %46 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %45, i32 0, i32 1
  %47 = call i32 @finish_wait(i32* %46, i32* @wait)
  %48 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %49 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  br label %13

51:                                               ; preds = %32, %23
  %52 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %5, align 8
  %53 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @prepare_to_wait_event(i32*, i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
