; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sc27xx.c_sprd_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.sprd_rtc = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@SPRD_RTC_ALARM = common dso_local global i32 0, align 4
@SPRD_RTC_INT_EN = common dso_local global i64 0, align 8
@SPRD_RTC_ALARM_EN = common dso_local global i32 0, align 4
@SPRD_RTC_INT_RAW_STS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sprd_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sprd_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.sprd_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.sprd_rtc* %11, %struct.sprd_rtc** %6, align 8
  %12 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %18 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = call i32 @sprd_rtc_read_aux_alarm(%struct.device* %32, %struct.rtc_wkalrm* %33)
  store i32 %34, i32* %3, align 4
  br label %94

35:                                               ; preds = %23, %16, %2
  %36 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %37 = load i32, i32* @SPRD_RTC_ALARM, align 4
  %38 = call i32 @sprd_rtc_get_secs(%struct.sprd_rtc* %36, i32 %37, i32* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 2
  %47 = call i32 @rtc_time64_to_tm(i32 %44, i32* %46)
  %48 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %49 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %52 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SPRD_RTC_INT_EN, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @regmap_read(i32 %50, i64 %55, i32* %9)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %94

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %72 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sprd_rtc*, %struct.sprd_rtc** %6, align 8
  %75 = getelementptr inbounds %struct.sprd_rtc, %struct.sprd_rtc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SPRD_RTC_INT_RAW_STS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @regmap_read(i32 %73, i64 %78, i32* %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %61
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %61
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @SPRD_RTC_ALARM_EN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %93 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %82, %59, %41, %31
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.sprd_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprd_rtc_read_aux_alarm(%struct.device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @sprd_rtc_get_secs(%struct.sprd_rtc*, i32, i32*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
