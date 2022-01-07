; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lp8788 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lp8788_rtc = type { i32, i32, %struct.lp8788* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_ALARM_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lp8788_rtc\00", align 1
@lp8788_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can not register rtc device\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no rtc irq handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp8788_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp8788*, align 8
  %5 = alloca %struct.lp8788_rtc*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.lp8788* @dev_get_drvdata(i32 %10)
  store %struct.lp8788* %11, %struct.lp8788** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.lp8788_rtc* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.lp8788_rtc* %16, %struct.lp8788_rtc** %5, align 8
  %17 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %18 = icmp ne %struct.lp8788_rtc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %75

22:                                               ; preds = %1
  %23 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %24 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %25 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %24, i32 0, i32 2
  store %struct.lp8788* %23, %struct.lp8788** %25, align 8
  %26 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %27 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %32 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @DEFAULT_ALARM_SEL, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ %35, %30 ], [ %37, %36 ]
  %40 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %41 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.lp8788_rtc* %43)
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @device_init_wakeup(%struct.device* %45, i32 1)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @devm_rtc_device_register(%struct.device* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @lp8788_rtc_ops, i32 %48)
  %50 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %51 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %53 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %38
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %61 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %75

64:                                               ; preds = %38
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %5, align 8
  %67 = call i64 @lp8788_alarm_irq_register(%struct.platform_device* %65, %struct.lp8788_rtc* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.lp8788*, %struct.lp8788** %4, align 8
  %71 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %64
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %57, %19
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.lp8788* @dev_get_drvdata(i32) #1

declare dso_local %struct.lp8788_rtc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp8788_rtc*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.device*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @lp8788_alarm_irq_register(%struct.platform_device*, %struct.lp8788_rtc*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
