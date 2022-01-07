; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.sunxi_rtc_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtc only supports year in range %u - %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SUNXI_RTC_HMS = common dso_local global i64 0, align 8
@SUNXI_RTC_YMD = common dso_local global i64 0, align 8
@SUNXI_LOSC_CTRL = common dso_local global i32 0, align 4
@SUNXI_LOSC_CTRL_RTC_HMS_ACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to set rtc time.\0A\00", align 1
@SUNXI_LOSC_CTRL_RTC_YMD_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sunxi_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.sunxi_rtc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sunxi_rtc_dev* @dev_get_drvdata(%struct.device* %10)
  store %struct.sunxi_rtc_dev* %11, %struct.sunxi_rtc_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1900
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %18 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %26 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ugt i32 %24, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %23, %2
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %39 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %151

46:                                               ; preds = %23
  %47 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %48 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i64 @SUNXI_YEAR_OFF(%struct.TYPE_2__* %49)
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SUNXI_DATE_SET_DAY_VALUE(i32 %63)
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SUNXI_DATE_SET_MON_VALUE(i32 %67)
  %69 = or i32 %64, %68
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %74 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SUNXI_DATE_SET_YEAR_VALUE(i32 %72, i32 %77)
  %79 = or i32 %69, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @is_leap_year(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %46
  %84 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %85 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SUNXI_LEAP_SET_VALUE(i32 1, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %83, %46
  %93 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %94 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @SUNXI_TIME_SET_SEC_VALUE(i32 %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SUNXI_TIME_SET_MIN_VALUE(i32 %99)
  %101 = or i32 %96, %100
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SUNXI_TIME_SET_HOUR_VALUE(i32 %104)
  %106 = or i32 %101, %105
  store i32 %106, i32* %8, align 4
  %107 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %108 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SUNXI_RTC_HMS, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 0, i64 %111)
  %113 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %114 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SUNXI_RTC_YMD, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 0, i64 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %121 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SUNXI_RTC_HMS, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 %119, i64 %124)
  %126 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %127 = load i32, i32* @SUNXI_LOSC_CTRL, align 4
  %128 = load i32, i32* @SUNXI_LOSC_CTRL_RTC_HMS_ACC, align 4
  %129 = call i64 @sunxi_rtc_wait(%struct.sunxi_rtc_dev* %126, i32 %127, i32 %128, i32 50)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %92
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %151

134:                                              ; preds = %92
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %137 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SUNXI_RTC_YMD, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  %142 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %143 = load i32, i32* @SUNXI_LOSC_CTRL, align 4
  %144 = load i32, i32* @SUNXI_LOSC_CTRL_RTC_YMD_ACC, align 4
  %145 = call i64 @sunxi_rtc_wait(%struct.sunxi_rtc_dev* %142, i32 %143, i32 %144, i32 50)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %151

150:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %147, %131, %31
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.sunxi_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @SUNXI_YEAR_OFF(%struct.TYPE_2__*) #1

declare dso_local i32 @SUNXI_DATE_SET_DAY_VALUE(i32) #1

declare dso_local i32 @SUNXI_DATE_SET_MON_VALUE(i32) #1

declare dso_local i32 @SUNXI_DATE_SET_YEAR_VALUE(i32, i32) #1

declare dso_local i64 @is_leap_year(i32) #1

declare dso_local i32 @SUNXI_LEAP_SET_VALUE(i32, i32) #1

declare dso_local i32 @SUNXI_TIME_SET_SEC_VALUE(i32) #1

declare dso_local i32 @SUNXI_TIME_SET_MIN_VALUE(i32) #1

declare dso_local i32 @SUNXI_TIME_SET_HOUR_VALUE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @sunxi_rtc_wait(%struct.sunxi_rtc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
