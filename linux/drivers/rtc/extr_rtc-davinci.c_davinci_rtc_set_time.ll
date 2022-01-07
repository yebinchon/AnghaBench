; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32 }
%struct.davinci_rtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@davinci_rtc_lock = common dso_local global i32 0, align 4
@PRTCSS_RTC_SEC = common dso_local global i32 0, align 4
@PRTCSS_RTC_MIN = common dso_local global i32 0, align 4
@PRTCSS_RTC_HOUR = common dso_local global i32 0, align 4
@PRTCSS_RTC_DAY0 = common dso_local global i32 0, align 4
@PRTCSS_RTC_DAY1 = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_CAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @davinci_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.davinci_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.davinci_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.davinci_rtc* %11, %struct.davinci_rtc** %6, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = call i64 @convert2days(i32* %7, %struct.rtc_time* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @davinci_rtc_lock, i64 %19)
  %21 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %22 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %21)
  %23 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bin2bcd(i32 %26)
  %28 = load i32, i32* @PRTCSS_RTC_SEC, align 4
  %29 = call i32 @rtcss_write(%struct.davinci_rtc* %23, i32 %27, i32 %28)
  %30 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %31 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %30)
  %32 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bin2bcd(i32 %35)
  %37 = load i32, i32* @PRTCSS_RTC_MIN, align 4
  %38 = call i32 @rtcss_write(%struct.davinci_rtc* %32, i32 %36, i32 %37)
  %39 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %40 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %39)
  %41 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin2bcd(i32 %44)
  %46 = load i32, i32* @PRTCSS_RTC_HOUR, align 4
  %47 = call i32 @rtcss_write(%struct.davinci_rtc* %41, i32 %45, i32 %46)
  %48 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %49 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %48)
  %50 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 255
  %53 = load i32, i32* @PRTCSS_RTC_DAY0, align 4
  %54 = call i32 @rtcss_write(%struct.davinci_rtc* %50, i32 %52, i32 %53)
  %55 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %56 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %55)
  %57 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  %61 = load i32, i32* @PRTCSS_RTC_DAY1, align 4
  %62 = call i32 @rtcss_write(%struct.davinci_rtc* %57, i32 %60, i32 %61)
  %63 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %64 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %65 = call i32 @rtcss_read(%struct.davinci_rtc* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @PRTCSS_RTC_CCTRL_CAEN, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %72 = call i32 @rtcss_write(%struct.davinci_rtc* %69, i32 %70, i32 %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @davinci_rtc_lock, i64 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %18, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.davinci_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @convert2days(i32*, %struct.rtc_time*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc*) #1

declare dso_local i32 @rtcss_write(%struct.davinci_rtc*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @rtcss_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
