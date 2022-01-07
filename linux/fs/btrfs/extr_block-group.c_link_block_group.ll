; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_link_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_link_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, %struct.btrfs_space_info* }
%struct.btrfs_space_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_block_group_cache*)* @link_block_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_block_group(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_space_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %6 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %6, i32 0, i32 2
  %8 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %7, align 8
  store %struct.btrfs_space_info* %8, %struct.btrfs_space_info** %3, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @btrfs_bg_flags_to_raid_index(i32 %11)
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %26, i32 0, i32 0
  %28 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @list_add_tail(i32* %27, i32* %33)
  %35 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %35, i32 0, i32 0
  %37 = call i32 @up_write(i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %42 = call i32 @btrfs_sysfs_add_block_group_type(%struct.btrfs_block_group_cache* %41)
  br label %43

43:                                               ; preds = %40, %25
  ret void
}

declare dso_local i32 @btrfs_bg_flags_to_raid_index(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @btrfs_sysfs_add_block_group_type(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
