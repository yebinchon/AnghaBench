; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_10__*, i32, %struct.platform_device*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.wlcore_platdev_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"request_firmware_nowait failed for %s: %d\00", align 1
@wlcore_pm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_probe(%struct.wl1271* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.wlcore_platdev_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.wlcore_platdev_data* @dev_get_platdata(%struct.TYPE_10__* %10)
  store %struct.wlcore_platdev_data* %11, %struct.wlcore_platdev_data** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %23 = icmp ne %struct.wlcore_platdev_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %16, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 2
  store %struct.platform_device* %32, %struct.platform_device** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.wl1271* %36)
  %38 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %39 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %27
  %43 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %44 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %42
  %50 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %51 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %62 = call i32 @request_firmware_nowait(i32 %55, i32 %56, i8* %57, %struct.TYPE_10__* %59, i32 %60, %struct.wl1271* %61, i32 (i32*, %struct.wl1271*)* @wlcore_nvs_cb)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %49
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @wl1271_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 1
  %71 = call i32 @complete_all(i32* %70)
  br label %72

72:                                               ; preds = %65, %49
  br label %76

73:                                               ; preds = %42, %27
  %74 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %75 = call i32 @wlcore_nvs_cb(i32* null, %struct.wl1271* %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32* @wlcore_pm_ops, i32** %82, align 8
  %83 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_10__* %85, i32 50)
  %87 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_10__* %89)
  %91 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %76, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.wlcore_platdev_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wl1271*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, %struct.TYPE_10__*, i32, %struct.wl1271*, i32 (i32*, %struct.wl1271*)*) #1

declare dso_local i32 @wlcore_nvs_cb(i32*, %struct.wl1271*) #1

declare dso_local i32 @wl1271_error(i8*, i8*, i32) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
