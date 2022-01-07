; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_lock_full_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_lock_full_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32, %struct.btrfs_full_stripe_locks_tree }
%struct.btrfs_full_stripe_locks_tree = type { i32 }
%struct.full_stripe_lock = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID56_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32*)* @lock_full_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_full_stripe(%struct.btrfs_fs_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca %struct.btrfs_full_stripe_locks_tree*, align 8
  %10 = alloca %struct.full_stripe_lock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %14, i32 %15)
  store %struct.btrfs_block_group_cache* %16, %struct.btrfs_block_group_cache** %8, align 8
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %18 = icmp ne %struct.btrfs_block_group_cache* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call i32 @ASSERT(i32 0)
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID56_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %57

31:                                               ; preds = %23
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 1
  store %struct.btrfs_full_stripe_locks_tree* %33, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @get_full_stripe_logical(%struct.btrfs_block_group_cache* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %38 = getelementptr inbounds %struct.btrfs_full_stripe_locks_tree, %struct.btrfs_full_stripe_locks_tree* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.full_stripe_lock* @insert_full_stripe_lock(%struct.btrfs_full_stripe_locks_tree* %40, i32 %41)
  store %struct.full_stripe_lock* %42, %struct.full_stripe_lock** %10, align 8
  %43 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %44 = getelementptr inbounds %struct.btrfs_full_stripe_locks_tree, %struct.btrfs_full_stripe_locks_tree* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %47 = call i64 @IS_ERR(%struct.full_stripe_lock* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.full_stripe_lock* %50)
  store i32 %51, i32* %12, align 4
  br label %57

52:                                               ; preds = %31
  %53 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %54 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32*, i32** %7, align 8
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %49, %30
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %59 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %58)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @get_full_stripe_logical(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.full_stripe_lock* @insert_full_stripe_lock(%struct.btrfs_full_stripe_locks_tree*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.full_stripe_lock*) #1

declare dso_local i32 @PTR_ERR(%struct.full_stripe_lock*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
