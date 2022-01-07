; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.sun6i_rtc_dev = type { i64 }

@SUN6I_YEAR_MIN = common dso_local global i32 0, align 4
@SUN6I_YEAR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"rtc only supports year in range %d - %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SUN6I_YEAR_OFF = common dso_local global i64 0, align 8
@SUN6I_LOSC_CTRL = common dso_local global i32 0, align 4
@SUN6I_LOSC_CTRL_ACC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rtc is still busy.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SUN6I_RTC_HMS = common dso_local global i64 0, align 8
@SUN6I_LOSC_CTRL_RTC_HMS_ACC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to set rtc time.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SUN6I_RTC_YMD = common dso_local global i64 0, align 8
@SUN6I_LOSC_CTRL_RTC_YMD_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sun6i_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.sun6i_rtc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sun6i_rtc_dev* @dev_get_drvdata(%struct.device* %10)
  store %struct.sun6i_rtc_dev* %11, %struct.sun6i_rtc_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1900
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SUN6I_YEAR_MIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @SUN6I_YEAR_MAX, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @SUN6I_YEAR_MIN, align 4
  %26 = load i32, i32* @SUN6I_YEAR_MAX, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %125

30:                                               ; preds = %19
  %31 = load i64, i64* @SUN6I_YEAR_OFF, align 8
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SUN6I_DATE_SET_DAY_VALUE(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SUN6I_DATE_SET_MON_VALUE(i32 %48)
  %50 = or i32 %45, %49
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SUN6I_DATE_SET_YEAR_VALUE(i32 %53)
  %55 = or i32 %50, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @is_leap_year(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %30
  %60 = call i32 @SUN6I_LEAP_SET_VALUE(i32 1)
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %30
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SUN6I_TIME_SET_SEC_VALUE(i32 %66)
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SUN6I_TIME_SET_MIN_VALUE(i32 %70)
  %72 = or i32 %67, %71
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SUN6I_TIME_SET_HOUR_VALUE(i32 %75)
  %77 = or i32 %72, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %79 = load i32, i32* @SUN6I_LOSC_CTRL, align 4
  %80 = load i32, i32* @SUN6I_LOSC_CTRL_ACC_MASK, align 4
  %81 = call i64 @sun6i_rtc_wait(%struct.sun6i_rtc_dev* %78, i32 %79, i32 %80, i32 50)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %63
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %125

88:                                               ; preds = %63
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %91 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SUN6I_RTC_HMS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %97 = load i32, i32* @SUN6I_LOSC_CTRL, align 4
  %98 = load i32, i32* @SUN6I_LOSC_CTRL_RTC_HMS_ACC, align 4
  %99 = call i64 @sun6i_rtc_wait(%struct.sun6i_rtc_dev* %96, i32 %97, i32 %98, i32 50)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @ETIMEDOUT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %125

106:                                              ; preds = %88
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %109 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SUN6I_RTC_YMD, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 %107, i64 %112)
  %114 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %6, align 8
  %115 = load i32, i32* @SUN6I_LOSC_CTRL, align 4
  %116 = load i32, i32* @SUN6I_LOSC_CTRL_RTC_YMD_ACC, align 4
  %117 = call i64 @sun6i_rtc_wait(%struct.sun6i_rtc_dev* %114, i32 %115, i32 %116, i32 50)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %106
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ETIMEDOUT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %125

124:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %119, %101, %83, %23
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.sun6i_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @SUN6I_DATE_SET_DAY_VALUE(i32) #1

declare dso_local i32 @SUN6I_DATE_SET_MON_VALUE(i32) #1

declare dso_local i32 @SUN6I_DATE_SET_YEAR_VALUE(i32) #1

declare dso_local i64 @is_leap_year(i32) #1

declare dso_local i32 @SUN6I_LEAP_SET_VALUE(i32) #1

declare dso_local i32 @SUN6I_TIME_SET_SEC_VALUE(i32) #1

declare dso_local i32 @SUN6I_TIME_SET_MIN_VALUE(i32) #1

declare dso_local i32 @SUN6I_TIME_SET_HOUR_VALUE(i32) #1

declare dso_local i64 @sun6i_rtc_wait(%struct.sun6i_rtc_dev*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
