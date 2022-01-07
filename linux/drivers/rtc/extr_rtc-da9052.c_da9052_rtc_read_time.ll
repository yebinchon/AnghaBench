; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9052.c_da9052_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.da9052_rtc = type { i32 }

@DA9052_GET_TIME_RETRIES = common dso_local global i32 0, align 4
@DA9052_COUNT_S_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read RTC time : %d\0A\00", align 1
@DA9052_RTC_YEAR = common dso_local global i32 0, align 4
@DA9052_RTC_MONTH = common dso_local global i32 0, align 4
@DA9052_RTC_DAY = common dso_local global i32 0, align 4
@DA9052_RTC_HOUR = common dso_local global i32 0, align 4
@DA9052_RTC_MIN = common dso_local global i32 0, align 4
@DA9052_RTC_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Timed out reading time\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @da9052_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.da9052_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x [6 x i32]], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.da9052_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.da9052_rtc* %12, %struct.da9052_rtc** %6, align 8
  store i32 1, i32* %9, align 4
  %13 = load i32, i32* @DA9052_GET_TIME_RETRIES, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DA9052_COUNT_S_REG, align 4
  %18 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %20 = call i32 @da9052_group_read(i32 %16, i32 %17, i32 6, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.da9052_rtc*, i8*, ...) @rtc_err(%struct.da9052_rtc* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %111

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %102, %28
  %30 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.da9052_rtc, %struct.da9052_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DA9052_COUNT_S_REG, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 %35
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %36, i64 0, i64 0
  %38 = call i32 @da9052_group_read(i32 %32, i32 %33, i32 6, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.da9052_rtc*, i8*, ...) @rtc_err(%struct.da9052_rtc* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %111

46:                                               ; preds = %29
  %47 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %47, i64 0, i64 0
  %49 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 1
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %49, i64 0, i64 0
  %51 = call i64 @memcmp(i32* %48, i32* %50, i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %46
  %54 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %54, i64 0, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DA9052_RTC_YEAR, align 4
  %58 = and i32 %56, %57
  %59 = add nsw i32 %58, 100
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %62, i64 0, i64 4
  %64 = load i32, i32* %63, align 16
  %65 = load i32, i32* @DA9052_RTC_MONTH, align 4
  %66 = and i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %70, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DA9052_RTC_DAY, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %77, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DA9052_RTC_HOUR, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %84, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DA9052_RTC_MIN, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %8, i64 0, i64 0
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = load i32, i32* @DA9052_RTC_SEC, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %3, align 4
  br label %111

98:                                               ; preds = %46
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 1, %99
  store i32 %100, i32* %9, align 4
  %101 = call i32 @msleep(i32 20)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %10, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %29, label %106

106:                                              ; preds = %102
  %107 = load %struct.da9052_rtc*, %struct.da9052_rtc** %6, align 8
  %108 = call i32 (%struct.da9052_rtc*, i8*, ...) @rtc_err(%struct.da9052_rtc* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %53, %41, %23
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.da9052_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9052_group_read(i32, i32, i32, i32*) #1

declare dso_local i32 @rtc_err(%struct.da9052_rtc*, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
