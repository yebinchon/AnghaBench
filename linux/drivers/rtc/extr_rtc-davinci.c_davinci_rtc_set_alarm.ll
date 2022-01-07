; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time }
%struct.rtc_time = type { i64, i64, i64, i32, i32 }
%struct.davinci_rtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@davinci_rtc_lock = common dso_local global i32 0, align 4
@PRTCSS_RTC_AMIN = common dso_local global i32 0, align 4
@PRTCSS_RTC_AHOUR = common dso_local global i32 0, align 4
@PRTCSS_RTC_ADAY0 = common dso_local global i32 0, align 4
@PRTCSS_RTC_ADAY1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @davinci_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.davinci_rtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtc_time, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.davinci_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.davinci_rtc* %13, %struct.davinci_rtc** %6, align 8
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %2
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %19
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @davinci_rtc_read_time(%struct.device* %32, %struct.rtc_time* %9)
  %34 = call i32 @rtc_tm_to_time(%struct.rtc_time* %9, i64* %10)
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 0
  %52 = call i32 @rtc_tm_to_time(%struct.rtc_time* %51, i64* %11)
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %31
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 86400
  %59 = call i32 @rtc_time_to_tm(i64 %58, %struct.rtc_time* %9)
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 2
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %56, %31
  br label %76

76:                                               ; preds = %75, %25, %19, %2
  %77 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %77, i32 0, i32 0
  %79 = call i64 @convert2days(i32* %8, %struct.rtc_time* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %124

84:                                               ; preds = %76
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_lock_irqsave(i32* @davinci_rtc_lock, i64 %85)
  %87 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %88 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %87)
  %89 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %90 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bin2bcd(i32 %93)
  %95 = load i32, i32* @PRTCSS_RTC_AMIN, align 4
  %96 = call i32 @rtcss_write(%struct.davinci_rtc* %89, i32 %94, i32 %95)
  %97 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %98 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %97)
  %99 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %100 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %101 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bin2bcd(i32 %103)
  %105 = load i32, i32* @PRTCSS_RTC_AHOUR, align 4
  %106 = call i32 @rtcss_write(%struct.davinci_rtc* %99, i32 %104, i32 %105)
  %107 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %108 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %107)
  %109 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 255
  %112 = load i32, i32* @PRTCSS_RTC_ADAY0, align 4
  %113 = call i32 @rtcss_write(%struct.davinci_rtc* %109, i32 %111, i32 %112)
  %114 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %115 = call i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc* %114)
  %116 = load %struct.davinci_rtc*, %struct.davinci_rtc** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, 65280
  %119 = ashr i32 %118, 8
  %120 = load i32, i32* @PRTCSS_RTC_ADAY1, align 4
  %121 = call i32 @rtcss_write(%struct.davinci_rtc* %116, i32 %119, i32 %120)
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* @davinci_rtc_lock, i64 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %84, %81
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.davinci_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @davinci_rtc_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i64 @convert2days(i32*, %struct.rtc_time*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @davinci_rtcss_calendar_wait(%struct.davinci_rtc*) #1

declare dso_local i32 @rtcss_write(%struct.davinci_rtc*, i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
