; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_rtc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32 }

@STM32_RTC_CR_ALRAIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stm32_rtc*, align 8
  %4 = alloca %struct.stm32_rtc_registers*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.stm32_rtc* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.stm32_rtc* %7, %struct.stm32_rtc** %3, align 8
  %8 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store %struct.stm32_rtc_registers* %11, %struct.stm32_rtc_registers** %4, align 8
  %12 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %13 = call i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc* %12)
  %14 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %15 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @STM32_RTC_CR_ALRAIE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = call i32 @writel_relaxed(i32 %27, i64 %35)
  %37 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %38 = call i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc* %37)
  %39 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %40 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %44 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %1
  %50 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %51 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  br label %54

54:                                               ; preds = %49, %1
  %55 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %56 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %63 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %66 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %69 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regmap_update_bits(i32 %64, i32 %67, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %61, %54
  %73 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_pm_clear_wake_irq(i32* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @device_init_wakeup(i32* %77, i32 0)
  ret i32 0
}

declare dso_local %struct.stm32_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
