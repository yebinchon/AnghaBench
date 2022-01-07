; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cdns_rtc = type { i64 }

@EIO = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_D = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_M = common dso_local global i32 0, align 4
@CDNS_RTC_MAX_REGS_TRIES = common dso_local global i32 0, align 4
@CDNS_RTC_TIMAR = common dso_local global i64 0, align 8
@CDNS_RTC_CALAR = common dso_local global i64 0, align 8
@CDNS_RTC_STSR = common dso_local global i64 0, align 8
@CDNS_RTC_STSR_VTA_VCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cdns_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.cdns_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.cdns_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.cdns_rtc* %12, %struct.cdns_rtc** %5, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @cdns_rtc_alarm_irq_enable(%struct.device* %15, i32 0)
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = call i32 @cdns_rtc_time2reg(%struct.TYPE_2__* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @CDNS_RTC_CAL_D, align 4
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bin2bcd(i64 %24)
  %26 = call i32 @FIELD_PREP(i32 %20, i32 %25)
  %27 = load i32, i32* @CDNS_RTC_CAL_M, align 4
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @bin2bcd(i64 %32)
  %34 = call i32 @FIELD_PREP(i32 %27, i32 %33)
  %35 = or i32 %26, %34
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %68, %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CDNS_RTC_MAX_REGS_TRIES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %43 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CDNS_RTC_TIMAR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %50 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CDNS_RTC_CALAR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CDNS_RTC_STSR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @CDNS_RTC_STSR_VTA_VCA, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CDNS_RTC_STSR_VTA_VCA, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %71

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %36

71:                                               ; preds = %66, %36
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cdns_rtc_alarm_irq_enable(%struct.device* %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.cdns_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cdns_rtc_alarm_irq_enable(%struct.device*, i32) #1

declare dso_local i32 @cdns_rtc_time2reg(%struct.TYPE_2__*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
