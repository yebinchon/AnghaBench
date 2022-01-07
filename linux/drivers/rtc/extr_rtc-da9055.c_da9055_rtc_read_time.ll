; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.da9055_rtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DA9055_REG_COUNT_S = common dso_local global i32 0, align 4
@DA9055_RTC_READ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read RTC time : %d\0A\00", align 1
@DA9055_RTC_YEAR = common dso_local global i32 0, align 4
@DA9055_RTC_MONTH = common dso_local global i32 0, align 4
@DA9055_RTC_DAY = common dso_local global i32 0, align 4
@DA9055_RTC_HOUR = common dso_local global i32 0, align 4
@DA9055_RTC_MIN = common dso_local global i32 0, align 4
@DA9055_RTC_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @da9055_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.da9055_rtc*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.da9055_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.da9055_rtc* %10, %struct.da9055_rtc** %6, align 8
  %11 = load %struct.da9055_rtc*, %struct.da9055_rtc** %6, align 8
  %12 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* @DA9055_REG_COUNT_S, align 4
  %15 = call i32 @da9055_reg_read(%struct.TYPE_3__* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %85

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DA9055_RTC_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %20
  %29 = load %struct.da9055_rtc*, %struct.da9055_rtc** %6, align 8
  %30 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @DA9055_REG_COUNT_S, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %34 = call i32 @da9055_group_read(%struct.TYPE_3__* %31, i32 %32, i32 6, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.da9055_rtc*, %struct.da9055_rtc** %6, align 8
  %39 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %85

46:                                               ; preds = %28
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DA9055_RTC_YEAR, align 4
  %50 = and i32 %48, %49
  %51 = add nsw i32 %50, 100
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = load i32, i32* @DA9055_RTC_MONTH, align 4
  %57 = and i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DA9055_RTC_DAY, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DA9055_RTC_HOUR, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DA9055_RTC_MIN, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = load i32, i32* @DA9055_RTC_SEC, align 4
  %82 = and i32 %80, %81
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %46, %37, %25, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.da9055_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9055_reg_read(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @da9055_group_read(%struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
