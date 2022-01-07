; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_rtc = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i64 }

@DA9052_GET_TIME_RETRIES = common dso_local global i32 0, align 4
@DA9052_ALARM_MI_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to group read ALM: %d\0A\00", align 1
@DA9052_RTC_YEAR = common dso_local global i32 0, align 4
@DA9052_RTC_MONTH = common dso_local global i32 0, align 4
@DA9052_RTC_DAY = common dso_local global i32 0, align 4
@DA9052_RTC_HOUR = common dso_local global i32 0, align 4
@DA9052_RTC_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Timed out reading alarm time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_rtc*, %struct.rtc_time*)* @da9052_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_read_alarm(%struct.da9052_rtc* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052_rtc*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x [5 x i32]], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.da9052_rtc* %0, %struct.da9052_rtc** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* @DA9052_GET_TIME_RETRIES, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %12 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DA9052_ALARM_MI_REG, align 4
  %15 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %17 = call i32 @da9052_group_read(i32 %13, i32 %14, i32 5, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.da9052_rtc*, i8*, ...) @rtc_err(%struct.da9052_rtc* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %97, %25
  %27 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %28 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DA9052_ALARM_MI_REG, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 %32
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %33, i64 0, i64 0
  %35 = call i32 @da9052_group_read(i32 %29, i32 %30, i32 5, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.da9052_rtc*, i8*, ...) @rtc_err(%struct.da9052_rtc* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %106

43:                                               ; preds = %26
  %44 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %44, i64 0, i64 0
  %46 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 1
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %46, i64 0, i64 0
  %48 = call i64 @memcmp(i32* %45, i32* %47, i32 5)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %43
  %51 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %51, i64 0, i64 4
  %53 = load i32, i32* %52, align 16
  %54 = load i32, i32* @DA9052_RTC_YEAR, align 4
  %55 = and i32 %53, %54
  %56 = add nsw i32 %55, 100
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %59, i64 0, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DA9052_RTC_MONTH, align 4
  %63 = and i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %67, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DA9052_RTC_DAY, align 4
  %71 = and i32 %69, %70
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %74, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DA9052_RTC_HOUR, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %7, i64 0, i64 0
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %81, i64 0, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = load i32, i32* @DA9052_RTC_MIN, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %91 = call i32 @rtc_valid_tm(%struct.rtc_time* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %106

93:                                               ; preds = %43
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 1, %94
  store i32 %95, i32* %8, align 4
  %96 = call i32 @msleep(i32 20)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %26, label %101

101:                                              ; preds = %97
  %102 = load %struct.da9052_rtc*, %struct.da9052_rtc** %4, align 8
  %103 = call i32 (%struct.da9052_rtc*, i8*, ...) @rtc_err(%struct.da9052_rtc* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %50, %38, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @da9052_group_read(i32, i32, i32, i32*) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @rtc_valid_tm(%struct.rtc_time*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
