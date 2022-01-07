; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8* }
%struct.davinci_rtc = type { i32 }

@davinci_rtc_lock = common dso_local global i32 0, align 4
@PRTCSS_RTC_SEC = common dso_local global i32 0, align 4
@PRTCSS_RTC_MIN = common dso_local global i32 0, align 4
@PRTCSS_RTC_HOUR = common dso_local global i32 0, align 4
@PRTCSS_RTC_DAY0 = common dso_local global i32 0, align 4
@PRTCSS_RTC_DAY1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @davinci_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.davinci_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.davinci_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.davinci_rtc* %12, %struct.davinci_rtc** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @davinci_rtc_lock, i64 %13)
  %15 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %16 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %15)
  %17 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %18 = load i32, i32* @PRTCSS_RTC_SEC, align 4
  %19 = call i32 @rtcss_read(%struct.davinci_rtc* %17, i32 %18)
  %20 = call i8* @bcd2bin(i32 %19)
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %24 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %23)
  %25 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %26 = load i32, i32* @PRTCSS_RTC_MIN, align 4
  %27 = call i32 @rtcss_read(%struct.davinci_rtc* %25, i32 %26)
  %28 = call i8* @bcd2bin(i32 %27)
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %32 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %31)
  %33 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %34 = load i32, i32* @PRTCSS_RTC_HOUR, align 4
  %35 = call i32 @rtcss_read(%struct.davinci_rtc* %33, i32 %34)
  %36 = call i8* @bcd2bin(i32 %35)
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %40 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %39)
  %41 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %42 = load i32, i32* @PRTCSS_RTC_DAY0, align 4
  %43 = call i32 @rtcss_read(%struct.davinci_rtc* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %45 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %44)
  %46 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %47 = load i32, i32* @PRTCSS_RTC_DAY1, align 4
  %48 = call i32 @rtcss_read(%struct.davinci_rtc* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @davinci_rtc_lock, i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 8
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = call i64 @convertfromdays(i32 %59, %struct.rtc_time* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %2
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.davinci_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc*) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @rtcss_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @convertfromdays(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
