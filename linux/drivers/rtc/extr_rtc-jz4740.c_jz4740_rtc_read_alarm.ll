; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.jz4740_rtc = type { i32 }

@JZ_REG_RTC_SEC_ALARM = common dso_local global i32 0, align 4
@JZ_REG_RTC_CTRL = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_AE = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @jz4740_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.jz4740_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.jz4740_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.jz4740_rtc* %9, %struct.jz4740_rtc** %5, align 8
  %10 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %11 = load i32, i32* @JZ_REG_RTC_SEC_ALARM, align 4
  %12 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %14 = load i32, i32* @JZ_REG_RTC_CTRL, align 4
  %15 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @JZ_RTC_CTRL_AE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @JZ_RTC_CTRL_AF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 2
  %37 = call i32 @rtc_time64_to_tm(i32 %34, i32* %36)
  ret i32 0
}

declare dso_local %struct.jz4740_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
