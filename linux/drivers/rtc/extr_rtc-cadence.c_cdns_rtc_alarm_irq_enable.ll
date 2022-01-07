; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cdns_rtc = type { i64 }

@CDNS_RTC_AEI_SEC = common dso_local global i32 0, align 4
@CDNS_RTC_AEI_MIN = common dso_local global i32 0, align 4
@CDNS_RTC_AEI_HOUR = common dso_local global i32 0, align 4
@CDNS_RTC_AEI_DATE = common dso_local global i32 0, align 4
@CDNS_RTC_AEI_MNTH = common dso_local global i32 0, align 4
@CDNS_RTC_AENR = common dso_local global i64 0, align 8
@CDNS_RTC_AEI_ALRM = common dso_local global i32 0, align 4
@CDNS_RTC_IENR = common dso_local global i64 0, align 8
@CDNS_RTC_IDISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @cdns_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.cdns_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.cdns_rtc* %7, %struct.cdns_rtc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load i32, i32* @CDNS_RTC_AEI_SEC, align 4
  %12 = load i32, i32* @CDNS_RTC_AEI_MIN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CDNS_RTC_AEI_HOUR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CDNS_RTC_AEI_DATE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CDNS_RTC_AEI_MNTH, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CDNS_RTC_AENR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @CDNS_RTC_AEI_ALRM, align 4
  %27 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CDNS_RTC_IENR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %35 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CDNS_RTC_AENR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 0, i64 %38)
  %40 = load i32, i32* @CDNS_RTC_AEI_ALRM, align 4
  %41 = load %struct.cdns_rtc*, %struct.cdns_rtc** %5, align 8
  %42 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CDNS_RTC_IDISR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %33, %10
  ret i32 0
}

declare dso_local %struct.cdns_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
