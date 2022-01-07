; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_init_free_space_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_init_free_space_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_free_space_ctl = type { i32, i32, i32, i32*, %struct.btrfs_block_group_cache*, i32, i32, i32 }
%struct.btrfs_fs_info = type { i32 }

@free_space_op = common dso_local global i32 0, align 4
@SZ_32K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_free_space_ctl(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_free_space_ctl*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %5 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %5, i32 0, i32 2
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  store %struct.btrfs_fs_info* %7, %struct.btrfs_fs_info** %3, align 8
  %8 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %8, i32 0, i32 1
  %10 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %9, align 8
  store %struct.btrfs_free_space_ctl* %10, %struct.btrfs_free_space_ctl** %4, align 8
  %11 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %11, i32 0, i32 7
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %26 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %26, i32 0, i32 4
  store %struct.btrfs_block_group_cache* %25, %struct.btrfs_block_group_cache** %27, align 8
  %28 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %28, i32 0, i32 3
  store i32* @free_space_op, i32** %29, align 8
  %30 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %33, i32 0, i32 1
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load i32, i32* @SZ_32K, align 4
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
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
