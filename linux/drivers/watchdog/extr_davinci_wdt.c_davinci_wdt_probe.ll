; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, %struct.device*, i32, i32*, i32* }
%struct.davinci_wdt_device = type { i32, %struct.watchdog_device, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get clock node\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@davinci_clk_disable_unprepare = common dso_local global i32 0, align 4
@davinci_wdt_info = common dso_local global i32 0, align 4
@davinci_wdt_ops = common dso_local global i32 0, align 4
@MAX_HEARTBEAT = common dso_local global i32 0, align 4
@DEFAULT_HEARTBEAT = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"heartbeat %d sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca %struct.davinci_wdt_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.davinci_wdt_device* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.davinci_wdt_device* %12, %struct.davinci_wdt_device** %7, align 8
  %13 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %14 = icmp ne %struct.davinci_wdt_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %121

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @devm_clk_get(%struct.device* %19, i32* null)
  %21 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %22 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %24 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %30 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  %33 = load i32, i32* @EPROBE_DEFER, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %41 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %18
  %45 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %46 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_prepare_enable(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %121

55:                                               ; preds = %44
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* @davinci_clk_disable_unprepare, align 4
  %58 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %59 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @devm_add_action_or_reset(%struct.device* %56, i32 %57, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %121

66:                                               ; preds = %55
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %69 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.davinci_wdt_device* %68)
  %70 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %71 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %70, i32 0, i32 1
  store %struct.watchdog_device* %71, %struct.watchdog_device** %6, align 8
  %72 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %73 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %72, i32 0, i32 5
  store i32* @davinci_wdt_info, i32** %73, align 8
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %75 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %74, i32 0, i32 4
  store i32* @davinci_wdt_ops, i32** %75, align 8
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %77 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* @MAX_HEARTBEAT, align 4
  %79 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %80 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @DEFAULT_HEARTBEAT, align 4
  %82 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %83 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %86 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %85, i32 0, i32 2
  store %struct.device* %84, %struct.device** %86, align 8
  %87 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %88 = load i32, i32* @heartbeat, align 4
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %87, i32 %88, %struct.device* %89)
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %93 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_info(%struct.device* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %97 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %98 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %96, %struct.davinci_wdt_device* %97)
  %99 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %100 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %99, i32 1)
  %101 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %102 = call i32 @watchdog_set_restart_priority(%struct.watchdog_device* %101, i32 128)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %103, i32 0)
  %105 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %106 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %108 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @IS_ERR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %66
  %113 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %114 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PTR_ERR(i32 %115)
  store i32 %116, i32* %2, align 4
  br label %121

117:                                              ; preds = %66
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %120 = call i32 @devm_watchdog_register_device(%struct.device* %118, %struct.watchdog_device* %119)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %112, %64, %51, %39, %15
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.davinci_wdt_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.davinci_wdt_device*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.davinci_wdt_device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.watchdog_device*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
