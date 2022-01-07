; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_valid_alrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_valid_alrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@STM32_RTC_DR_DATE = common dso_local global i32 0, align 4
@STM32_RTC_DR_DATE_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_MONTH = common dso_local global i32 0, align 4
@STM32_RTC_DR_MONTH_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_YEAR = common dso_local global i32 0, align 4
@STM32_RTC_DR_YEAR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_SEC = common dso_local global i32 0, align 4
@STM32_RTC_TR_SEC_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_MIN = common dso_local global i32 0, align 4
@STM32_RTC_TR_MIN_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_HOUR = common dso_local global i32 0, align 4
@STM32_RTC_TR_HOUR_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_rtc*, %struct.rtc_time*)* @stm32_rtc_valid_alrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_valid_alrm(%struct.stm32_rtc* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_rtc*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.stm32_rtc_registers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stm32_rtc* %0, %struct.stm32_rtc** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %15 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %16 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.stm32_rtc_registers* %18, %struct.stm32_rtc_registers** %6, align 8
  %19 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %20 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %23 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %32 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = call i32 @readl_relaxed(i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @STM32_RTC_DR_DATE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @STM32_RTC_DR_DATE_SHIFT, align 4
  %41 = lshr i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @STM32_RTC_DR_MONTH, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @STM32_RTC_DR_MONTH_SHIFT, align 4
  %46 = lshr i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @STM32_RTC_DR_YEAR, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @STM32_RTC_DR_YEAR_SHIFT, align 4
  %51 = lshr i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @STM32_RTC_TR_SEC, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @STM32_RTC_TR_SEC_SHIFT, align 4
  %56 = lshr i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @STM32_RTC_TR_MIN, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @STM32_RTC_TR_MIN_SHIFT, align 4
  %61 = lshr i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @STM32_RTC_TR_HOUR, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @STM32_RTC_TR_HOUR_SHIFT, align 4
  %66 = lshr i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %2
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 18
  br i1 %79, label %93, label %80

80:                                               ; preds = %77, %72, %2
  %81 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %142

86:                                               ; preds = %80
  %87 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = icmp sle i32 %89, %91
  br i1 %92, label %93, label %142

93:                                               ; preds = %86, %77
  %94 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %141, label %99

99:                                               ; preds = %93
  %100 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %99
  %106 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %141, label %111

111:                                              ; preds = %105
  %112 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %141, label %123

123:                                              ; preds = %117, %111
  %124 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %131 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %137 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %117, %105, %93
  store i32 0, i32* %3, align 4
  br label %145

142:                                              ; preds = %135, %129, %123, %99, %86, %80
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %141
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
