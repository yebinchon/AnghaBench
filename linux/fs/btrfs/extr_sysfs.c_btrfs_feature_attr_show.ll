; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_feature_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_feature_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_feature_attr = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @btrfs_feature_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_feature_attr_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_feature_attr*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = call %struct.btrfs_fs_info* @to_fs_info(%struct.kobject* %11)
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %8, align 8
  %13 = load %struct.kobj_attribute*, %struct.kobj_attribute** %5, align 8
  %14 = call %struct.btrfs_feature_attr* @to_btrfs_feature_attr(%struct.kobj_attribute* %13)
  store %struct.btrfs_feature_attr* %14, %struct.btrfs_feature_attr** %9, align 8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %16 = icmp ne %struct.btrfs_fs_info* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %19 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %9, align 8
  %20 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_features(%struct.btrfs_fs_info* %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %9, align 8
  %25 = getelementptr inbounds %struct.btrfs_feature_attr, %struct.btrfs_feature_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %17
  br label %34

31:                                               ; preds = %3
  %32 = load %struct.btrfs_feature_attr*, %struct.btrfs_feature_attr** %9, align 8
  %33 = call i32 @can_modify_feature(%struct.btrfs_feature_attr* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  ret i32 %38
}

declare dso_local %struct.btrfs_fs_info* @to_fs_info(%struct.kobject*) #1

declare dso_local %struct.btrfs_feature_attr* @to_btrfs_feature_attr(%struct.kobj_attribute*) #1

declare dso_local i32 @get_features(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @can_modify_feature(%struct.btrfs_feature_attr*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
