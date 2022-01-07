; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_alloc_dummy_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_btrfs-tests.c_btrfs_alloc_dummy_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, i32, i32, %struct.btrfs_fs_info*, i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.btrfs_fs_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_ITEM_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_block_group_cache* @btrfs_alloc_dummy_block_group(%struct.btrfs_fs_info* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 64, i32 %7)
  %9 = bitcast i8* %8 to %struct.btrfs_block_group_cache*
  store %struct.btrfs_block_group_cache* %9, %struct.btrfs_block_group_cache** %6, align 8
  %10 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %11 = icmp ne %struct.btrfs_block_group_cache* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %3, align 8
  br label %60

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 1, i32 %14)
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 7
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %24 = call i32 @kfree(%struct.btrfs_block_group_cache* %23)
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %3, align 8
  br label %60

25:                                               ; preds = %13
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* @BTRFS_BLOCK_GROUP_ITEM_KEY, align 4
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %41 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %43, i32 0, i32 4
  store %struct.btrfs_fs_info* %42, %struct.btrfs_fs_info** %44, align 8
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 3
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %48, i32 0, i32 2
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %55 = call i32 @btrfs_init_free_space_ctl(%struct.btrfs_block_group_cache* %54)
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %56, i32 0, i32 0
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  store %struct.btrfs_block_group_cache* %59, %struct.btrfs_block_group_cache** %3, align 8
  br label %60

60:                                               ; preds = %25, %22, %12
  %61 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  ret %struct.btrfs_block_group_cache* %61
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @btrfs_init_free_space_ctl(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
