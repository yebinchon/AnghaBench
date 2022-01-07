; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_generic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_generic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tape_device = type { i32, %struct.ccw_device* }
%struct.ccw_dev_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CCWDEV_DO_PATHGROUP = common dso_local global i32 0, align 4
@CCWDEV_DO_MULTIPATH = common dso_local global i32 0, align 4
@tape_attr_group = common dso_local global i32 0, align 4
@__tape_do_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_generic_probe(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccw_dev_id, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = call %struct.tape_device* (...) @tape_alloc_device()
  store %struct.tape_device* %7, %struct.tape_device** %4, align 8
  %8 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.tape_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %16 = load i32, i32* @CCWDEV_DO_PATHGROUP, align 4
  %17 = load i32, i32* @CCWDEV_DO_MULTIPATH, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ccw_device_set_options(%struct.ccw_device* %15, i32 %18)
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @sysfs_create_group(i32* %22, i32* @tape_attr_group)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %28 = call i32 @tape_put_device(%struct.tape_device* %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %14
  %31 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %32 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %31, i32 0, i32 1
  %33 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %34 = call i32 @dev_set_drvdata(%struct.TYPE_2__* %32, %struct.tape_device* %33)
  %35 = load i32, i32* @__tape_do_irq, align 4
  %36 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %39 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %40 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %39, i32 0, i32 1
  store %struct.ccw_device* %38, %struct.ccw_device** %40, align 8
  %41 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %42 = call i32 @ccw_device_get_id(%struct.ccw_device* %41, %struct.ccw_dev_id* %6)
  %43 = call i32 @devid_to_int(%struct.ccw_dev_id* %6)
  %44 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %45 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %30, %26, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.tape_device* @tape_alloc_device(...) #1

declare dso_local i64 @IS_ERR(%struct.tape_device*) #1

declare dso_local i32 @ccw_device_set_options(%struct.ccw_device*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @tape_put_device(%struct.tape_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_2__*, %struct.tape_device*) #1

declare dso_local i32 @ccw_device_get_id(%struct.ccw_device*, %struct.ccw_dev_id*) #1

declare dso_local i32 @devid_to_int(%struct.ccw_dev_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
