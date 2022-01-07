; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8997.c_max8997_rtc_data_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8997.c_max8997_rtc_data_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@HOUR_PM_MASK = common dso_local global i32 0, align 4
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rtc_time*, i32)* @max8997_rtc_data_to_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_rtc_data_to_tm(i32* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i64, i64* @RTC_SEC, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 127
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @RTC_MIN, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @RTC_HOUR, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 31
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %52

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* @RTC_HOUR, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* @RTC_HOUR, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HOUR_PM_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 12
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %31
  br label %52

52:                                               ; preds = %51, %23
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* @RTC_WEEKDAY, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 127
  %58 = call i64 @fls(i32 %57)
  %59 = sub nsw i64 %58, 1
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 8
  store i64 %59, i64* %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* @RTC_DATE, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 31
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* @RTC_MONTH, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 15
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* @RTC_YEAR, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 127
  %82 = add nsw i32 %81, 100
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 7
  store i64 0, i64* %86, align 8
  %87 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  ret void
}

declare dso_local i64 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
