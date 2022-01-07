; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_digicolor_wdt.c_dc_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_digicolor_wdt.c_dc_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.dc_wdt = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@dc_wdt_wdd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dc_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dc_wdt*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.dc_wdt* @devm_kzalloc(%struct.device* %8, i32 12, i32 %9)
  store %struct.dc_wdt* %10, %struct.dc_wdt** %5, align 8
  %11 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %12 = icmp ne %struct.dc_wdt* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %20 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %22 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %28 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %16
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @devm_clk_get(%struct.device* %32, i32* null)
  %34 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %35 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %37 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %43 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %67

46:                                               ; preds = %31
  %47 = load i32, i32* @U32_MAX, align 4
  %48 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %49 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_get_rate(i32 %50)
  %52 = sdiv i32 %47, %51
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dc_wdt_wdd, i32 0, i32 0), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dc_wdt_wdd, i32 0, i32 0), align 8
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dc_wdt_wdd, i32 0, i32 1), align 4
  %54 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %54, %struct.device** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dc_wdt_wdd, i32 0, i32 2), align 8
  %55 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %56 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.dc_wdt*, %struct.dc_wdt** %5, align 8
  %59 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* @dc_wdt_wdd, %struct.dc_wdt* %58)
  %60 = call i32 @watchdog_set_restart_priority(%struct.TYPE_7__* @dc_wdt_wdd, i32 128)
  %61 = load i32, i32* @timeout, align 4
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @watchdog_init_timeout(%struct.TYPE_7__* @dc_wdt_wdd, i32 %61, %struct.device* %62)
  %64 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* @dc_wdt_wdd)
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @devm_watchdog_register_device(%struct.device* %65, %struct.TYPE_7__* @dc_wdt_wdd)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %46, %41, %26, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.dc_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.dc_wdt*) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_7__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
