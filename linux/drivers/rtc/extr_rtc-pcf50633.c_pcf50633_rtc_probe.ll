; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf50633.c_pcf50633_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pcf50633_rtc = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pcf50633-rtc\00", align 1
@pcf50633_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@PCF50633_IRQ_ALARM = common dso_local global i32 0, align 4
@pcf50633_rtc_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pcf50633_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pcf50633_rtc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pcf50633_rtc* @devm_kzalloc(%struct.TYPE_3__* %6, i32 8, i32 %7)
  store %struct.pcf50633_rtc* %8, %struct.pcf50633_rtc** %4, align 8
  %9 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %10 = icmp ne %struct.pcf50633_rtc* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_to_pcf50633(i32 %18)
  %20 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %21 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.pcf50633_rtc* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = call i32 @devm_rtc_device_register(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @pcf50633_rtc_ops, i32 %27)
  %29 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %30 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %32 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %14
  %37 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %38 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %49

41:                                               ; preds = %14
  %42 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %43 = getelementptr inbounds %struct.pcf50633_rtc, %struct.pcf50633_rtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PCF50633_IRQ_ALARM, align 4
  %46 = load i32, i32* @pcf50633_rtc_irq, align 4
  %47 = load %struct.pcf50633_rtc*, %struct.pcf50633_rtc** %4, align 8
  %48 = call i32 @pcf50633_register_irq(i32 %44, i32 %45, i32 %46, %struct.pcf50633_rtc* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %36, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.pcf50633_rtc* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_to_pcf50633(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pcf50633_rtc*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_3__*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pcf50633_register_irq(i32, i32, i32, %struct.pcf50633_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
