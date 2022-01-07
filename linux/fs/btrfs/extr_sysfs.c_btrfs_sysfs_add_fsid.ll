; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_fsid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_sysfs.c_btrfs_sysfs_add_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_devices = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kobject = type { i32 }

@btrfs_kset = common dso_local global i32 0, align 4
@btrfs_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sysfs_add_fsid(%struct.btrfs_fs_devices* %0, %struct.kobject* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_devices*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_devices* %0, %struct.btrfs_fs_devices** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  %7 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %7, i32 0, i32 2
  %9 = call i32 @init_completion(i32* %8)
  %10 = load i32, i32* @btrfs_kset, align 4
  %11 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %14, i32 0, i32 0
  %16 = load %struct.kobject*, %struct.kobject** %5, align 8
  %17 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kobject_init_and_add(%struct.TYPE_3__* %15, i32* @btrfs_ktype, %struct.kobject* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %24, i32 0, i32 0
  %26 = call i32 @kobject_put(%struct.TYPE_3__* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_3__*, i32*, %struct.kobject*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
