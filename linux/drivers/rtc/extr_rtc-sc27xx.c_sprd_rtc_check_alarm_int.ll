; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_check_alarm_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_check_alarm_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_rtc = type { i64, i32 }

@SPRD_RTC_SPG_VALUE = common dso_local global i64 0, align 8
@SPRD_RTC_POWEROFF_ALM_FLAG = common dso_local global i32 0, align 4
@SPRD_RTC_INT_EN = common dso_local global i64 0, align 8
@SPRD_RTC_ALARM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_rtc*)* @sprd_rtc_check_alarm_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_check_alarm_int(%struct.sprd_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sprd_rtc* %0, %struct.sprd_rtc** %3, align 8
  %6 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %10 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPRD_RTC_SPG_VALUE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @regmap_read(i32 %8, i64 %13, i32* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SPRD_RTC_POWEROFF_ALM_FLAG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %37

25:                                               ; preds = %19
  %26 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %27 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sprd_rtc*, %struct.sprd_rtc** %3, align 8
  %30 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SPRD_RTC_INT_EN, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %35 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %36 = call i32 @regmap_update_bits(i32 %28, i64 %33, i32 %34, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %25, %24, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
