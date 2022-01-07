; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_update_block_group_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_update_block_group_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BTRFS_BLOCK_GROUP_RAID0 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID56_MASK = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1_MASK = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DUP = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @update_block_group_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_block_group_flags(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @get_restripe_target(%struct.btrfs_fs_info* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @extended_to_chunk(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %23 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID56_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %57

31:                                               ; preds = %16
  %32 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1_MASK, align 4
  %48 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %3, align 4
  br label %83

56:                                               ; preds = %45
  br label %81

57:                                               ; preds = %16
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %57
  %65 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %76, %62, %52, %43, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @get_restripe_target(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @extended_to_chunk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
