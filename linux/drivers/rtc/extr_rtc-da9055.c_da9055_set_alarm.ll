; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055 = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32 }

@DA9055_REG_ALARM_MI = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to write ALRM MIN: %d\0A\00", align 1
@DA9055_REG_ALARM_H = common dso_local global i32 0, align 4
@DA9055_REG_ALARM_MO = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_MONTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to write ALM Month:%d\0A\00", align 1
@DA9055_REG_ALARM_Y = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_YEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to write ALM Year:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9055*, %struct.rtc_time*)* @da9055_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_set_alarm(%struct.da9055* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9055*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.da9055* %0, %struct.da9055** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 100
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.da9055*, %struct.da9055** %4, align 8
  %17 = load i32, i32* @DA9055_REG_ALARM_MI, align 4
  %18 = load i32, i32* @DA9055_RTC_ALM_MIN, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @da9055_reg_update(%struct.da9055* %16, i32 %17, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.da9055*, %struct.da9055** %4, align 8
  %27 = getelementptr inbounds %struct.da9055, %struct.da9055* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %2
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.da9055*, %struct.da9055** %4, align 8
  %42 = load i32, i32* @DA9055_REG_ALARM_H, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %44 = call i32 @da9055_group_write(%struct.da9055* %41, i32 %42, i32 2, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %32
  %50 = load %struct.da9055*, %struct.da9055** %4, align 8
  %51 = load i32, i32* @DA9055_REG_ALARM_MO, align 4
  %52 = load i32, i32* @DA9055_RTC_ALM_MONTH, align 4
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @da9055_reg_update(%struct.da9055* %50, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.da9055*, %struct.da9055** %4, align 8
  %61 = getelementptr inbounds %struct.da9055, %struct.da9055* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %49
  %66 = load %struct.da9055*, %struct.da9055** %4, align 8
  %67 = load i32, i32* @DA9055_REG_ALARM_Y, align 4
  %68 = load i32, i32* @DA9055_RTC_ALM_YEAR, align 4
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @da9055_reg_update(%struct.da9055* %66, i32 %67, i32 %68, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.da9055*, %struct.da9055** %4, align 8
  %77 = getelementptr inbounds %struct.da9055, %struct.da9055* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %65
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %47, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @da9055_reg_update(%struct.da9055*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @da9055_group_write(%struct.da9055*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
