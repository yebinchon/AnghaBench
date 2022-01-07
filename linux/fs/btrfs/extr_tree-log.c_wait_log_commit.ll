; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_wait_log_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_wait_log_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32*, i32, i32* }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, i32)* @wait_log_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_log_commit(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = srem i32 %8, 2
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %2
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait(i32* %16, i32* @wait, i32 %17)
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %10
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %10
  br label %42

34:                                               ; preds = %24
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = call i32 (...) @schedule()
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  br label %10

42:                                               ; preds = %33
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @finish_wait(i32* %48, i32* @wait)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
