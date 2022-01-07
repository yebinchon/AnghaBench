; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.davinci_rtc = type { i32 }

@PRTCSS_RTC_CCTRL = common dso_local global i32 0, align 4
@davinci_rtc_lock = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_DAEN = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_HAEN = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_MAEN = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_ALMFLG = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_AIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @davinci_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.davinci_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.davinci_rtc* %9, %struct.davinci_rtc** %5, align 8
  %10 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %11 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %12 = call i32 @rtcss_read(%struct.davinci_rtc* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @davinci_rtc_lock, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @PRTCSS_RTC_CCTRL_DAEN, align 4
  %19 = load i32, i32* @PRTCSS_RTC_CCTRL_HAEN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PRTCSS_RTC_CCTRL_MAEN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PRTCSS_RTC_CCTRL_ALMFLG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PRTCSS_RTC_CCTRL_AIEN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @PRTCSS_RTC_CCTRL_AIEN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %17
  %35 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %36 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %35)
  %37 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %40 = call i32 @rtcss_write(%struct.davinci_rtc* %37, i32 %38, i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @davinci_rtc_lock, i64 %41)
  ret i32 0
}

declare dso_local %struct.davinci_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtcss_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc*) #1

declare dso_local i32 @rtcss_write(%struct.davinci_rtc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
