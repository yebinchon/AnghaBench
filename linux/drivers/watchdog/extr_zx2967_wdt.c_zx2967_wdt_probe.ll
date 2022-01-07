; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_zx2967_wdt.c_zx2967_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_zx2967_wdt.c_zx2967_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.zx2967_wdt = type { %struct.TYPE_5__, %struct.reset_control*, %struct.reset_control* }
%struct.TYPE_5__ = type { i32, %struct.device*, i32, i32, i32*, i32* }
%struct.reset_control = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zx2967_wdt_ident = common dso_local global i32 0, align 4
@zx2967_wdt_ops = common dso_local global i32 0, align 4
@ZX2967_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@ZX2967_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@ZX2967_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to find watchdog clock source\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@zx2967_clk_disable_unprepare = common dso_local global i32 0, align 4
@ZX2967_WDT_CLK_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to get rstc\00", align 1
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"watchdog enabled (timeout=%d sec, nowayout=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx2967_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zx2967_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reset_control*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.zx2967_wdt* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.zx2967_wdt* %12, %struct.zx2967_wdt** %5, align 8
  %13 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %14 = icmp ne %struct.zx2967_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %149

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.zx2967_wdt* %20)
  %22 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %23 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i32* @zx2967_wdt_ident, i32** %24, align 8
  %25 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %26 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i32* @zx2967_wdt_ops, i32** %27, align 8
  %28 = load i32, i32* @ZX2967_WDT_DEFAULT_TIMEOUT, align 4
  %29 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %30 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @ZX2967_WDT_MAX_TIMEOUT, align 4
  %33 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %34 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @ZX2967_WDT_MIN_TIMEOUT, align 4
  %37 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %38 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %42 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store %struct.device* %40, %struct.device** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call %struct.reset_control* @devm_platform_ioremap_resource(%struct.platform_device* %44, i32 0)
  %46 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %47 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %46, i32 0, i32 2
  store %struct.reset_control* %45, %struct.reset_control** %47, align 8
  %48 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %49 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %48, i32 0, i32 2
  %50 = load %struct.reset_control*, %struct.reset_control** %49, align 8
  %51 = call i64 @IS_ERR(%struct.reset_control* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %18
  %54 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %55 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %54, i32 0, i32 2
  %56 = load %struct.reset_control*, %struct.reset_control** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.reset_control* %56)
  store i32 %57, i32* %2, align 4
  br label %149

58:                                               ; preds = %18
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @zx2967_wdt_reset_sysctrl(%struct.device* %59)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call %struct.reset_control* @devm_clk_get(%struct.device* %61, i32* null)
  %63 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %64 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %63, i32 0, i32 1
  store %struct.reset_control* %62, %struct.reset_control** %64, align 8
  %65 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %66 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %65, i32 0, i32 1
  %67 = load %struct.reset_control*, %struct.reset_control** %66, align 8
  %68 = call i64 @IS_ERR(%struct.reset_control* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %74 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %73, i32 0, i32 1
  %75 = load %struct.reset_control*, %struct.reset_control** %74, align 8
  %76 = call i32 @PTR_ERR(%struct.reset_control* %75)
  store i32 %76, i32* %2, align 4
  br label %149

77:                                               ; preds = %58
  %78 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %79 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %78, i32 0, i32 1
  %80 = load %struct.reset_control*, %struct.reset_control** %79, align 8
  %81 = call i32 @clk_prepare_enable(%struct.reset_control* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %149

88:                                               ; preds = %77
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* @zx2967_clk_disable_unprepare, align 4
  %91 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %92 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %91, i32 0, i32 1
  %93 = load %struct.reset_control*, %struct.reset_control** %92, align 8
  %94 = call i32 @devm_add_action_or_reset(%struct.device* %89, i32 %90, %struct.reset_control* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %149

99:                                               ; preds = %88
  %100 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %101 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %100, i32 0, i32 1
  %102 = load %struct.reset_control*, %struct.reset_control** %101, align 8
  %103 = load i32, i32* @ZX2967_WDT_CLK_FREQ, align 4
  %104 = call i32 @clk_set_rate(%struct.reset_control* %102, i32 %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device* %105, i32* null)
  store %struct.reset_control* %106, %struct.reset_control** %7, align 8
  %107 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %108 = call i64 @IS_ERR(%struct.reset_control* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %114 = call i32 @PTR_ERR(%struct.reset_control* %113)
  store i32 %114, i32* %2, align 4
  br label %149

115:                                              ; preds = %99
  %116 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %117 = call i32 @reset_control_assert(%struct.reset_control* %116)
  %118 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %119 = call i32 @reset_control_deassert(%struct.reset_control* %118)
  %120 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %121 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %120, i32 0, i32 0
  %122 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %123 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %121, %struct.zx2967_wdt* %122)
  %124 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %125 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %124, i32 0, i32 0
  %126 = load i32, i32* @ZX2967_WDT_DEFAULT_TIMEOUT, align 4
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @watchdog_init_timeout(%struct.TYPE_5__* %125, i32 %126, %struct.device* %127)
  %129 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %130 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %129, i32 0, i32 0
  %131 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %132 = call i32 @watchdog_set_nowayout(%struct.TYPE_5__* %130, i32 %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %135 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %134, i32 0, i32 0
  %136 = call i32 @devm_watchdog_register_device(%struct.device* %133, %struct.TYPE_5__* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %115
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %149

141:                                              ; preds = %115
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %144 = getelementptr inbounds %struct.zx2967_wdt, %struct.zx2967_wdt* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %148 = call i32 @dev_info(%struct.device* %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %141, %139, %110, %97, %84, %70, %53, %15
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.zx2967_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx2967_wdt*) #1

declare dso_local %struct.reset_control* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @zx2967_wdt_reset_sysctrl(%struct.device*) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.reset_control*) #1

declare dso_local i32 @clk_set_rate(%struct.reset_control*, i32) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.zx2967_wdt*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_5__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
