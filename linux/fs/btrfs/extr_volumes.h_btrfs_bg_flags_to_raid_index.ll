; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.h_btrfs_bg_flags_to_raid_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_volumes.h_btrfs_bg_flags_to_raid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@BTRFS_RAID_RAID10 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@BTRFS_RAID_RAID1 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DUP = common dso_local global i32 0, align 4
@BTRFS_RAID_DUP = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID0 = common dso_local global i32 0, align 4
@BTRFS_RAID_RAID0 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID5 = common dso_local global i32 0, align 4
@BTRFS_RAID_RAID5 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID6 = common dso_local global i32 0, align 4
@BTRFS_RAID_RAID6 = common dso_local global i32 0, align 4
@BTRFS_RAID_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @btrfs_bg_flags_to_raid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_bg_flags_to_raid_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @BTRFS_RAID_RAID10, align 4
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @BTRFS_RAID_RAID1, align 4
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @BTRFS_RAID_DUP, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @BTRFS_RAID_RAID0, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID5, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @BTRFS_RAID_RAID5, align 4
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID6, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @BTRFS_RAID_RAID6, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @BTRFS_RAID_SINGLE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %43, %36, %29, %22, %15, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
