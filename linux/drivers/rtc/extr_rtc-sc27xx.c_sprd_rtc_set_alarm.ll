; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.sprd_rtc = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtc_time = type { i32 }

@SPRD_RTC_INT_CLR = common dso_local global i64 0, align 8
@SPRD_RTC_ALARM_EN = common dso_local global i32 0, align 4
@SPRD_RTC_ALARM = common dso_local global i32 0, align 4
@SPRD_RTC_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sprd_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sprd_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sprd_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.sprd_rtc* %11, %struct.sprd_rtc** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  %14 = call i32 @rtc_tm_to_time64(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rtc_ktime_to_tm(i32 %21)
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = call i64 @rtc_tm_sub(%struct.rtc_time* %8, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31, %2
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = call i32 @sprd_rtc_set_aux_alarm(%struct.device* %37, %struct.rtc_wkalrm* %38)
  store i32 %39, i32* %3, align 4
  br label %103

40:                                               ; preds = %31
  %41 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %42 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %45 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPRD_RTC_INT_CLR, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %50 = call i32 @regmap_write(i32 %43, i64 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %40
  %56 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %57 = load i32, i32* @SPRD_RTC_ALARM, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sprd_rtc_set_secs(%struct.sprd_rtc* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %103

64:                                               ; preds = %55
  %65 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %71 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %74 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SPRD_RTC_INT_EN, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %79 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %80 = call i32 @regmap_update_bits(i32 %72, i64 %77, i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %103

85:                                               ; preds = %69
  %86 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %87 = call i32 @sprd_rtc_lock_alarm(%struct.sprd_rtc* %86, i32 0)
  store i32 %87, i32* %9, align 4
  br label %101

88:                                               ; preds = %64
  %89 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %90 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %93 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SPRD_RTC_INT_EN, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %98 = call i32 @regmap_update_bits(i32 %91, i64 %96, i32 %97, i32 0)
  %99 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %100 = call i32 @sprd_rtc_lock_alarm(%struct.sprd_rtc* %99, i32 1)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %88, %85
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %83, %62, %53, %36
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.sprd_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @rtc_ktime_to_tm(i32) #1

declare dso_local i64 @rtc_tm_sub(%struct.rtc_time*, i32*) #1

declare dso_local i32 @sprd_rtc_set_aux_alarm(%struct.device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @sprd_rtc_set_secs(%struct.sprd_rtc*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @sprd_rtc_lock_alarm(%struct.sprd_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
