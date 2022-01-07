; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_core.c_mdev_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_core.c_mdev_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mdev_parent_ops = type { i32, i32, i32 }
%struct.mdev_parent = type { i32, %struct.mdev_parent_ops*, %struct.device*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"MDEV_STATE=registered\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@parent_list_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mdev_bus_compat_class = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"mdev_bus\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to create compatibility class link\0A\00", align 1
@parent_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"MDEV: Registered\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdev_register_device(%struct.device* %0, %struct.mdev_parent_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mdev_parent_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdev_parent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8*], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mdev_parent_ops* %1, %struct.mdev_parent_ops** %5, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = load i8*, i8** %8, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* null, i8** %12, align 8
  %13 = load %struct.mdev_parent_ops*, %struct.mdev_parent_ops** %5, align 8
  %14 = icmp ne %struct.mdev_parent_ops* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.mdev_parent_ops*, %struct.mdev_parent_ops** %5, align 8
  %17 = getelementptr inbounds %struct.mdev_parent_ops, %struct.mdev_parent_ops* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.mdev_parent_ops*, %struct.mdev_parent_ops** %5, align 8
  %22 = getelementptr inbounds %struct.mdev_parent_ops, %struct.mdev_parent_ops* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.mdev_parent_ops*, %struct.mdev_parent_ops** %5, align 8
  %27 = getelementptr inbounds %struct.mdev_parent_ops, %struct.mdev_parent_ops* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %20, %15, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %120

33:                                               ; preds = %25
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call %struct.device* @get_device(%struct.device* %34)
  store %struct.device* %35, %struct.device** %4, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = icmp ne %struct.device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %120

41:                                               ; preds = %33
  %42 = call i32 @mutex_lock(i32* @parent_list_lock)
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call %struct.mdev_parent* @__find_parent_device(%struct.device* %43)
  store %struct.mdev_parent* %44, %struct.mdev_parent** %7, align 8
  %45 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %46 = icmp ne %struct.mdev_parent* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  store %struct.mdev_parent* null, %struct.mdev_parent** %7, align 8
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %108

50:                                               ; preds = %41
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.mdev_parent* @kzalloc(i32 32, i32 %51)
  store %struct.mdev_parent* %52, %struct.mdev_parent** %7, align 8
  %53 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %54 = icmp ne %struct.mdev_parent* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %108

58:                                               ; preds = %50
  %59 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %60 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %59, i32 0, i32 4
  %61 = call i32 @kref_init(i32* %60)
  %62 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %63 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %62, i32 0, i32 3
  %64 = call i32 @init_rwsem(i32* %63)
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %67 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %66, i32 0, i32 2
  store %struct.device* %65, %struct.device** %67, align 8
  %68 = load %struct.mdev_parent_ops*, %struct.mdev_parent_ops** %5, align 8
  %69 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %70 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %69, i32 0, i32 1
  store %struct.mdev_parent_ops* %68, %struct.mdev_parent_ops** %70, align 8
  %71 = load i64, i64* @mdev_bus_compat_class, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %58
  %74 = call i64 @class_compat_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %74, i64* @mdev_bus_compat_class, align 8
  %75 = load i64, i64* @mdev_bus_compat_class, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %108

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %58
  %82 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %83 = call i32 @parent_create_sysfs_files(%struct.mdev_parent* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %108

87:                                               ; preds = %81
  %88 = load i64, i64* @mdev_bus_compat_class, align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @class_compat_create_link(i64 %88, %struct.device* %89, i32* null)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_warn(%struct.device* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %87
  %97 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %98 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %97, i32 0, i32 0
  %99 = call i32 @list_add(i32* %98, i32* @parent_list)
  %100 = call i32 @mutex_unlock(i32* @parent_list_lock)
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_info(%struct.device* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  %105 = load i32, i32* @KOBJ_CHANGE, align 4
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %107 = call i32 @kobject_uevent_env(i32* %104, i32 %105, i8** %106)
  store i32 0, i32* %3, align 4
  br label %120

108:                                              ; preds = %86, %77, %55, %47
  %109 = call i32 @mutex_unlock(i32* @parent_list_lock)
  %110 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %111 = icmp ne %struct.mdev_parent* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %114 = call i32 @mdev_put_parent(%struct.mdev_parent* %113)
  br label %118

115:                                              ; preds = %108
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @put_device(%struct.device* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %96, %38, %30
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.device* @get_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mdev_parent* @__find_parent_device(%struct.device*) #1

declare dso_local %struct.mdev_parent* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i64 @class_compat_register(i8*) #1

declare dso_local i32 @parent_create_sysfs_files(%struct.mdev_parent*) #1

declare dso_local i32 @class_compat_create_link(i64, %struct.device*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local i32 @mdev_put_parent(%struct.mdev_parent*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
