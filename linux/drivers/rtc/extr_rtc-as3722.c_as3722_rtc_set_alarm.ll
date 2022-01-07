; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.as3722_rtc = type { %struct.as3722* }
%struct.as3722 = type { i32 }

@AS3722_RTC_START_YEAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Disable RTC alarm failed\0A\00", align 1
@AS3722_RTC_ALARM_SECOND_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"RTC_ALARM_SECOND block write failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @as3722_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.as3722_rtc*, align 8
  %7 = alloca %struct.as3722*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.as3722_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.as3722_rtc* %11, %struct.as3722_rtc** %6, align 8
  %12 = load %struct.as3722_rtc*, %struct.as3722_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %12, i32 0, i32 0
  %14 = load %struct.as3722*, %struct.as3722** %13, align 8
  store %struct.as3722* %14, %struct.as3722** %7, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AS3722_RTC_START_YEAR, align 4
  %20 = sub nsw i32 %19, 1900
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @as3722_rtc_alarm_irq_enable(%struct.device* %26, i64 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %25
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %36 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %36, i32 0, i32 1
  %38 = call i32 @as3722_time_to_reg(i32* %35, %struct.TYPE_2__* %37)
  %39 = load %struct.as3722*, %struct.as3722** %7, align 8
  %40 = load i32, i32* @AS3722_RTC_ALARM_SECOND_REG, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %42 = call i32 @as3722_block_write(%struct.as3722* %39, i32 %40, i32 6, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %34
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @as3722_rtc_alarm_irq_enable(%struct.device* %56, i64 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %45, %30, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.as3722_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @as3722_rtc_alarm_irq_enable(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @as3722_time_to_reg(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @as3722_block_write(%struct.as3722*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
