; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_regs_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_regs_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_YEAR2 = common dso_local global i64 0, align 8
@RTC_YEAR1 = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@HOUR_12 = common dso_local global i32 0, align 4
@HOUR_AM_PM = common dso_local global i32 0, align 4
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rtc_time*)* @regs_to_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regs_to_tm(i32* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i64, i64* @RTC_YEAR2, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bcd2bin(i32 %8)
  %10 = mul nsw i32 %9, 100
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* @RTC_YEAR1, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bcd2bin(i32 %14)
  %16 = add nsw i32 %10, %15
  %17 = sub nsw i32 %16, 1900
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* @RTC_MONTH, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 31
  %25 = call i32 @bcd2bin(i32 %24)
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* @RTC_DATE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 63
  %34 = call i32 @bcd2bin(i32 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* @RTC_WEEKDAY, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 7
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* @RTC_HOUR, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HOUR_12, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %2
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* @RTC_HOUR, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  %57 = call i32 @bcd2bin(i32 %56)
  %58 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 12
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 4
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %51
  %68 = load i32*, i32** %3, align 8
  %69 = load i64, i64* @RTC_HOUR, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HOUR_AM_PM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 12
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %67
  br label %90

81:                                               ; preds = %2
  %82 = load i32*, i32** %3, align 8
  %83 = load i64, i64* @RTC_HOUR, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  %87 = call i32 @bcd2bin(i32 %86)
  %88 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %80
  %91 = load i32*, i32** %3, align 8
  %92 = load i64, i64* @RTC_MIN, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 127
  %96 = call i32 @bcd2bin(i32 %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* @RTC_SEC, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 127
  %104 = call i32 @bcd2bin(i32 %103)
  %105 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  ret void
}

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
