; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_rtc = type { %struct.da9052* }
%struct.da9052 = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@DA9052_ALARM_MI_REG = common dso_local global i32 0, align 4
@DA9052_RTC_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to write ALRM MIN: %d\0A\00", align 1
@DA9052_ALARM_H_REG = common dso_local global i32 0, align 4
@DA9052_ALARM_Y_REG = common dso_local global i32 0, align 4
@DA9052_RTC_YEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to write ALRM YEAR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_rtc*, %struct.rtc_time*)* @da9052_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_set_alarm(%struct.da9052_rtc* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_rtc*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.da9052*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.da9052_rtc* %0, %struct.da9052_rtc** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %11 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %10, i32 0, i32 0
  %12 = load %struct.da9052*, %struct.da9052** %11, align 8
  store %struct.da9052* %12, %struct.da9052** %6, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %14 = call i32 @rtc_tm_to_time(%struct.rtc_time* %13, i64* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 60, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = call i32 @rtc_time_to_tm(i64 %32, %struct.rtc_time* %33)
  br label %35

35:                                               ; preds = %24, %19
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 100
  store i32 %43, i32* %41, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.da9052*, %struct.da9052** %6, align 8
  %49 = load i32, i32* @DA9052_ALARM_MI_REG, align 4
  %50 = load i32, i32* @DA9052_RTC_MIN, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @da9052_reg_update(%struct.da9052* %48, i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %35
  %58 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @rtc_err(%struct.da9052_rtc* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %99

62:                                               ; preds = %35
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.da9052*, %struct.da9052** %6, align 8
  %76 = load i32, i32* @DA9052_ALARM_H_REG, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %78 = call i32 @da9052_group_write(%struct.da9052* %75, i32 %76, i32 3, i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %99

83:                                               ; preds = %62
  %84 = load %struct.da9052*, %struct.da9052** %6, align 8
  %85 = load i32, i32* @DA9052_ALARM_Y_REG, align 4
  %86 = load i32, i32* @DA9052_RTC_YEAR, align 4
  %87 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @da9052_reg_update(%struct.da9052* %84, i32 %85, i32 %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @rtc_err(%struct.da9052_rtc* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %81, %57, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @da9052_reg_update(%struct.da9052*, i32, i32, i32) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, i32) #1

declare dso_local i32 @da9052_group_write(%struct.da9052*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
