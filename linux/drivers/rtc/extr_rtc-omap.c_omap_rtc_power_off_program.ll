; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_power_off_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_power_off_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)* }
%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@omap_rtc_power_off_rtc = common dso_local global %struct.omap_rtc* null, align 8
@OMAP_RTC_PMIC_REG = common dso_local global i32 0, align 4
@OMAP_RTC_PMIC_POWER_EN_EN = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_ALARM2 = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM2_SECONDS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM2_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM2_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM2_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM2_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM2_YEARS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_IT_ALARM2 = common dso_local global i32 0, align 4
@OMAP_RTC_SECONDS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_rtc_power_off_program(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.omap_rtc*, align 8
  %4 = alloca %struct.rtc_time, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.omap_rtc*, %struct.omap_rtc** @omap_rtc_power_off_rtc, align 8
  store %struct.omap_rtc* %8, %struct.omap_rtc** %3, align 8
  %9 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %10 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %12, align 8
  %14 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %15 = call i32 %13(%struct.omap_rtc* %14)
  %16 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %17 = load i32, i32* @OMAP_RTC_PMIC_REG, align 4
  %18 = call i32 @rtc_readl(%struct.omap_rtc* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %20 = load i32, i32* @OMAP_RTC_PMIC_REG, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OMAP_RTC_PMIC_POWER_EN_EN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rtc_writel(%struct.omap_rtc* %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %94, %1
  %26 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %27 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %28 = load i32, i32* @OMAP_RTC_STATUS_ALARM2, align 4
  %29 = call i32 @rtc_writel(%struct.omap_rtc* %26, i32 %27, i32 %28)
  %30 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %31 = call i32 @omap_rtc_read_time_raw(%struct.omap_rtc* %30, %struct.rtc_time* %4)
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = call i32 @bcd2tm(%struct.rtc_time* %4)
  %35 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %4)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  %38 = call i32 @rtc_time64_to_tm(i64 %37, %struct.rtc_time* %4)
  %39 = call i32 @tm2bcd(%struct.rtc_time* %4)
  %40 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %41 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %40)
  %42 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %43 = load i32, i32* @OMAP_RTC_ALARM2_SECONDS_REG, align 4
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtc_write(%struct.omap_rtc* %42, i32 %43, i32 %45)
  %47 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %48 = load i32, i32* @OMAP_RTC_ALARM2_MINUTES_REG, align 4
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rtc_write(%struct.omap_rtc* %47, i32 %48, i32 %50)
  %52 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %53 = load i32, i32* @OMAP_RTC_ALARM2_HOURS_REG, align 4
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rtc_write(%struct.omap_rtc* %52, i32 %53, i32 %55)
  %57 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %58 = load i32, i32* @OMAP_RTC_ALARM2_DAYS_REG, align 4
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtc_write(%struct.omap_rtc* %57, i32 %58, i32 %60)
  %62 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %63 = load i32, i32* @OMAP_RTC_ALARM2_MONTHS_REG, align 4
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rtc_write(%struct.omap_rtc* %62, i32 %63, i32 %65)
  %67 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %68 = load i32, i32* @OMAP_RTC_ALARM2_YEARS_REG, align 4
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtc_write(%struct.omap_rtc* %67, i32 %68, i32 %70)
  %72 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %73 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %74 = call i32 @rtc_read(%struct.omap_rtc* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %76 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM2, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @rtc_writel(%struct.omap_rtc* %75, i32 %76, i32 %79)
  %81 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %82 = load i32, i32* @OMAP_RTC_SECONDS_REG, align 4
  %83 = call i32 @rtc_read(%struct.omap_rtc* %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %25
  %87 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %88 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %89 = call i32 @rtc_read(%struct.omap_rtc* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @OMAP_RTC_STATUS_ALARM2, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %25

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %25
  %97 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %98 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %100, align 8
  %102 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %103 = call i32 %101(%struct.omap_rtc* %102)
  ret i32 0
}

declare dso_local i32 @rtc_readl(%struct.omap_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @omap_rtc_read_time_raw(%struct.omap_rtc*, %struct.rtc_time*) #1

declare dso_local i32 @bcd2tm(%struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @tm2bcd(%struct.rtc_time*) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.omap_rtc*) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
