; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.cros_ec_rtc = type { i64, %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }

@EC_CMD_RTC_GET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error getting time: %d\0A\00", align 1
@U32_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EC_RTC_ALARM_CLEAR = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@EC_CMD_RTC_SET_ALARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error setting alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cros_ec_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cros_ec_rtc*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.cros_ec_rtc* %13, %struct.cros_ec_rtc** %6, align 8
  %14 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %14, i32 0, i32 1
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %15, align 8
  store %struct.cros_ec_device* %16, %struct.cros_ec_device** %7, align 8
  %17 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %18 = load i32, i32* @EC_CMD_RTC_GET_VALUE, align 4
  %19 = call i32 @cros_ec_rtc_get(%struct.cros_ec_device* %17, i32 %18, i64* %10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %2
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 1
  %30 = call i64 @rtc_tm_to_time64(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @U32_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %33
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @EC_RTC_ALARM_CLEAR, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %49 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %61

50:                                               ; preds = %40
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ETIME, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %57, %45
  %62 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %63 = load i32, i32* @EC_CMD_RTC_SET_ALARM, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @cros_ec_rtc_set(%struct.cros_ec_device* %62, i32 %63, i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %54, %37, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cros_ec_rtc_get(%struct.cros_ec_device*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @cros_ec_rtc_set(%struct.cros_ec_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
