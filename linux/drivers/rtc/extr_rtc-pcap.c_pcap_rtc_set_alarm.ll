; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32 }
%struct.pcap_rtc = type { i32 }

@SEC_PER_DAY = common dso_local global i64 0, align 8
@PCAP_REG_RTC_TODA = common dso_local global i32 0, align 4
@PCAP_REG_RTC_DAYA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcap_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.pcap_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pcap_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcap_rtc* %10, %struct.pcap_rtc** %5, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 0
  %13 = call i64 @rtc_tm_to_time64(i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @SEC_PER_DAY, align 8
  %16 = urem i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCAP_REG_RTC_TODA, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @ezx_pcap_write(i32 %19, i32 %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @SEC_PER_DAY, align 8
  %25 = udiv i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCAP_REG_RTC_DAYA, align 4
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @ezx_pcap_write(i32 %28, i32 %29, i64 %30)
  ret i32 0
}

declare dso_local %struct.pcap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @ezx_pcap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
