; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.sprd_rtc = type { i32, i64, i32 }

@SPRD_RTC_TIME = common dso_local global i32 0, align 4
@SPRD_RTC_PWR_CTRL = common dso_local global i64 0, align 8
@SPRD_RTC_POWER_STS_CLEAR = common dso_local global i32 0, align 4
@SPRD_RTC_POWER_STS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sprd_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.sprd_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.sprd_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.sprd_rtc* %10, %struct.sprd_rtc** %6, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %12 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %14 = load i32, i32* @SPRD_RTC_TIME, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @sprd_rtc_set_secs(%struct.sprd_rtc* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %23 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %21
  %27 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %28 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPRD_RTC_PWR_CTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @SPRD_RTC_POWER_STS_CLEAR, align 4
  %36 = call i32 @regmap_write(i32 %29, i64 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %26
  %42 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %43 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %46 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPRD_RTC_PWR_CTRL, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* @SPRD_RTC_POWER_STS_VALID, align 4
  %51 = call i32 @regmap_write(i32 %44, i64 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %41
  %57 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %58 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %21
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %54, %39, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sprd_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @sprd_rtc_set_secs(%struct.sprd_rtc*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
