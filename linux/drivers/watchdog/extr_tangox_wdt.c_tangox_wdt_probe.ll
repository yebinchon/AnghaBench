; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_tangox_wdt.c_tangox_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_tangox_wdt.c_tangox_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tangox_wdt_device = type { i32, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tangox_clk_disable_unprepare = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tangox_wdt_info = common dso_local global i32 0, align 4
@tangox_wdt_ops = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@WD_CONFIG = common dso_local global i64 0, align 8
@WD_CONFIG_DISABLE = common dso_local global i32 0, align 4
@WD_COUNTER = common dso_local global i64 0, align 8
@WD_CONFIG_XTAL_IN = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SMP86xx/SMP87xx watchdog registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tangox_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tangox_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tangox_wdt_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tangox_wdt_device* @devm_kzalloc(i32* %8, i32 64, i32 %9)
  store %struct.tangox_wdt_device* %10, %struct.tangox_wdt_device** %4, align 8
  %11 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %12 = icmp ne %struct.tangox_wdt_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %188

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %20 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %22 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @IS_ERR(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %28 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @PTR_ERR(i64 %29)
  store i32 %30, i32* %2, align 4
  br label %188

31:                                               ; preds = %16
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i64 @devm_clk_get(i32* %33, i32* null)
  %35 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %36 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %38 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @IS_ERR(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %44 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PTR_ERR(i64 %45)
  store i32 %46, i32* %2, align 4
  br label %188

47:                                               ; preds = %31
  %48 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %49 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_prepare_enable(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %188

56:                                               ; preds = %47
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* @tangox_clk_disable_unprepare, align 4
  %60 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %61 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @devm_add_action_or_reset(i32* %58, i32 %59, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %188

68:                                               ; preds = %56
  %69 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %70 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @clk_get_rate(i64 %71)
  %73 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %74 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %76 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %188

82:                                               ; preds = %68
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %86 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 6
  store i32* %84, i32** %87, align 8
  %88 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %89 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 5
  store i32* @tangox_wdt_info, i32** %90, align 8
  %91 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %92 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store i32* @tangox_wdt_ops, i32** %93, align 8
  %94 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %95 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %96 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %99 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* @U32_MAX, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %104 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %102, %105
  %107 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %108 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %111 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %110, i32 0, i32 1
  %112 = load i32, i32* @timeout, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @watchdog_init_timeout(%struct.TYPE_8__* %111, i32 %112, i32* %114)
  %116 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %117 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %116, i32 0, i32 1
  %118 = load i32, i32* @nowayout, align 4
  %119 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* %117, i32 %118)
  %120 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %121 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %120, i32 0, i32 1
  %122 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %123 = call i32 @watchdog_set_drvdata(%struct.TYPE_8__* %121, %struct.tangox_wdt_device* %122)
  %124 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %125 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @WD_CONFIG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readl(i64 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @WD_CONFIG_DISABLE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %82
  %135 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %136 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @WD_COUNTER, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 0, i64 %139)
  br label %141

141:                                              ; preds = %134, %82
  %142 = load i32, i32* @WD_CONFIG_XTAL_IN, align 4
  %143 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %144 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WD_CONFIG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %150 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @WD_COUNTER, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @readl(i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %141
  %157 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %158 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %159 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = call i32 @set_bit(i32 %157, i32* %160)
  %162 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %163 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %162, i32 0, i32 1
  %164 = call i32 @tangox_wdt_start(%struct.TYPE_8__* %163)
  br label %165

165:                                              ; preds = %156, %141
  %166 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %167 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %166, i32 0, i32 1
  %168 = call i32 @watchdog_set_restart_priority(%struct.TYPE_8__* %167, i32 128)
  %169 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %170 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %169, i32 0, i32 1
  %171 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_8__* %170)
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %175 = getelementptr inbounds %struct.tangox_wdt_device, %struct.tangox_wdt_device* %174, i32 0, i32 1
  %176 = call i32 @devm_watchdog_register_device(i32* %173, %struct.TYPE_8__* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %165
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %188

181:                                              ; preds = %165
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = load %struct.tangox_wdt_device*, %struct.tangox_wdt_device** %4, align 8
  %184 = call i32 @platform_set_drvdata(%struct.platform_device* %182, %struct.tangox_wdt_device* %183)
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @dev_info(i32* %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %181, %179, %79, %66, %54, %42, %26, %13
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.tangox_wdt_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_8__*, %struct.tangox_wdt_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tangox_wdt_start(%struct.TYPE_8__*) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_watchdog_register_device(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tangox_wdt_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
