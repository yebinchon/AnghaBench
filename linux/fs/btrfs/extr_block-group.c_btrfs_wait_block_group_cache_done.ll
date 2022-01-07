; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_wait_block_group_cache_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_wait_block_group_cache_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i64 }
%struct.btrfs_caching_control = type { i32 }

@BTRFS_CACHE_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_wait_block_group_cache_done(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca %struct.btrfs_caching_control*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %7 = call %struct.btrfs_caching_control* @btrfs_get_caching_control(%struct.btrfs_block_group_cache* %6)
  store %struct.btrfs_caching_control* %7, %struct.btrfs_caching_control** %4, align 8
  %8 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %9 = icmp ne %struct.btrfs_caching_control* %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BTRFS_CACHE_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %27 = call i32 @btrfs_block_group_cache_done(%struct.btrfs_block_group_cache* %26)
  %28 = call i32 @wait_event(i32 %25, i32 %27)
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BTRFS_CACHE_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %4, align 8
  %39 = call i32 @btrfs_put_caching_control(%struct.btrfs_caching_control* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.btrfs_caching_control* @btrfs_get_caching_control(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @btrfs_block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_put_caching_control(%struct.btrfs_caching_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
