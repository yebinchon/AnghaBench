; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wlcore_platdev_data = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.wl1271 = type { i32, %struct.TYPE_12__*, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"PM runtime failed: %i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wlcore_platdev_data*, align 8
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.wlcore_platdev_data* @dev_get_platdata(i32* %8)
  store %struct.wlcore_platdev_data* %9, %struct.wlcore_platdev_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.wl1271* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.wl1271* %11, %struct.wl1271** %5, align 8
  %12 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = call i32 @pm_runtime_get_sync(%struct.TYPE_12__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_warn(%struct.TYPE_12__* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %4, align 8
  %32 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %4, align 8
  %37 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 5
  %45 = call i32 @wait_for_completion(i32* %44)
  br label %46

46:                                               ; preds = %42, %35, %24
  %47 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %102

52:                                               ; preds = %46
  %53 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = call i32 @dev_pm_clear_wake_irq(%struct.TYPE_12__* %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  %64 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call i32 @device_init_wakeup(%struct.TYPE_12__* %69, i32 0)
  %71 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @disable_irq_wake(i32 %78)
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %82 = call i32 @wl1271_unregister_hw(%struct.wl1271* %81)
  %83 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = call i32 @pm_runtime_put_sync(%struct.TYPE_12__* %85)
  %87 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_12__* %89)
  %91 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = call i32 @pm_runtime_disable(%struct.TYPE_12__* %93)
  %95 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %99 = call i32 @free_irq(i32 %97, %struct.wl1271* %98)
  %100 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %101 = call i32 @wlcore_free_hw(%struct.wl1271* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %80, %51
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.wlcore_platdev_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.wl1271* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(%struct.TYPE_12__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @wl1271_unregister_hw(%struct.wl1271*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_12__*) #1

declare dso_local i32 @free_irq(i32, %struct.wl1271*) #1

declare dso_local i32 @wlcore_free_hw(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
