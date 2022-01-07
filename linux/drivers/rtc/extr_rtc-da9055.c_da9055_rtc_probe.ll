; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.da9055_rtc = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.da9055_pdata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9055_REG_ALARM_Y = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_EN = common dso_local global i32 0, align 4
@da9055_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ALM\00", align 1
@da9055_rtc_alm_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"irq registration failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9055_rtc*, align 8
  %5 = alloca %struct.da9055_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.da9055_pdata* null, %struct.da9055_pdata** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da9055_rtc* @devm_kzalloc(%struct.TYPE_8__* %9, i32 24, i32 %10)
  store %struct.da9055_rtc* %11, %struct.da9055_rtc** %4, align 8
  %12 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %13 = icmp ne %struct.da9055_rtc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %112

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_9__* @dev_get_drvdata(i32 %21)
  %23 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %24 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %23, i32 0, i32 1
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %24, align 8
  %25 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %26 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.da9055_pdata* @dev_get_platdata(i32 %29)
  store %struct.da9055_pdata* %30, %struct.da9055_pdata** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.da9055_rtc* %32)
  %34 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %35 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load %struct.da9055_pdata*, %struct.da9055_pdata** %5, align 8
  %38 = call i32 @da9055_rtc_device_init(%struct.TYPE_9__* %36, %struct.da9055_pdata* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %17
  br label %110

42:                                               ; preds = %17
  %43 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %44 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* @DA9055_REG_ALARM_Y, align 4
  %47 = call i32 @da9055_reg_read(%struct.TYPE_9__* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %110

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @DA9055_RTC_ALM_EN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %58 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @device_init_wakeup(%struct.TYPE_8__* %61, i32 1)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @THIS_MODULE, align 4
  %69 = call i32 @devm_rtc_device_register(%struct.TYPE_8__* %64, i32 %67, i32* @da9055_rtc_ops, i32 %68)
  %70 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %71 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %73 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %59
  %78 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %79 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %6, align 4
  br label %110

82:                                               ; preds = %59
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = call i32 @platform_get_irq_byname(%struct.platform_device* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %112

89:                                               ; preds = %82
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @da9055_rtc_alm_irq, align 4
  %94 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %95 = load i32, i32* @IRQF_ONESHOT, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %98 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %91, i32 %92, i32* null, i32 %93, i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.da9055_rtc* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = load %struct.da9055_rtc*, %struct.da9055_rtc** %4, align 8
  %103 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %101, %89
  br label %110

110:                                              ; preds = %109, %77, %50, %41
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %87, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.da9055_rtc* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9055_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9055_rtc*) #1

declare dso_local i32 @da9055_rtc_device_init(%struct.TYPE_9__*, %struct.da9055_pdata*) #1

declare dso_local i32 @da9055_reg_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32, i32, i8*, %struct.da9055_rtc*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
