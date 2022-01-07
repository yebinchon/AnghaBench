; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_meson_gxbb_wdt.c_meson_gxbb_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_meson_gxbb_wdt.c_meson_gxbb_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_gxbb_wdt = type { %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_clk_disable_unprepare = common dso_local global i32 0, align 4
@meson_gxbb_wdt_info = common dso_local global i32 0, align 4
@meson_gxbb_wdt_ops = common dso_local global i32 0, align 4
@GXBB_WDT_TCNT_SETUP_MASK = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@GXBB_WDT_CTRL_DIV_MASK = common dso_local global i32 0, align 4
@GXBB_WDT_CTRL_EE_RESET = common dso_local global i32 0, align 4
@GXBB_WDT_CTRL_CLK_EN = common dso_local global i32 0, align 4
@GXBB_WDT_CTRL_CLKDIV_EN = common dso_local global i32 0, align 4
@GXBB_WDT_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_gxbb_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gxbb_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.meson_gxbb_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.meson_gxbb_wdt* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.meson_gxbb_wdt* %11, %struct.meson_gxbb_wdt** %5, align 8
  %12 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %13 = icmp ne %struct.meson_gxbb_wdt* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %129

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %21 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %23 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @IS_ERR(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %29 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @PTR_ERR(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %129

32:                                               ; preds = %17
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i64 @devm_clk_get(%struct.device* %33, i32* null)
  %35 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %36 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %38 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @IS_ERR(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %44 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PTR_ERR(i64 %45)
  store i32 %46, i32* %2, align 4
  br label %129

47:                                               ; preds = %32
  %48 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %49 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_prepare_enable(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %129

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @meson_clk_disable_unprepare, align 4
  %59 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %60 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @devm_add_action_or_reset(%struct.device* %57, i32 %58, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %129

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %70 = call i32 @platform_set_drvdata(%struct.platform_device* %68, %struct.meson_gxbb_wdt* %69)
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %73 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  store %struct.device* %71, %struct.device** %74, align 8
  %75 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %76 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  store i32* @meson_gxbb_wdt_info, i32** %77, align 8
  %78 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %79 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32* @meson_gxbb_wdt_ops, i32** %80, align 8
  %81 = load i32, i32* @GXBB_WDT_TCNT_SETUP_MASK, align 4
  %82 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %83 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %86 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %89 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %90 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %93 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %92, i32 0, i32 0
  %94 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %95 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %93, %struct.meson_gxbb_wdt* %94)
  %96 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %97 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @clk_get_rate(i64 %98)
  %100 = sdiv i32 %99, 1000
  %101 = load i32, i32* @GXBB_WDT_CTRL_DIV_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @GXBB_WDT_CTRL_EE_RESET, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @GXBB_WDT_CTRL_CLK_EN, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @GXBB_WDT_CTRL_CLKDIV_EN, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %110 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GXBB_WDT_CTRL_REG, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  %115 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %116 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %115, i32 0, i32 0
  %117 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %118 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @meson_gxbb_wdt_set_timeout(%struct.TYPE_5__* %116, i32 %120)
  %122 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %123 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %122, i32 0, i32 0
  %124 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_5__* %123)
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load %struct.meson_gxbb_wdt*, %struct.meson_gxbb_wdt** %5, align 8
  %127 = getelementptr inbounds %struct.meson_gxbb_wdt, %struct.meson_gxbb_wdt* %126, i32 0, i32 0
  %128 = call i32 @devm_watchdog_register_device(%struct.device* %125, %struct.TYPE_5__* %127)
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %67, %65, %54, %42, %27, %14
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.meson_gxbb_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_gxbb_wdt*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.meson_gxbb_wdt*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @meson_gxbb_wdt_set_timeout(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
