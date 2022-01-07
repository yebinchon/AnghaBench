; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_remove_mounted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_remove_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@allocation_attrs = common dso_local global i32 0, align 4
@btrfs_feature_attr_group = common dso_local global i32 0, align 4
@btrfs_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_sysfs_remove_mounted(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %3 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %4 = call i32 @btrfs_reset_fs_info_ptr(%struct.btrfs_fs_info* %3)
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @allocation_attrs, align 4
  %14 = call i32 @sysfs_remove_files(i32* %12, i32 %13)
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kobject_del(i32* %17)
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kobject_put(i32* %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %25 = call i32 @addrm_unknown_feature_attrs(%struct.btrfs_fs_info* %24, i32 0)
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @sysfs_remove_group(i32* %29, i32* @btrfs_feature_attr_group)
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* @btrfs_attrs, align 4
  %36 = call i32 @sysfs_remove_files(i32* %34, i32 %35)
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @btrfs_sysfs_rm_device_link(%struct.TYPE_2__* %39, i32* null)
  ret void
}

declare dso_local i32 @btrfs_reset_fs_info_ptr(%struct.btrfs_fs_info*) #1

declare dso_local i32 @sysfs_remove_files(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @addrm_unknown_feature_attrs(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @btrfs_sysfs_rm_device_link(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
