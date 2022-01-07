; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imx-sc.c_imx_sc_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imx-sc.c_imx_sc_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.platform_device = type { i32 }

@rtc_ipc_handle = common dso_local global i32 0, align 4
@imx_sc_rtc = common dso_local global %struct.TYPE_6__* null, align 8
@imx_sc_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@imx_sc_rtc_alarm_sc_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_sc_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 @imx_scu_get_handle(i32* @rtc_ipc_handle)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @device_init_wakeup(i32* %12, i32 1)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %18 = call i64 @IS_ERR(%struct.TYPE_6__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %22 = call i32 @PTR_ERR(%struct.TYPE_6__* %21)
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %10
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32* @imx_sc_rtc_ops, i32** %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @U32_MAX, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @imx_sc_rtc, align 8
  %32 = call i32 @rtc_register_device(%struct.TYPE_6__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %23
  %38 = call i32 @imx_scu_irq_register_notifier(i32* @imx_sc_rtc_alarm_sc_notifier)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %20, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @imx_scu_get_handle(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @imx_scu_irq_register_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
