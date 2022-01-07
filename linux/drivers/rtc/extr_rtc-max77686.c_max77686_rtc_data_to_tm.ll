; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_data_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_data_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.max77686_rtc_info = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@HOUR_PM_MASK = common dso_local global i32 0, align 4
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rtc_time*, %struct.max77686_rtc_info*)* @max77686_rtc_data_to_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77686_rtc_data_to_tm(i32* %0, %struct.rtc_time* %1, %struct.max77686_rtc_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.max77686_rtc_info*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store %struct.max77686_rtc_info* %2, %struct.max77686_rtc_info** %6, align 8
  %8 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %9 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* @RTC_SEC, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* @RTC_MIN, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %30 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* @RTC_HOUR, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 31
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %62

41:                                               ; preds = %3
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* @RTC_HOUR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* @RTC_HOUR, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HOUR_PM_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 12
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %41
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* @RTC_WEEKDAY, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %66, %67
  %69 = call i64 @ffs(i32 %68)
  %70 = sub nsw i64 %69, 1
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 8
  store i64 %70, i64* %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i64, i64* @RTC_DATE, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 31
  %78 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i64, i64* @RTC_MONTH, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 15
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* @RTC_YEAR, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 6
  store i64 0, i64* %99, align 8
  %100 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %6, align 8
  %101 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %62
  %107 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 100
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %62
  ret void
}

declare dso_local i64 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
