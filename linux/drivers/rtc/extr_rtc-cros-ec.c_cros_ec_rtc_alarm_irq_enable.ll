; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cros_ec_rtc = type { i64, %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }

@EC_CMD_RTC_GET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error getting time: %d\0A\00", align 1
@EC_RTC_ALARM_CLEAR = common dso_local global i64 0, align 8
@EC_CMD_RTC_SET_ALARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error restoring alarm: %d\0A\00", align 1
@EC_CMD_RTC_GET_ALARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"error saving alarm: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error disabling alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @cros_ec_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cros_ec_rtc*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.cros_ec_rtc* %13, %struct.cros_ec_rtc** %6, align 8
  %14 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %14, i32 0, i32 1
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %15, align 8
  store %struct.cros_ec_device* %16, %struct.cros_ec_device** %7, align 8
  %17 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %18 = load i32, i32* @EC_CMD_RTC_GET_VALUE, align 4
  %19 = call i32 @cros_ec_rtc_get(%struct.cros_ec_device* %17, i32 %18, i64* %9)
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
  br label %98

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %32 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @EC_RTC_ALARM_CLEAR, align 8
  store i64 %37, i64* %10, align 8
  br label %44

38:                                               ; preds = %30
  %39 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %40 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %38, %36
  %45 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %46 = load i32, i32* @EC_CMD_RTC_SET_ALARM, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @cros_ec_rtc_set(%struct.cros_ec_device* %45, i32 %46, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %44
  br label %97

57:                                               ; preds = %27
  %58 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %59 = load i32, i32* @EC_CMD_RTC_GET_ALARM, align 4
  %60 = call i32 @cros_ec_rtc_get(%struct.cros_ec_device* %58, i32 %59, i64* %10)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %57
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i64, i64* @EC_RTC_ALARM_CLEAR, align 8
  %77 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %78 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %83

79:                                               ; preds = %68
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %82 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* @EC_RTC_ALARM_CLEAR, align 8
  store i64 %84, i64* %10, align 8
  %85 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %86 = load i32, i32* @EC_CMD_RTC_SET_ALARM, align 4
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @cros_ec_rtc_set(%struct.cros_ec_device* %85, i32 %86, i64 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %56
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %91, %63, %51, %22
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cros_ec_rtc_get(%struct.cros_ec_device*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @cros_ec_rtc_set(%struct.cros_ec_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
