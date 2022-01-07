; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_time_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_time_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i64, i64, i64, i64, i64, i64, i32 }

@RTC_MON_MASK = common dso_local global i64 0, align 8
@RTC_MON_SHIFT = common dso_local global i64 0, align 8
@RTC_MDAY_MASK = common dso_local global i64 0, align 8
@RTC_MDAY_SHIFT = common dso_local global i64 0, align 8
@RTC_WDAY_MASK = common dso_local global i64 0, align 8
@RTC_WDAY_SHIFT = common dso_local global i64 0, align 8
@RTC_HOUR_MASK = common dso_local global i64 0, align 8
@RTC_HOUR_SHIFT = common dso_local global i64 0, align 8
@RTC_MIN_MASK = common dso_local global i64 0, align 8
@RTC_MIN_SHIFT = common dso_local global i64 0, align 8
@RTC_SEC_MASK = common dso_local global i64 0, align 8
@RTC_SEC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.rtc_time*)* @pl031_stv2_time_to_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_stv2_time_to_tm(i64 %0, i64 %1, %struct.rtc_time* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtc_time*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rtc_time* %2, %struct.rtc_time** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @bcd2bin(i64 %7)
  %9 = load i64, i64* %5, align 8
  %10 = lshr i64 %9, 8
  %11 = call i32 @bcd2bin(i64 %10)
  %12 = mul nsw i32 %11, 100
  %13 = add nsw i32 %8, %12
  %14 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @RTC_MON_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @RTC_MON_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = sub i64 %20, 1
  %22 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @RTC_MDAY_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @RTC_MDAY_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @RTC_WDAY_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @RTC_WDAY_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = sub i64 %35, 1
  %37 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @RTC_HOUR_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @RTC_HOUR_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @RTC_MIN_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @RTC_MIN_SHIFT, align 8
  %50 = lshr i64 %48, %49
  %51 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @RTC_SEC_MASK, align 8
  %55 = and i64 %53, %54
  %56 = load i64, i64* @RTC_SEC_SHIFT, align 8
  %57 = lshr i64 %55, %56
  %58 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 6
  store i64 %57, i64* %59, align 8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @rtc_year_days(i64 %62, i64 %65, i32 %68)
  %70 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1900
  store i32 %75, i32* %73, align 8
  ret i32 0
}

declare dso_local i32 @bcd2bin(i64) #1

declare dso_local i32 @rtc_year_days(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
