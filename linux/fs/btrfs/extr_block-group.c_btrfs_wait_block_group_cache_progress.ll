; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_wait_block_group_cache_progress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_wait_block_group_cache_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_caching_control = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_wait_block_group_cache_progress(%struct.btrfs_block_group_cache* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_block_group_cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.btrfs_caching_control*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %7 = call %struct.btrfs_caching_control* @btrfs_get_caching_control(%struct.btrfs_block_group_cache* %6)
  store %struct.btrfs_caching_control* %7, %struct.btrfs_caching_control** %5, align 8
  %8 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %5, align 8
  %9 = icmp ne %struct.btrfs_caching_control* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %16 = call i64 @btrfs_block_group_cache_done(%struct.btrfs_block_group_cache* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %3, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp sge i64 %23, %24
  br label %26

26:                                               ; preds = %18, %11
  %27 = phi i1 [ true, %11 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event(i32 %14, i32 %28)
  %30 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %5, align 8
  %31 = call i32 @btrfs_put_caching_control(%struct.btrfs_caching_control* %30)
  br label %32

32:                                               ; preds = %26, %10
  ret void
}

declare dso_local %struct.btrfs_caching_control* @btrfs_get_caching_control(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @btrfs_block_group_cache_done(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_put_caching_control(%struct.btrfs_caching_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
