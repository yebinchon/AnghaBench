; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32 }
%struct.cros_ec_rtc = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }

@EC_CMD_RTC_GET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error getting time: %d\0A\00", align 1
@EC_CMD_RTC_GET_ALARM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error getting alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cros_ec_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cros_ec_rtc*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.cros_ec_rtc* %12, %struct.cros_ec_rtc** %6, align 8
  %13 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %14 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %13, i32 0, i32 0
  %15 = load %struct.cros_ec_device*, %struct.cros_ec_device** %14, align 8
  store %struct.cros_ec_device* %15, %struct.cros_ec_device** %7, align 8
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %17 = load i32, i32* @EC_CMD_RTC_GET_VALUE, align 4
  %18 = call i32 @cros_ec_rtc_get(%struct.cros_ec_device* %16, i32 %17, i64* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %28 = load i32, i32* @EC_CMD_RTC_GET_ALARM, align 4
  %29 = call i32 @cros_ec_rtc_get(%struct.cros_ec_device* %27, i32 %28, i64* %10)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %26
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 0
  %43 = call i32 @rtc_time64_to_tm(i64 %40, i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %32, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cros_ec_rtc_get(%struct.cros_ec_device*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
