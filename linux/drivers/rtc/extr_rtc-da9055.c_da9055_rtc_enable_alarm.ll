; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_enable_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_enable_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DA9055_REG_ALARM_Y = common dso_local global i32 0, align 4
@DA9055_RTC_ALM_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to enable ALM: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to disable ALM: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9055_rtc*, i32)* @da9055_rtc_enable_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_enable_alarm(%struct.da9055_rtc* %0, i32 %1) #0 {
  %3 = alloca %struct.da9055_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.da9055_rtc* %0, %struct.da9055_rtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load %struct.da9055_rtc*, %struct.da9055_rtc** %3, align 8
  %10 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* @DA9055_REG_ALARM_Y, align 4
  %13 = load i32, i32* @DA9055_RTC_ALM_EN, align 4
  %14 = load i32, i32* @DA9055_RTC_ALM_EN, align 4
  %15 = call i32 @da9055_reg_update(%struct.TYPE_2__* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %8
  %19 = load %struct.da9055_rtc*, %struct.da9055_rtc** %3, align 8
  %20 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %18, %8
  %27 = load %struct.da9055_rtc*, %struct.da9055_rtc** %3, align 8
  %28 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.da9055_rtc*, %struct.da9055_rtc** %3, align 8
  %31 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* @DA9055_REG_ALARM_Y, align 4
  %34 = load i32, i32* @DA9055_RTC_ALM_EN, align 4
  %35 = call i32 @da9055_reg_update(%struct.TYPE_2__* %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.da9055_rtc*, %struct.da9055_rtc** %3, align 8
  %40 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %29
  %47 = load %struct.da9055_rtc*, %struct.da9055_rtc** %3, align 8
  %48 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @da9055_reg_update(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
