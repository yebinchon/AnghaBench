; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_init_free_ino_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_init_free_ino_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i32, i32*, i64, i32*, i64, i32, i32, i32 }

@free_ino_op = common dso_local global i32 0, align 4
@INIT_THRESHOLD = common dso_local global i64 0, align 8
@pinned_free_ino_op = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_free_ino_ctl(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.btrfs_free_space_ctl*, align 8
  %4 = alloca %struct.btrfs_free_space_ctl*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %5, i32 0, i32 1
  %7 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  store %struct.btrfs_free_space_ctl* %7, %struct.btrfs_free_space_ctl** %3, align 8
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 0
  %10 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  store %struct.btrfs_free_space_ctl* %10, %struct.btrfs_free_space_ctl** %4, align 8
  %11 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %11, i32 0, i32 5
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %20, i32 0, i32 1
  store i32* @free_ino_op, i32** %21, align 8
  %22 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %25, i32 0, i32 6
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load i64, i64* @INIT_THRESHOLD, align 8
  %29 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %31, i32 0, i32 5
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %42, i32 0, i32 1
  store i32* @pinned_free_ino_op, i32** %43, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
