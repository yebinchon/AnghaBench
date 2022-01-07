; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_tm_to_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9063.c_da9063_tm_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.da9063_compatible_rtc = type { %struct.da9063_compatible_rtc_regmap* }
%struct.da9063_compatible_rtc_regmap = type { i32, i32, i32, i32, i32, i32 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@RTC_DAY = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, i32*, %struct.da9063_compatible_rtc*)* @da9063_tm_to_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9063_tm_to_data(%struct.rtc_time* %0, i32* %1, %struct.da9063_compatible_rtc* %2) #0 {
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.da9063_compatible_rtc*, align 8
  %7 = alloca %struct.da9063_compatible_rtc_regmap*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.da9063_compatible_rtc* %2, %struct.da9063_compatible_rtc** %6, align 8
  %8 = load %struct.da9063_compatible_rtc*, %struct.da9063_compatible_rtc** %6, align 8
  %9 = getelementptr inbounds %struct.da9063_compatible_rtc, %struct.da9063_compatible_rtc* %8, i32 0, i32 0
  %10 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %9, align 8
  store %struct.da9063_compatible_rtc_regmap* %10, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %15 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @RTC_SEC, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %25 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @RTC_MIN, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %35 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* @RTC_HOUR, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %45 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* @RTC_DAY, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MONTHS_TO_DA9063(i32 %53)
  %55 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %56 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* @RTC_MONTH, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @YEARS_TO_DA9063(i32 %64)
  %66 = load %struct.da9063_compatible_rtc_regmap*, %struct.da9063_compatible_rtc_regmap** %7, align 8
  %67 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, %struct.da9063_compatible_rtc_regmap* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %65, %68
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* @RTC_YEAR, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  ret void
}

declare dso_local i32 @MONTHS_TO_DA9063(i32) #1

declare dso_local i32 @YEARS_TO_DA9063(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
