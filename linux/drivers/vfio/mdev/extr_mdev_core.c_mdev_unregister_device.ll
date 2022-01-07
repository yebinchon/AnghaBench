; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_core.c_mdev_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_core.c_mdev_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mdev_parent = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"MDEV_STATE=unregistered\00", align 1
@parent_list_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"MDEV: Unregistering\0A\00", align 1
@mdev_bus_compat_class = common dso_local global i32 0, align 4
@mdev_device_remove_cb = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdev_unregister_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mdev_parent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8*], align 16
  store %struct.device* %0, %struct.device** %2, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 1
  store i8* null, i8** %8, align 8
  %9 = call i32 @mutex_lock(i32* @parent_list_lock)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.mdev_parent* @__find_parent_device(%struct.device* %10)
  store %struct.mdev_parent* %11, %struct.mdev_parent** %3, align 8
  %12 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %13 = icmp ne %struct.mdev_parent* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @mutex_unlock(i32* @parent_list_lock)
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @dev_info(%struct.device* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %20 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %19, i32 0, i32 1
  %21 = call i32 @list_del(i32* %20)
  %22 = call i32 @mutex_unlock(i32* @parent_list_lock)
  %23 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %24 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %23, i32 0, i32 0
  %25 = call i32 @down_write(i32* %24)
  %26 = load i32, i32* @mdev_bus_compat_class, align 4
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = call i32 @class_compat_remove_link(i32 %26, %struct.device* %27, i32* null)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = load i32, i32* @mdev_device_remove_cb, align 4
  %31 = call i32 @device_for_each_child(%struct.device* %29, i32* null, i32 %30)
  %32 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %33 = call i32 @parent_remove_sysfs_files(%struct.mdev_parent* %32)
  %34 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %35 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %34, i32 0, i32 0
  %36 = call i32 @up_write(i32* %35)
  %37 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %38 = call i32 @mdev_put_parent(%struct.mdev_parent* %37)
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i32, i32* @KOBJ_CHANGE, align 4
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %43 = call i32 @kobject_uevent_env(i32* %40, i32 %41, i8** %42)
  br label %44

44:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mdev_parent* @__find_parent_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @class_compat_remove_link(i32, %struct.device*, i32*) #1

declare dso_local i32 @device_for_each_child(%struct.device*, i32*, i32) #1

declare dso_local i32 @parent_remove_sysfs_files(%struct.mdev_parent*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mdev_put_parent(%struct.mdev_parent*) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
