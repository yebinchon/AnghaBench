; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32 }
%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_events, %struct.stm32_rtc_registers }
%struct.stm32_rtc_events = type { i32 }
%struct.stm32_rtc_registers = type { i64, i32, i32 }

@STM32_RTC_ALRMXR_DATE_MASK = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_WDSEL = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_WDAY = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_WDAY_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_DATE = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_DATE_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_HOUR_MASK = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_HOUR = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_HOUR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_PM = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_MIN_MASK = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_MIN = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_MIN_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_SEC_MASK = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_SEC = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_SEC_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_CR_ALRAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @stm32_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.stm32_rtc*, align 8
  %6 = alloca %struct.stm32_rtc_registers*, align 8
  %7 = alloca %struct.stm32_rtc_events*, align 8
  %8 = alloca %struct.rtc_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.stm32_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.stm32_rtc* %13, %struct.stm32_rtc** %5, align 8
  %14 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %15 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.stm32_rtc_registers* %17, %struct.stm32_rtc_registers** %6, align 8
  %18 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %19 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.stm32_rtc_events* %21, %struct.stm32_rtc_events** %7, align 8
  %22 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %22, i32 0, i32 2
  store %struct.rtc_time* %23, %struct.rtc_time** %8, align 8
  %24 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %43 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %46 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @readl_relaxed(i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @STM32_RTC_ALRMXR_DATE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  br label %89

59:                                               ; preds = %2
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @STM32_RTC_ALRMXR_WDSEL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @STM32_RTC_ALRMXR_WDAY, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @STM32_RTC_ALRMXR_WDAY_SHIFT, align 4
  %71 = lshr i32 %69, %70
  %72 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = srem i32 %76, 7
  store i32 %77, i32* %75, align 4
  br label %88

78:                                               ; preds = %59
  %79 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @STM32_RTC_ALRMXR_DATE, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @STM32_RTC_ALRMXR_DATE_SHIFT, align 4
  %85 = lshr i32 %83, %84
  %86 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %78, %64
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @STM32_RTC_ALRMXR_HOUR_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 2
  store i32 -1, i32* %96, align 4
  br label %115

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @STM32_RTC_ALRMXR_HOUR, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @STM32_RTC_ALRMXR_HOUR_SHIFT, align 4
  %102 = lshr i32 %100, %101
  %103 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @STM32_RTC_ALRMXR_PM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %97
  %110 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 12
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %97
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @STM32_RTC_ALRMXR_MIN_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 3
  store i32 -1, i32* %122, align 4
  br label %131

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @STM32_RTC_ALRMXR_MIN, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @STM32_RTC_ALRMXR_MIN_SHIFT, align 4
  %128 = lshr i32 %126, %127
  %129 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %123, %120
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @STM32_RTC_ALRMXR_SEC_MASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %138 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %137, i32 0, i32 4
  store i32 -1, i32* %138, align 4
  br label %147

139:                                              ; preds = %131
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @STM32_RTC_ALRMXR_SEC, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* @STM32_RTC_ALRMXR_SEC_SHIFT, align 4
  %144 = lshr i32 %142, %143
  %145 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %136
  %148 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %149 = call i32 @bcd2tm(%struct.rtc_time* %148)
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @STM32_RTC_CR_ALRAE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %157 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.stm32_rtc_events*, %struct.stm32_rtc_events** %7, align 8
  %160 = getelementptr inbounds %struct.stm32_rtc_events, %struct.stm32_rtc_events* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %158, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 0
  %166 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %167 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  ret i32 0
}

declare dso_local %struct.stm32_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @bcd2tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
