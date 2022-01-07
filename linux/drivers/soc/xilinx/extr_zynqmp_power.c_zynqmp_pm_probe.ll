; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_zynqmp_power.c_zynqmp_pm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_zynqmp_power.c_zynqmp_pm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i64*)*, i32 (...)* }
%struct.TYPE_12__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@eemi_ops = common dso_local global %struct.TYPE_10__* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@ZYNQMP_PM_VERSION = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@zynqmp_pm_isr = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"devm_request_threaded_irq '%d' failed with %d\0A\00", align 1
@dev_attr_suspend_mode = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to create sysfs interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_pm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call %struct.TYPE_10__* (...) @zynqmp_pm_get_eemi_ops()
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** @eemi_ops, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eemi_ops, align 8
  %9 = call i64 @IS_ERR(%struct.TYPE_10__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eemi_ops, align 8
  %13 = call i32 @PTR_ERR(%struct.TYPE_10__* %12)
  store i32 %13, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eemi_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32 (i64*)*, i32 (i64*)** %16, align 8
  %18 = icmp ne i32 (i64*)* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eemi_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = icmp ne i32 (...)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eemi_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32 (...)*, i32 (...)** %29, align 8
  %31 = call i32 (...) %30()
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @eemi_ops, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32 (i64*)*, i32 (i64*)** %33, align 8
  %35 = call i32 %34(i64* %6)
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @ZYNQMP_PM_VERSION, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %86

42:                                               ; preds = %27
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = call i32 @platform_get_irq(%struct.platform_device* %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %86

50:                                               ; preds = %42
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @zynqmp_pm_isr, align 4
  %55 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %56 = load i32, i32* @IRQF_ONESHOT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_name(%struct.TYPE_11__* %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %52, i32 %53, i32* null, i32 %54, i32 %57, i32 %60, %struct.TYPE_11__* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %50
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %86

73:                                               ; preds = %50
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = call i32 @sysfs_create_file(i32* %76, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_attr_suspend_mode, i32 0, i32 0))
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %80, %66, %47, %39, %24, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_10__* @zynqmp_pm_get_eemi_ops(...) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
