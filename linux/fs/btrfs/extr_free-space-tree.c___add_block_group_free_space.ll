; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c___add_block_group_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c___add_block_group_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btrfs_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*)* @__add_block_group_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_block_group_free_space(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1, %struct.btrfs_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %14 = call i32 @add_new_free_space_info(%struct.btrfs_trans_handle* %11, %struct.btrfs_block_group_cache* %12, %struct.btrfs_path* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %20, %struct.btrfs_block_group_cache* %21, %struct.btrfs_path* %22, i32 %26, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @add_new_free_space_info(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
