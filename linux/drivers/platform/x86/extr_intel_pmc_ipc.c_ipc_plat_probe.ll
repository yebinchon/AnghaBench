; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_plat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_plat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }

@ipcdev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@IPC_TRIGGER_MODE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to request resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create pmc devices\0A\00", align 1
@ioc = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"intel_pmc_ipc\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to request irq\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@intel_ipc_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to create sysfs group %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipc_plat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_plat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 8), align 8
  %7 = load i32, i32* @IPC_TRIGGER_MODE_IRQ, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 7), align 8
  %8 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 6))
  %9 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 5))
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call i64 @platform_get_irq(%struct.platform_device* %10, i32 0)
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 0), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 0), align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @ipc_plat_get_res(%struct.platform_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %17
  %28 = call i32 (...) @ipc_create_pmc_devices()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 0), align 8
  %40 = load i32, i32* @ioc, align 4
  %41 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %42 = call i64 @devm_request_irq(%struct.TYPE_8__* %38, i64 %39, i32 %40, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* @ipcdev)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %36
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @sysfs_create_group(i32* %53, i32* @intel_ipc_group)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %63

62:                                               ; preds = %50
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  br label %76

63:                                               ; preds = %57
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 0), align 8
  %67 = call i32 @devm_free_irq(%struct.TYPE_8__* %65, i64 %66, %struct.TYPE_7__* @ipcdev)
  br label %68

68:                                               ; preds = %63, %44
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 4), align 4
  %70 = call i32 @platform_device_unregister(i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 3), align 8
  %72 = call i32 @platform_device_unregister(i32 %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipcdev, i32 0, i32 2), align 4
  %74 = call i32 @platform_device_unregister(i32 %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %62, %31, %22, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ipc_plat_get_res(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @ipc_create_pmc_devices(...) #1

declare dso_local i64 @devm_request_irq(%struct.TYPE_8__*, i64, i32, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @devm_free_irq(%struct.TYPE_8__*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
