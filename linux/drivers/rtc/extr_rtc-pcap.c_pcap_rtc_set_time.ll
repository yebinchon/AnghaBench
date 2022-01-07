; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcap.c_pcap_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pcap_rtc = type { i32 }

@SEC_PER_DAY = common dso_local global i64 0, align 8
@PCAP_REG_RTC_TOD = common dso_local global i32 0, align 4
@PCAP_REG_RTC_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcap_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.pcap_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pcap_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcap_rtc* %10, %struct.pcap_rtc** %5, align 8
  %11 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %12 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @SEC_PER_DAY, align 8
  %15 = urem i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCAP_REG_RTC_TOD, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @ezx_pcap_write(i32 %18, i32 %19, i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @SEC_PER_DAY, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.pcap_rtc*, %struct.pcap_rtc** %5, align 8
  %26 = getelementptr inbounds %struct.pcap_rtc, %struct.pcap_rtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCAP_REG_RTC_DAY, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @ezx_pcap_write(i32 %27, i32 %28, i64 %29)
  ret i32 0
}

declare dso_local %struct.pcap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @ezx_pcap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
