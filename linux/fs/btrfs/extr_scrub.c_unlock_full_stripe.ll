; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_unlock_full_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_unlock_full_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32, %struct.btrfs_full_stripe_locks_tree }
%struct.btrfs_full_stripe_locks_tree = type { i32, i32 }
%struct.full_stripe_lock = type { i64, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID56_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"full stripe lock at %llu refcount underflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32)* @unlock_full_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_full_stripe(%struct.btrfs_fs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_block_group_cache*, align 8
  %9 = alloca %struct.btrfs_full_stripe_locks_tree*, align 8
  %10 = alloca %struct.full_stripe_lock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

17:                                               ; preds = %3
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %18, i32 %19)
  store %struct.btrfs_block_group_cache* %20, %struct.btrfs_block_group_cache** %8, align 8
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %22 = icmp ne %struct.btrfs_block_group_cache* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = call i32 @ASSERT(i32 0)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %17
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID56_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %97

35:                                               ; preds = %27
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 1
  store %struct.btrfs_full_stripe_locks_tree* %37, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %38 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @get_full_stripe_logical(%struct.btrfs_block_group_cache* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %42 = getelementptr inbounds %struct.btrfs_full_stripe_locks_tree, %struct.btrfs_full_stripe_locks_tree* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.full_stripe_lock* @search_full_stripe_lock(%struct.btrfs_full_stripe_locks_tree* %44, i32 %45)
  store %struct.full_stripe_lock* %46, %struct.full_stripe_lock** %10, align 8
  %47 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %48 = icmp ne %struct.full_stripe_lock* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %35
  %50 = call i32 @WARN_ON(i32 1)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %54 = getelementptr inbounds %struct.btrfs_full_stripe_locks_tree, %struct.btrfs_full_stripe_locks_tree* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %97

56:                                               ; preds = %35
  %57 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %58 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = call i32 @WARN_ON(i32 1)
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %64 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %65 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %73

68:                                               ; preds = %56
  %69 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %70 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %75 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %80 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %79, i32 0, i32 2
  %81 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %82 = getelementptr inbounds %struct.btrfs_full_stripe_locks_tree, %struct.btrfs_full_stripe_locks_tree* %81, i32 0, i32 1
  %83 = call i32 @rb_erase(i32* %80, i32* %82)
  store i32 1, i32* %12, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.btrfs_full_stripe_locks_tree*, %struct.btrfs_full_stripe_locks_tree** %9, align 8
  %86 = getelementptr inbounds %struct.btrfs_full_stripe_locks_tree, %struct.btrfs_full_stripe_locks_tree* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %89 = getelementptr inbounds %struct.full_stripe_lock, %struct.full_stripe_lock* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.full_stripe_lock*, %struct.full_stripe_lock** %10, align 8
  %95 = call i32 @kfree(%struct.full_stripe_lock* %94)
  br label %96

96:                                               ; preds = %93, %84
  br label %97

97:                                               ; preds = %96, %49, %34
  %98 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %8, align 8
  %99 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %23, %16
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @get_full_stripe_logical(%struct.btrfs_block_group_cache*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.full_stripe_lock* @search_full_stripe_lock(%struct.btrfs_full_stripe_locks_tree*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.full_stripe_lock*) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
