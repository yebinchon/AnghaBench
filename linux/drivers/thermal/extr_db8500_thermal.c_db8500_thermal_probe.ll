; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_db8500_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_db8500_thermal.c_db8500_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.db8500_thermal_zone = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"IRQ_HOTMON_LOW\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Get IRQ_HOTMON_LOW failed\0A\00", align 1
@prcmu_low_irq_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"dbx500_temp_low\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate temp low irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"IRQ_HOTMON_HIGH\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Get IRQ_HOTMON_HIGH failed\0A\00", align 1
@prcmu_high_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"dbx500_temp_high\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to allocate temp high irq\0A\00", align 1
@thdev_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"register thermal zone sensor failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"thermal zone sensor registered\0A\00", align 1
@THERMAL_TREND_STABLE = common dso_local global i32 0, align 4
@PRCMU_DEFAULT_LOW_TEMP = common dso_local global i32 0, align 4
@db8500_thermal_points = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @db8500_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db8500_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.db8500_thermal_zone*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.db8500_thermal_zone* null, %struct.db8500_thermal_zone** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.db8500_thermal_zone* @devm_kzalloc(%struct.device* %11, i32 4, i32 %12)
  store %struct.db8500_thermal_zone* %13, %struct.db8500_thermal_zone** %4, align 8
  %14 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %15 = icmp ne %struct.db8500_thermal_zone* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq_byname(%struct.platform_device* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %98

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @prcmu_low_irq_handler, align 4
  %32 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %33 = load i32, i32* @IRQF_ONESHOT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %36 = call i32 @devm_request_threaded_irq(%struct.device* %29, i32 %30, i32* null, i32 %31, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.db8500_thermal_zone* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %28
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq_byname(%struct.platform_device* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %98

52:                                               ; preds = %43
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @prcmu_high_irq_handler, align 4
  %56 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %57 = load i32, i32* @IRQF_ONESHOT, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %60 = call i32 @devm_request_threaded_irq(%struct.device* %53, i32 %54, i32* null, i32 %55, i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.db8500_thermal_zone* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %98

67:                                               ; preds = %52
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %70 = call i32 @devm_thermal_zone_of_sensor_register(%struct.device* %68, i32 0, %struct.db8500_thermal_zone* %69, i32* @thdev_ops)
  %71 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %72 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %74 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %81 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %82 = getelementptr inbounds %struct.db8500_thermal_zone, %struct.db8500_thermal_zone* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %98

85:                                               ; preds = %67
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @dev_info(%struct.device* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %88 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %89 = load i32, i32* @THERMAL_TREND_STABLE, align 4
  %90 = load i32, i32* @PRCMU_DEFAULT_LOW_TEMP, align 4
  %91 = load i32*, i32** @db8500_thermal_points, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone* %88, i32 0, i32 %89, i32 %90, i32 %93)
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.db8500_thermal_zone*, %struct.db8500_thermal_zone** %4, align 8
  %97 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.db8500_thermal_zone* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %85, %78, %63, %48, %39, %24, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.db8500_thermal_zone* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.db8500_thermal_zone*) #1

declare dso_local i32 @devm_thermal_zone_of_sensor_register(%struct.device*, i32, %struct.db8500_thermal_zone*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @db8500_thermal_update_config(%struct.db8500_thermal_zone*, i32, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.db8500_thermal_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
