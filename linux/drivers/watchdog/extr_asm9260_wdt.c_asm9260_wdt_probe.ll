; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.asm9260_wdt_priv = type { i64, i64, i32, %struct.watchdog_device, i32, i32, %struct.device* }
%struct.watchdog_device = type { i32, i32, %struct.device*, i32, i32*, i32* }

@asm9260_wdt_probe.mode_name = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"wdt_rst\00", align 1
@asm9260_wdt_ident = common dso_local global i32 0, align 4
@asm9260_wdt_ops = common dso_local global i32 0, align 4
@ASM9260_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@HW_RESET = common dso_local global i64 0, align 8
@asm9260_wdt_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Watchdog enabled (timeout: %d sec, mode: %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asm9260_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.asm9260_wdt_priv*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.asm9260_wdt_priv* @devm_kzalloc(%struct.device* %10, i32 80, i32 %11)
  store %struct.asm9260_wdt_priv* %12, %struct.asm9260_wdt_priv** %5, align 8
  %13 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %14 = icmp ne %struct.asm9260_wdt_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %147

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %21 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %20, i32 0, i32 6
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0)
  %24 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %25 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %27 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %33 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %147

36:                                               ; preds = %18
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @devm_reset_control_get_exclusive(%struct.device* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %40 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %42 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %48 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %147

51:                                               ; preds = %36
  %52 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %53 = call i32 @asm9260_wdt_get_dt_clks(%struct.asm9260_wdt_priv* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %147

58:                                               ; preds = %51
  %59 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %60 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %59, i32 0, i32 3
  store %struct.watchdog_device* %60, %struct.watchdog_device** %6, align 8
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %62 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %61, i32 0, i32 5
  store i32* @asm9260_wdt_ident, i32** %62, align 8
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %64 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %63, i32 0, i32 4
  store i32* @asm9260_wdt_ops, i32** %64, align 8
  %65 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %66 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %68 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @BM_WDTC_MAX(i32 %69)
  %71 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %72 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %75 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %74, i32 0, i32 2
  store %struct.device* %73, %struct.device** %75, align 8
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %77 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %78 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %76, %struct.asm9260_wdt_priv* %77)
  %79 = load i32, i32* @ASM9260_WDT_DEFAULT_TIMEOUT, align 4
  %80 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %81 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %82, i32 0, %struct.device* %83)
  %85 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %86 = call i32 @asm9260_wdt_get_dt_mode(%struct.asm9260_wdt_priv* %85)
  %87 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %88 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @HW_RESET, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %58
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = call i64 @platform_get_irq(%struct.platform_device* %93, i32 0)
  %95 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %96 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %58
  %98 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %99 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %105 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @asm9260_wdt_irq, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %112 = call i32 @devm_request_irq(%struct.device* %103, i64 %106, i32 %107, i32 0, i32 %110, %struct.asm9260_wdt_priv* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_warn(%struct.device* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %102
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %121 = call i32 @watchdog_set_restart_priority(%struct.watchdog_device* %120, i32 128)
  %122 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %123 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %122)
  %124 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %125 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %124)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %128 = call i32 @devm_watchdog_register_device(%struct.device* %126, %struct.watchdog_device* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %147

133:                                              ; preds = %119
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %136 = call i32 @platform_set_drvdata(%struct.platform_device* %134, %struct.asm9260_wdt_priv* %135)
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %139 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %5, align 8
  %142 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds [3 x i8*], [3 x i8*]* @asm9260_wdt_probe.mode_name, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @dev_info(%struct.device* %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %140, i8* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %133, %131, %56, %46, %31, %15
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.asm9260_wdt_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @asm9260_wdt_get_dt_clks(%struct.asm9260_wdt_priv*) #1

declare dso_local i32 @BM_WDTC_MAX(i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.asm9260_wdt_priv*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @asm9260_wdt_get_dt_mode(%struct.asm9260_wdt_priv*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i32, %struct.asm9260_wdt_priv*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.asm9260_wdt_priv*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
