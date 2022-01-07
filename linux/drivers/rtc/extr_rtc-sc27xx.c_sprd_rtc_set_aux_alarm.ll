; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_aux_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_aux_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.sprd_rtc = type { i64, i32 }

@SPRD_RTC_INT_CLR = common dso_local global i64 0, align 8
@SPRD_RTC_AUXALM_EN = common dso_local global i32 0, align 4
@SPRD_RTC_AUX_ALARM = common dso_local global i32 0, align 4
@SPRD_RTC_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sprd_rtc_set_aux_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_set_aux_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sprd_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.sprd_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.sprd_rtc* %10, %struct.sprd_rtc** %6, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = call i32 @rtc_tm_to_time64(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %18 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPRD_RTC_INT_CLR, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @SPRD_RTC_AUXALM_EN, align 4
  %23 = call i32 @regmap_write(i32 %16, i64 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %2
  %29 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %30 = load i32, i32* @SPRD_RTC_AUX_ALARM, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @sprd_rtc_set_secs(%struct.sprd_rtc* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %67

37:                                               ; preds = %28
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %44 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPRD_RTC_INT_EN, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @SPRD_RTC_AUXALM_EN, align 4
  %52 = load i32, i32* @SPRD_RTC_AUXALM_EN, align 4
  %53 = call i32 @regmap_update_bits(i32 %45, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %65

54:                                               ; preds = %37
  %55 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %56 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %59 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPRD_RTC_INT_EN, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @SPRD_RTC_AUXALM_EN, align 4
  %64 = call i32 @regmap_update_bits(i32 %57, i64 %62, i32 %63, i32 0)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %54, %42
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %35, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.sprd_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @sprd_rtc_set_secs(%struct.sprd_rtc*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
