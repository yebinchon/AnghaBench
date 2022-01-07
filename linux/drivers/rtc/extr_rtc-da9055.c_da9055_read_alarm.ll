; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055 = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i64 }

@DA9055_REG_ALARM_MI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to group read ALM: %d\0A\00", align 1
@DA9055_RTC_ALM_YEAR = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_MONTH = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_DAY = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_HOUR = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9055*, %struct.rtc_time*)* @da9055_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_read_alarm(%struct.da9055* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9055*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.da9055* %0, %struct.da9055** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.da9055*, %struct.da9055** %4, align 8
  %9 = load i32, i32* @DA9055_REG_ALARM_MI, align 4
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %11 = call i32 @da9055_group_read(%struct.da9055* %8, i32 %9, i32 5, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.da9055*, %struct.da9055** %4, align 8
  %16 = getelementptr inbounds %struct.da9055, %struct.da9055* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %23 = load i32, i32* %22, align 16
  %24 = load i32, i32* @DA9055_RTC_ALM_YEAR, align 4
  %25 = and i32 %23, %24
  %26 = add nsw i32 %25, 100
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DA9055_RTC_ALM_MONTH, align 4
  %32 = and i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DA9055_RTC_ALM_DAY, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DA9055_RTC_ALM_HOUR, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* %48, align 16
  %50 = load i32, i32* @DA9055_RTC_ALM_MIN, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = call i32 @rtc_valid_tm(%struct.rtc_time* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %21, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @da9055_group_read(%struct.da9055*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
