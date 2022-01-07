; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_cdev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_cdev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.isst_if_cmd_cb = type { i32 }

@misc_device_ret = common dso_local global i32 0, align 4
@ISST_IF_DEV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@punit_misc_dev_lock = common dso_local global i32 0, align 4
@misc_device_open = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@misc_usage_count = common dso_local global i32 0, align 4
@isst_if_char_driver = common dso_local global i32 0, align 4
@punit_callbacks = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_if_cdev_register(i32 %0, %struct.isst_if_cmd_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.isst_if_cmd_cb*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.isst_if_cmd_cb* %1, %struct.isst_if_cmd_cb** %5, align 8
  %7 = load i32, i32* @misc_device_ret, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @misc_device_ret, align 4
  store i32 %10, i32* %3, align 4
  br label %59

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ISST_IF_DEV_MAX, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %11
  %19 = call i32 @mutex_lock(i32* @punit_misc_dev_lock)
  %20 = load i64, i64* @misc_device_open, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 @mutex_unlock(i32* @punit_misc_dev_lock)
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load i32, i32* @misc_usage_count, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = call i32 @misc_register(i32* @isst_if_char_driver)
  store i32 %30, i32* @misc_device_ret, align 4
  %31 = load i32, i32* @misc_device_ret, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %56

34:                                               ; preds = %29
  %35 = call i32 (...) @isst_if_cpu_info_init()
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @misc_deregister(i32* @isst_if_char_driver)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* @misc_device_ret, align 4
  br label %56

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @punit_callbacks, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %5, align 8
  %48 = call i32 @memcpy(%struct.TYPE_3__* %46, %struct.isst_if_cmd_cb* %47, i32 4)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @punit_callbacks, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @misc_usage_count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @misc_usage_count, align 4
  br label %56

56:                                               ; preds = %42, %38, %33
  %57 = call i32 @mutex_unlock(i32* @punit_misc_dev_lock)
  %58 = load i32, i32* @misc_device_ret, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %22, %15, %9
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @isst_if_cpu_info_init(...) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.isst_if_cmd_cb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
