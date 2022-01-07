; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_reduce_alloc_profile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_reduce_alloc_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.btrfs_fs_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BTRFS_EXTENDED_PROFILE_MASK = common dso_local global i32 0, align 4
@BTRFS_NR_RAID_TYPES = common dso_local global i32 0, align 4
@btrfs_raid_array = common dso_local global %struct.TYPE_4__* null, align 8
@BTRFS_BLOCK_GROUP_RAID6 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID5 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID0 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_PROFILE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @btrfs_reduce_alloc_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_reduce_alloc_profile(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @get_restripe_target(%struct.btrfs_fs_info* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @BTRFS_EXTENDED_PROFILE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @extended_to_chunk(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %118

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %64, %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BTRFS_NR_RAID_TYPES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @btrfs_raid_array, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %46, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @btrfs_raid_array, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %54, %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID6, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID6, align 4
  store i32 %76, i32* %9, align 4
  br label %109

77:                                               ; preds = %67
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID5, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID5, align 4
  store i32 %83, i32* %9, align 4
  br label %108

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  store i32 %90, i32* %9, align 4
  br label %107

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  store i32 %97, i32* %9, align 4
  br label %106

98:                                               ; preds = %91
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %103, %98
  br label %106

106:                                              ; preds = %105, %96
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %75
  %110 = load i32, i32* @BTRFS_BLOCK_GROUP_PROFILE_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @extended_to_chunk(i32 %116)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %109, %30
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_restripe_target(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @extended_to_chunk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
