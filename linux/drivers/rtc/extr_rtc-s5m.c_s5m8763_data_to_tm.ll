; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8763_data_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8763_data_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@HOUR_12 = common dso_local global i32 0, align 4
@HOUR_PM = common dso_local global i32 0, align 4
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR1 = common dso_local global i64 0, align 8
@RTC_YEAR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rtc_time*)* @s5m8763_data_to_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5m8763_data_to_tm(i32* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i64, i64* @RTC_SEC, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bcd2bin(i32 %8)
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* @RTC_MIN, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bcd2bin(i32 %15)
  %17 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* @RTC_HOUR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HOUR_12, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* @RTC_HOUR, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 31
  %32 = call i32 @bcd2bin(i32 %31)
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* @RTC_HOUR, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HOUR_PM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 12
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %26
  br label %57

48:                                               ; preds = %2
  %49 = load i32*, i32** %3, align 8
  %50 = load i64, i64* @RTC_HOUR, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 63
  %54 = call i32 @bcd2bin(i32 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* @RTC_WEEKDAY, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 7
  %63 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = load i64, i64* @RTC_DATE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bcd2bin(i32 %68)
  %70 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = load i64, i64* @RTC_MONTH, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bcd2bin(i32 %75)
  %77 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load i64, i64* @RTC_YEAR1, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bcd2bin(i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i64, i64* @RTC_YEAR2, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bcd2bin(i32 %87)
  %89 = mul nsw i32 %88, 100
  %90 = add nsw i32 %83, %89
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1900
  store i32 %96, i32* %94, align 4
  ret void
}

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
