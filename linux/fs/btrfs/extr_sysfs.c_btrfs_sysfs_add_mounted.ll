; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_mounted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.kobject*, %struct.btrfs_fs_devices* }
%struct.kobject = type { i32 }
%struct.btrfs_fs_devices = type { %struct.kobject }

@btrfs_attrs = common dso_local global i32 0, align 4
@btrfs_feature_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"allocation\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@allocation_attrs = common dso_local global i32 0, align 4
@btrfs_debug_feature_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sysfs_add_mounted(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_devices*, align 8
  %6 = alloca %struct.kobject*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 1
  %9 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %8, align 8
  store %struct.btrfs_fs_devices* %9, %struct.btrfs_fs_devices** %5, align 8
  %10 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %10, i32 0, i32 0
  store %struct.kobject* %11, %struct.kobject** %6, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %13 = call i32 @btrfs_set_fs_info_ptr(%struct.btrfs_fs_info* %12)
  %14 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %15 = call i32 @btrfs_sysfs_add_device_link(%struct.btrfs_fs_devices* %14, i32* null)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %68

20:                                               ; preds = %1
  %21 = load %struct.kobject*, %struct.kobject** %6, align 8
  %22 = load i32, i32* @btrfs_attrs, align 4
  %23 = call i32 @sysfs_create_files(%struct.kobject* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %28 = call i32 @btrfs_sysfs_rm_device_link(%struct.btrfs_fs_devices* %27, i32* null)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %68

30:                                               ; preds = %20
  %31 = load %struct.kobject*, %struct.kobject** %6, align 8
  %32 = call i32 @sysfs_create_group(%struct.kobject* %31, i32* @btrfs_feature_attr_group)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %64

36:                                               ; preds = %30
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = call i32 @addrm_unknown_feature_attrs(%struct.btrfs_fs_info* %37, i32 1)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %64

42:                                               ; preds = %36
  %43 = load %struct.kobject*, %struct.kobject** %6, align 8
  %44 = call %struct.kobject* @kobject_create_and_add(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.kobject* %43)
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 0
  store %struct.kobject* %44, %struct.kobject** %46, align 8
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  %49 = load %struct.kobject*, %struct.kobject** %48, align 8
  %50 = icmp ne %struct.kobject* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %42
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 0
  %57 = load %struct.kobject*, %struct.kobject** %56, align 8
  %58 = load i32, i32* @allocation_attrs, align 4
  %59 = call i32 @sysfs_create_files(%struct.kobject* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %68

64:                                               ; preds = %62, %51, %41, %35
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %66 = call i32 @btrfs_sysfs_remove_mounted(%struct.btrfs_fs_info* %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %63, %26, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @btrfs_set_fs_info_ptr(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_sysfs_add_device_link(%struct.btrfs_fs_devices*, i32*) #1

declare dso_local i32 @sysfs_create_files(%struct.kobject*, i32) #1

declare dso_local i32 @btrfs_sysfs_rm_device_link(%struct.btrfs_fs_devices*, i32*) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, i32*) #1

declare dso_local i32 @addrm_unknown_feature_attrs(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.kobject* @kobject_create_and_add(i8*, %struct.kobject*) #1

declare dso_local i32 @btrfs_sysfs_remove_mounted(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
