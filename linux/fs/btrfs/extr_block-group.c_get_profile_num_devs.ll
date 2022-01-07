; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_get_profile_num_devs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_get_profile_num_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.btrfs_fs_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@btrfs_raid_array = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_fs_info*, i64)* @get_profile_num_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_profile_num_devs(%struct.btrfs_fs_info* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @btrfs_raid_array, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @btrfs_bg_flags_to_raid_index(i64 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %5, align 8
  ret i64 %21
}

declare dso_local i64 @btrfs_bg_flags_to_raid_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
