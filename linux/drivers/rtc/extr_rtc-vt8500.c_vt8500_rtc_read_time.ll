; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.vt8500_rtc = type { i64 }

@VT8500_RTC_DR = common dso_local global i64 0, align 8
@VT8500_RTC_TR = common dso_local global i64 0, align 8
@TIME_SEC_MASK = common dso_local global i32 0, align 4
@TIME_MIN_MASK = common dso_local global i32 0, align 4
@TIME_MIN_S = common dso_local global i32 0, align 4
@TIME_HOUR_MASK = common dso_local global i32 0, align 4
@TIME_HOUR_S = common dso_local global i32 0, align 4
@DATE_DAY_MASK = common dso_local global i32 0, align 4
@DATE_MONTH_MASK = common dso_local global i32 0, align 4
@DATE_MONTH_S = common dso_local global i32 0, align 4
@DATE_YEAR_MASK = common dso_local global i32 0, align 4
@DATE_YEAR_S = common dso_local global i32 0, align 4
@DATE_CENTURY_S = common dso_local global i32 0, align 4
@TIME_DOW_MASK = common dso_local global i32 0, align 4
@TIME_DOW_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @vt8500_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.vt8500_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.vt8500_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.vt8500_rtc* %9, %struct.vt8500_rtc** %5, align 8
  %10 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VT8500_RTC_DR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT8500_RTC_TR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TIME_SEC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i8* @bcd2bin(i32 %24)
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TIME_MIN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @TIME_MIN_S, align 4
  %32 = ashr i32 %30, %31
  %33 = call i8* @bcd2bin(i32 %32)
  %34 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TIME_HOUR_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @TIME_HOUR_S, align 4
  %40 = ashr i32 %38, %39
  %41 = call i8* @bcd2bin(i32 %40)
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @DATE_DAY_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DATE_MONTH_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @DATE_MONTH_S, align 4
  %54 = ashr i32 %52, %53
  %55 = call i8* @bcd2bin(i32 %54)
  %56 = getelementptr i8, i8* %55, i64 -1
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DATE_YEAR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @DATE_YEAR_S, align 4
  %63 = ashr i32 %61, %62
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @DATE_CENTURY_S, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 200, i32 100
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %64, i64 %72
  %74 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @TIME_DOW_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @TIME_DOW_S, align 4
  %80 = ashr i32 %78, %79
  %81 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  ret i32 0
}

declare dso_local %struct.vt8500_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
