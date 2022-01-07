; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_feature_visible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_feature_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_feature_attr = type { i32, i32 }

@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @btrfs_feature_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_feature_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_feature_attr*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = call %struct.btrfs_fs_info* @to_fs_info(%struct.kobject* %11)
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %7, align 8
  %13 = load %struct.attribute*, %struct.attribute** %5, align 8
  %14 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %17 = icmp ne %struct.btrfs_fs_info* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = load %struct.attribute*, %struct.attribute** %5, align 8
  %20 = call %struct.btrfs_feature_attr* @attr_to_btrfs_feature_attr(%struct.attribute* %19)
  store %struct.btrfs_feature_attr* %20, %struct.btrfs_feature_attr** %9, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %22 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %9, align 8
  %23 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_features(%struct.btrfs_fs_info* %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %9, align 8
  %27 = call i64 @can_modify_feature(%struct.btrfs_feature_attr* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @S_IWUSR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %42

33:                                               ; preds = %18
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %9, align 8
  %36 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %33
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local %struct.btrfs_fs_info* @to_fs_info(%struct.kobject*) #1

declare dso_local %struct.btrfs_feature_attr* @attr_to_btrfs_feature_attr(%struct.attribute*) #1

declare dso_local i32 @get_features(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @can_modify_feature(%struct.btrfs_feature_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
