; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_create_block_group_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_create_block_group_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btrfs_fs_info*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.btrfs_fs_info = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_block_group_cache* (%struct.btrfs_fs_info*, i8*, i8*)* @btrfs_create_block_group_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_block_group_cache* @btrfs_create_block_group_cache(%struct.btrfs_fs_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call i8* @kzalloc(i32 96, i32 %9)
  %11 = bitcast i8* %10 to %struct.btrfs_block_group_cache*
  store %struct.btrfs_block_group_cache* %11, %struct.btrfs_block_group_cache** %8, align 8
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %13 = icmp ne %struct.btrfs_block_group_cache* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %4, align 8
  br label %89

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call i8* @kzalloc(i32 1, i32 %16)
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 15
  store i8* %17, i8** %19, align 8
  %20 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %20, i32 0, i32 15
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %26 = call i32 @kfree(%struct.btrfs_block_group_cache* %25)
  store %struct.btrfs_block_group_cache* null, %struct.btrfs_block_group_cache** %4, align 8
  br label %89

27:                                               ; preds = %15
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %29, i32 0, i32 14
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %33, i32 0, i32 14
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @BTRFS_BLOCK_GROUP_ITEM_KEY, align 4
  %37 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %38 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %37, i32 0, i32 14
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %41, i32 0, i32 13
  store %struct.btrfs_fs_info* %40, %struct.btrfs_fs_info** %42, align 8
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @btrfs_full_stripe_len(%struct.btrfs_fs_info* %43, i8* %44)
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %49 = call i32 @set_free_space_tree_thresholds(%struct.btrfs_block_group_cache* %48)
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %51 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %50, i32 0, i32 11
  %52 = call i32 @atomic_set(i32* %51, i32 1)
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %54 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %53, i32 0, i32 10
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %56, i32 0, i32 9
  %58 = call i32 @init_rwsem(i32* %57)
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %59, i32 0, i32 8
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %63 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %62, i32 0, i32 7
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %66 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %65, i32 0, i32 6
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %69 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %68, i32 0, i32 5
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %72 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %71, i32 0, i32 4
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %75 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %74, i32 0, i32 3
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %78 = call i32 @btrfs_init_free_space_ctl(%struct.btrfs_block_group_cache* %77)
  %79 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %80 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %79, i32 0, i32 2
  %81 = call i32 @atomic_set(i32* %80, i32 0)
  %82 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %83 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %82, i32 0, i32 1
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %86 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %85, i32 0, i32 0
  %87 = call i32 @btrfs_init_full_stripe_locks_tree(i32* %86)
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  store %struct.btrfs_block_group_cache* %88, %struct.btrfs_block_group_cache** %4, align 8
  br label %89

89:                                               ; preds = %27, %24, %14
  %90 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  ret %struct.btrfs_block_group_cache* %90
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_full_stripe_len(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @set_free_space_tree_thresholds(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @btrfs_init_free_space_ctl(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @btrfs_init_full_stripe_locks_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
