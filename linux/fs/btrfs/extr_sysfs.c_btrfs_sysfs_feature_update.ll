; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_feature_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_feature_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_fs_devices* }
%struct.btrfs_fs_devices = type { %struct.kobject }
%struct.kobject = type { i32 }

@supported_feature_masks = common dso_local global i32* null, align 8
@btrfs_feature_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_sysfs_feature_update(%struct.btrfs_fs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_devices*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %12 = icmp ne %struct.btrfs_fs_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_features(%struct.btrfs_fs_info* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** @supported_feature_masks, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %27, align 8
  store %struct.btrfs_fs_devices* %28, %struct.btrfs_fs_devices** %7, align 8
  %29 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %29, i32 0, i32 0
  store %struct.kobject* %30, %struct.kobject** %8, align 8
  %31 = load %struct.kobject*, %struct.kobject** %8, align 8
  %32 = getelementptr inbounds %struct.kobject, %struct.kobject* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %14
  br label %41

36:                                               ; preds = %14
  %37 = load %struct.kobject*, %struct.kobject** %8, align 8
  %38 = call i32 @sysfs_remove_group(%struct.kobject* %37, i32* @btrfs_feature_attr_group)
  %39 = load %struct.kobject*, %struct.kobject** %8, align 8
  %40 = call i32 @sysfs_create_group(%struct.kobject* %39, i32* @btrfs_feature_attr_group)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %35, %13
  ret void
}

declare dso_local i32 @get_features(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sysfs_remove_group(%struct.kobject*, i32*) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
