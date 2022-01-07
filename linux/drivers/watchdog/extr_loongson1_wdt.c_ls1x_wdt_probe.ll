; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_loongson1_wdt.c_ls1x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_loongson1_wdt.c_ls1x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ls1x_wdt_drvdata = type { i64, %struct.watchdog_device, i32, i32 }
%struct.watchdog_device = type { i32, i64, %struct.device*, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clk enable failed\0A\00", align 1
@ls1x_clk_disable_unprepare = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ls1x_wdt_info = common dso_local global i32 0, align 4
@ls1x_wdt_ops = common dso_local global i32 0, align 4
@DEFAULT_HEARTBEAT = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Loongson1 Watchdog driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ls1x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ls1x_wdt_drvdata*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ls1x_wdt_drvdata* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.ls1x_wdt_drvdata* %13, %struct.ls1x_wdt_drvdata** %5, align 8
  %14 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %15 = icmp ne %struct.ls1x_wdt_drvdata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %132

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %23 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %25 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %31 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %132

34:                                               ; preds = %19
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @devm_clk_get(%struct.device* %35, i32 %38)
  %40 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %43 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %49 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %132

52:                                               ; preds = %34
  %53 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %54 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clk_prepare_enable(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %132

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* @ls1x_clk_disable_unprepare, align 4
  %66 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %67 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @devm_add_action_or_reset(%struct.device* %64, i32 %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %132

74:                                               ; preds = %63
  %75 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %76 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @clk_get_rate(i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %132

84:                                               ; preds = %74
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %87 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %89 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %88, i32 0, i32 1
  store %struct.watchdog_device* %89, %struct.watchdog_device** %6, align 8
  %90 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %91 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %90, i32 0, i32 5
  store i32* @ls1x_wdt_info, i32** %91, align 8
  %92 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %93 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %92, i32 0, i32 4
  store i32* @ls1x_wdt_ops, i32** %93, align 8
  %94 = load i32, i32* @DEFAULT_HEARTBEAT, align 4
  %95 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %96 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %98 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i64, i64* @U32_MAX, align 8
  %100 = load i64, i64* %7, align 8
  %101 = udiv i64 %99, %100
  %102 = mul i64 %101, 1000
  %103 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %104 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %107 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %106, i32 0, i32 2
  store %struct.device* %105, %struct.device** %107, align 8
  %108 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %109 = load i32, i32* @heartbeat, align 4
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %108, i32 %109, %struct.device* %110)
  %112 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %113 = load i32, i32* @nowayout, align 4
  %114 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %112, i32 %113)
  %115 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %116 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %117 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %115, %struct.ls1x_wdt_drvdata* %116)
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %120 = getelementptr inbounds %struct.ls1x_wdt_drvdata, %struct.ls1x_wdt_drvdata* %119, i32 0, i32 1
  %121 = call i32 @devm_watchdog_register_device(%struct.device* %118, %struct.watchdog_device* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %84
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %132

126:                                              ; preds = %84
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.ls1x_wdt_drvdata*, %struct.ls1x_wdt_drvdata** %5, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.ls1x_wdt_drvdata* %128)
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 @dev_info(%struct.device* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %126, %124, %81, %72, %59, %47, %29, %16
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.ls1x_wdt_drvdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.ls1x_wdt_drvdata*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ls1x_wdt_drvdata*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
