; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.cros_ec_rtc = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }

@EC_CMD_RTC_GET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"error getting time: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @cros_ec_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.cros_ec_rtc*, align 8
  %7 = alloca %struct.cros_ec_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.cros_ec_rtc* %11, %struct.cros_ec_rtc** %6, align 8
  %12 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %12, i32 0, i32 0
  %14 = load %struct.cros_ec_device*, %struct.cros_ec_device** %13, align 8
  store %struct.cros_ec_device* %14, %struct.cros_ec_device** %7, align 8
  %15 = load %struct.cros_ec_device*, %struct.cros_ec_device** %7, align 8
  %16 = load i32, i32* @EC_CMD_RTC_GET_VALUE, align 4
  %17 = call i32 @cros_ec_rtc_get(%struct.cros_ec_device* %15, i32 %16, i32* %9)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = call i32 @rtc_time64_to_tm(i32 %26, %struct.rtc_time* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.cros_ec_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cros_ec_rtc_get(%struct.cros_ec_device*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
