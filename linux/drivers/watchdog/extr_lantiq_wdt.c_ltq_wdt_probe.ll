; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_lantiq_wdt.c_ltq_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_lantiq_wdt.c_ltq_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ltq_wdt_priv = type { i32, %struct.watchdog_device, i32 }
%struct.watchdog_device = type { i32, i32, i32, i32, i32, %struct.device*, i32*, i32* }
%struct.clk = type { i32 }
%struct.ltq_wdt_hw = type { i32 (%struct.device*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LTQ_WDT_DIVIDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"clock rate less than divider %i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ltq_wdt_info = common dso_local global i32 0, align 4
@ltq_wdt_ops = common dso_local global i32 0, align 4
@LTQ_WDT_CR_MAX_TIMEOUT = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@LTQ_WDT_SR = common dso_local global i32 0, align 4
@LTQ_WDT_SR_EN = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ltq_wdt_priv*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.ltq_wdt_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ltq_wdt_priv* @devm_kzalloc(%struct.device* %13, i32 64, i32 %14)
  store %struct.ltq_wdt_priv* %15, %struct.ltq_wdt_priv** %5, align 8
  %16 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %17 = icmp ne %struct.ltq_wdt_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %125

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0)
  %24 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %125

36:                                               ; preds = %21
  %37 = call %struct.clk* (...) @clk_get_io()
  store %struct.clk* %37, %struct.clk** %7, align 8
  %38 = load %struct.clk*, %struct.clk** %7, align 8
  %39 = call i32 @clk_get_rate(%struct.clk* %38)
  %40 = load i32, i32* @LTQ_WDT_DIVIDER, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @LTQ_WDT_DIVIDER, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %125

54:                                               ; preds = %36
  %55 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %55, i32 0, i32 1
  store %struct.watchdog_device* %56, %struct.watchdog_device** %6, align 8
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 7
  store i32* @ltq_wdt_info, i32** %58, align 8
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %60 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 6
  store i32* @ltq_wdt_ops, i32** %60, align 8
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %62 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* @LTQ_WDT_CR_MAX_TIMEOUT, align 4
  %64 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %65 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %63, %66
  %68 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %69 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %71 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %74 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %77 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %76, i32 0, i32 5
  store %struct.device* %75, %struct.device** %77, align 8
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call %struct.ltq_wdt_hw* @of_device_get_match_data(%struct.device* %78)
  store %struct.ltq_wdt_hw* %79, %struct.ltq_wdt_hw** %8, align 8
  %80 = load %struct.ltq_wdt_hw*, %struct.ltq_wdt_hw** %8, align 8
  %81 = icmp ne %struct.ltq_wdt_hw* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %54
  %83 = load %struct.ltq_wdt_hw*, %struct.ltq_wdt_hw** %8, align 8
  %84 = getelementptr inbounds %struct.ltq_wdt_hw, %struct.ltq_wdt_hw* %83, i32 0, i32 0
  %85 = load i32 (%struct.device*)*, i32 (%struct.device*)** %84, align 8
  %86 = icmp ne i32 (%struct.device*)* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load %struct.ltq_wdt_hw*, %struct.ltq_wdt_hw** %8, align 8
  %89 = getelementptr inbounds %struct.ltq_wdt_hw, %struct.ltq_wdt_hw* %88, i32 0, i32 0
  %90 = load i32 (%struct.device*)*, i32 (%struct.device*)** %89, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 %90(%struct.device* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %98 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %87
  br label %100

100:                                              ; preds = %99, %82, %54
  %101 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %102 = load i32, i32* @nowayout, align 4
  %103 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %101, i32 %102)
  %104 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %104, i32 0, %struct.device* %105)
  %107 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %5, align 8
  %108 = load i32, i32* @LTQ_WDT_SR, align 4
  %109 = call i32 @ltq_wdt_r32(%struct.ltq_wdt_priv* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @LTQ_WDT_SR_EN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %116 = call i32 @ltq_wdt_start(%struct.watchdog_device* %115)
  %117 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %118 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %119 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %118, i32 0, i32 4
  %120 = call i32 @set_bit(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %114, %100
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %124 = call i32 @devm_watchdog_register_device(%struct.device* %122, %struct.watchdog_device* %123)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %48, %31, %18
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.ltq_wdt_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.clk* @clk_get_io(...) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.ltq_wdt_hw* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @ltq_wdt_r32(%struct.ltq_wdt_priv*, i32) #1

declare dso_local i32 @ltq_wdt_start(%struct.watchdog_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
