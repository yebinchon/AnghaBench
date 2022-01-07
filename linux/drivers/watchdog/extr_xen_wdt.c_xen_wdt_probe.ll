; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_xen_wdt.c_xen_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_xen_wdt.c_xen_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_watchdog = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@__const.xen_wdt_probe.wd = private unnamed_addr constant %struct.sched_watchdog { i32 -1 }, align 4
@SCHEDOP_watchdog = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"watchdog not supported by hypervisor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected hypervisor error (%d)\0A\00", align 1
@xen_wdt_dev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"initialized (timeout=%ds, nowayout=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xen_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sched_watchdog, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = bitcast %struct.sched_watchdog* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.sched_watchdog* @__const.xen_wdt_probe.wd to i8*), i64 4, i1 false)
  %10 = load i32, i32* @SCHEDOP_watchdog, align 4
  %11 = call i32 @HYPERVISOR_sched_op(i32 %10, %struct.sched_watchdog* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %21
  %33 = load i32, i32* @timeout, align 4
  %34 = call i32 @watchdog_init_timeout(%struct.TYPE_7__* @xen_wdt_dev, i32 %33, i32* null)
  %35 = load i32, i32* @nowayout, align 4
  %36 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* @xen_wdt_dev, i32 %35)
  %37 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* @xen_wdt_dev)
  %38 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_7__* @xen_wdt_dev)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @devm_watchdog_register_device(%struct.device* %39, %struct.TYPE_7__* @xen_wdt_dev)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @xen_wdt_dev, i32 0, i32 0), align 4
  %48 = load i32, i32* @nowayout, align 4
  %49 = call i32 @dev_info(%struct.device* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %43, %26, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @HYPERVISOR_sched_op(i32, %struct.sched_watchdog*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_7__*, i32, i32*) #2

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #2

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_7__*) #2

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
