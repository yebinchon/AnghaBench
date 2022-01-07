; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i64 }
%struct.davinci_rtc = type { i32 }

@davinci_rtc_lock = common dso_local global i32 0, align 4
@PRTCSS_RTC_AMIN = common dso_local global i32 0, align 4
@PRTCSS_RTC_AHOUR = common dso_local global i32 0, align 4
@PRTCSS_RTC_ADAY0 = common dso_local global i32 0, align 4
@PRTCSS_RTC_ADAY1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_AIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @davinci_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.davinci_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.davinci_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.davinci_rtc* %12, %struct.davinci_rtc** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @davinci_rtc_lock, i64 %16)
  %18 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %19 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %18)
  %20 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %21 = load i32, i32* @PRTCSS_RTC_AMIN, align 4
  %22 = call i32 @rtcss_read(%struct.davinci_rtc* %20, i32 %21)
  %23 = call i8* @bcd2bin(i32 %22)
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %28 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %27)
  %29 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %30 = load i32, i32* @PRTCSS_RTC_AHOUR, align 4
  %31 = call i32 @rtcss_read(%struct.davinci_rtc* %29, i32 %30)
  %32 = call i8* @bcd2bin(i32 %31)
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %37 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %36)
  %38 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %39 = load i32, i32* @PRTCSS_RTC_ADAY0, align 4
  %40 = call i32 @rtcss_read(%struct.davinci_rtc* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %42 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %41)
  %43 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %44 = load i32, i32* @PRTCSS_RTC_ADAY1, align 4
  %45 = call i32 @rtcss_read(%struct.davinci_rtc* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @davinci_rtc_lock, i64 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 2
  %59 = call i64 @convertfromdays(i32 %56, %struct.TYPE_2__* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %2
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %89

64:                                               ; preds = %2
  %65 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %66 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %67 = call i32 @rtcss_read(%struct.davinci_rtc* %65, i32 %66)
  %68 = load i32, i32* @PRTCSS_RTC_CCTRL_AIEN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %64
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i64 @device_may_wakeup(%struct.device* %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %64
  %85 = phi i1 [ false, %64 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %61
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.davinci_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc*) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtcss_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @convertfromdays(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
