; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_omap_wdt.c_omap_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_omap_wdt.c_omap_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_wd_timer_platform_data = type { i32 (...)* }
%struct.omap_wdt_dev = type { i32, i32, i32*, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap_wdt_info = common dso_local global i32 0, align 4
@omap_wdt_ops = common dso_local global i32 0, align 4
@TIMER_MARGIN_MIN = common dso_local global i32 0, align 4
@TIMER_MARGIN_MAX = common dso_local global i32 0, align 4
@TIMER_MARGIN_DEFAULT = common dso_local global i32 0, align 4
@timer_margin = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@OMAP_MPU_WD_RST_SRC_ID_SHIFT = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@early_enable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"OMAP Watchdog Timer Rev 0x%02x: initial timeout %d sec\0A\00", align 1
@OMAP_WATCHDOG_REV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_wd_timer_platform_data*, align 8
  %5 = alloca %struct.omap_wdt_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.omap_wd_timer_platform_data* @dev_get_platdata(i32* %9)
  store %struct.omap_wd_timer_platform_data* %10, %struct.omap_wd_timer_platform_data** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.omap_wdt_dev* @devm_kzalloc(i32* %12, i32 72, i32 %13)
  store %struct.omap_wdt_dev* %14, %struct.omap_wdt_dev** %5, align 8
  %15 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %16 = icmp ne %struct.omap_wdt_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %156

20:                                               ; preds = %1
  %21 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %22 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %26 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %28 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %27, i32 0, i32 1
  store i32 4660, i32* %28, align 4
  %29 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %30 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %29, i32 0, i32 5
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %32, i32 0)
  %34 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %35 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %37 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @IS_ERR(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %20
  %42 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %43 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @PTR_ERR(i64 %44)
  store i32 %45, i32* %2, align 4
  br label %156

46:                                               ; preds = %20
  %47 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %48 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i32* @omap_wdt_info, i32** %49, align 8
  %50 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %51 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  store i32* @omap_wdt_ops, i32** %52, align 8
  %53 = load i32, i32* @TIMER_MARGIN_MIN, align 4
  %54 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %55 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @TIMER_MARGIN_MAX, align 4
  %58 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %59 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @TIMER_MARGIN_DEFAULT, align 4
  %62 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %63 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %68 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32* %66, i32** %69, align 8
  %70 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %71 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %70, i32 0, i32 3
  %72 = load i32, i32* @timer_margin, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @watchdog_init_timeout(%struct.TYPE_5__* %71, i32 %72, i32* %74)
  %76 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %77 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %76, i32 0, i32 3
  %78 = load i32, i32* @nowayout, align 4
  %79 = call i32 @watchdog_set_nowayout(%struct.TYPE_5__* %77, i32 %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.omap_wdt_dev* %81)
  %83 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %84 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @pm_runtime_enable(i32* %85)
  %87 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %88 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @pm_runtime_get_sync(i32* %89)
  %91 = load %struct.omap_wd_timer_platform_data*, %struct.omap_wd_timer_platform_data** %4, align 8
  %92 = icmp ne %struct.omap_wd_timer_platform_data* %91, null
  br i1 %92, label %93, label %114

93:                                               ; preds = %46
  %94 = load %struct.omap_wd_timer_platform_data*, %struct.omap_wd_timer_platform_data** %4, align 8
  %95 = getelementptr inbounds %struct.omap_wd_timer_platform_data, %struct.omap_wd_timer_platform_data* %94, i32 0, i32 0
  %96 = load i32 (...)*, i32 (...)** %95, align 8
  %97 = icmp ne i32 (...)* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = load %struct.omap_wd_timer_platform_data*, %struct.omap_wd_timer_platform_data** %4, align 8
  %100 = getelementptr inbounds %struct.omap_wd_timer_platform_data, %struct.omap_wd_timer_platform_data* %99, i32 0, i32 0
  %101 = load i32 (...)*, i32 (...)** %100, align 8
  %102 = call i32 (...) %101()
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @OMAP_MPU_WD_RST_SRC_ID_SHIFT, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load i32, i32* @WDIOF_CARDRESET, align 4
  %110 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %111 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %98
  br label %114

114:                                              ; preds = %113, %93, %46
  %115 = load i64, i64* @early_enable, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %119 = call i32 @omap_wdt_disable(%struct.omap_wdt_dev* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %122 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %121, i32 0, i32 3
  %123 = call i32 @watchdog_register_device(%struct.TYPE_5__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %128 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @pm_runtime_disable(i32* %129)
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %156

132:                                              ; preds = %120
  %133 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %134 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @OMAP_WATCHDOG_REV, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @readl_relaxed(i64 %137)
  %139 = and i32 %138, 255
  %140 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %141 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %143)
  %145 = load i64, i64* @early_enable, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %132
  %148 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %149 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %148, i32 0, i32 3
  %150 = call i32 @omap_wdt_start(%struct.TYPE_5__* %149)
  br label %151

151:                                              ; preds = %147, %132
  %152 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %5, align 8
  %153 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @pm_runtime_put(i32* %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %151, %126, %41, %17
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.omap_wd_timer_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.omap_wdt_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_wdt_dev*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @omap_wdt_disable(%struct.omap_wdt_dev*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @omap_wdt_start(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
