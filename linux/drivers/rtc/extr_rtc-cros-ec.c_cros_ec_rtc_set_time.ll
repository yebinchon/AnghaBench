; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.cros_ec_rtc = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }

@U32_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EC_CMD_RTC_SET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error setting time: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @cros_ec_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.cros_ec_rtc*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.cros_ec_rtc* %11, %struct.cros_ec_rtc** %6, align 8
  %12 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %12, i32 0, i32 0
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %13, align 8
  store %struct.cros_ec_device* %14, %struct.cros_ec_device** %7, align 8
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @U32_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %19
  %27 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %28 = load i32, i32* @EC_CMD_RTC_SET_VALUE, align 4
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @cros_ec_rtc_set(%struct.cros_ec_device* %27, i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @cros_ec_rtc_set(%struct.cros_ec_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
