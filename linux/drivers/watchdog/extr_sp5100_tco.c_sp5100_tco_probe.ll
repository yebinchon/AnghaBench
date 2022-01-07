; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_sp5100_tco_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_sp5100_tco_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, i32, i32*, i32*, %struct.device* }
%struct.sp5100_tco = type { %struct.watchdog_device, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sp5100_tco_pci = common dso_local global i32 0, align 4
@sp5100_tco_wdt_info = common dso_local global i32 0, align 4
@sp5100_tco_wdt_ops = common dso_local global i32 0, align 4
@WATCHDOG_HEARTBEAT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"initialized. heartbeat=%d sec (nowayout=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sp5100_tco_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp5100_tco_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.sp5100_tco*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sp5100_tco* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  store %struct.sp5100_tco* %12, %struct.sp5100_tco** %6, align 8
  %13 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %14 = icmp ne %struct.sp5100_tco* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load i32, i32* @sp5100_tco_pci, align 4
  %20 = call i32 @tco_reg_layout(i32 %19)
  %21 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %22 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %24 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %23, i32 0, i32 0
  store %struct.watchdog_device* %24, %struct.watchdog_device** %5, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %27 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %26, i32 0, i32 5
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %29 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 4
  store i32* @sp5100_tco_wdt_info, i32** %29, align 8
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 3
  store i32* @sp5100_tco_wdt_ops, i32** %31, align 8
  %32 = load i32, i32* @WATCHDOG_HEARTBEAT, align 4
  %33 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %34 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %36 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 1
  store i32 65535, i32* %38, align 4
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %40 = load i32, i32* @heartbeat, align 4
  %41 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %39, i32 %40, i32* null)
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %43 = load i32, i32* @nowayout, align 4
  %44 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %42, i32 %43)
  %45 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %46 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %45)
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %48 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %47)
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %50 = load %struct.sp5100_tco*, %struct.sp5100_tco** %6, align 8
  %51 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %49, %struct.sp5100_tco* %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %54 = call i32 @sp5100_tco_setupdevice(%struct.device* %52, %struct.watchdog_device* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %18
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %18
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %62 = call i32 @devm_watchdog_register_device(%struct.device* %60, %struct.watchdog_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %59
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %70 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @nowayout, align 4
  %73 = call i32 @dev_info(%struct.device* %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %65, %57, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.sp5100_tco* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @tco_reg_layout(i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.sp5100_tco*) #1

declare dso_local i32 @sp5100_tco_setupdevice(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
