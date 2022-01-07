; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.rtc_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"has-tpo\00", align 1
@opal_get_tpo_time = common dso_local global i32 0, align 4
@opal_rtc_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@opal_set_tpo_time = common dso_local global i32 0, align 4
@opal_tpo_alarm_irq_enable = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @opal_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @of_property_read_bool(i64 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @of_property_read_bool(i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17, %10
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @device_set_wakeup_capable(%struct.TYPE_6__* %26, i32 1)
  %28 = load i32, i32* @opal_get_tpo_time, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @opal_rtc_ops, i32 0, i32 2), align 4
  %29 = load i32, i32* @opal_set_tpo_time, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @opal_rtc_ops, i32 0, i32 1), align 4
  %30 = load i32, i32* @opal_tpo_alarm_irq_enable, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @opal_rtc_ops, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %24, %17, %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @DRVNAME, align 4
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = call %struct.rtc_device* @devm_rtc_device_register(%struct.TYPE_6__* %33, i32 %34, %struct.TYPE_5__* @opal_rtc_ops, i32 %35)
  store %struct.rtc_device* %36, %struct.rtc_device** %4, align 8
  %37 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %38 = call i64 @IS_ERR(%struct.rtc_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %42 = call i32 @PTR_ERR(%struct.rtc_device* %41)
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %31
  %44 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @of_property_read_bool(i64, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(%struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
