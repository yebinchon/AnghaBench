; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8997.c_max8997_rtc_tm_to_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8997.c_max8997_rtc_tm_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"RTC cannot handle the year %d.  Assume it's 2000.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*, i32*)* @max8997_rtc_tm_to_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_rtc_tm_to_data(%struct.rtc_time* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %7 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* @RTC_SEC, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* @RTC_MIN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* @RTC_HOUR, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @RTC_WEEKDAY, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* @RTC_DATE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* @RTC_MONTH, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 100
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 0, %53 ]
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* @RTC_YEAR, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 100
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 1900, %66
  %68 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
