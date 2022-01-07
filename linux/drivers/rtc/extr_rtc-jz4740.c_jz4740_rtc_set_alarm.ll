; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.jz4740_rtc = type { i32 }

@JZ_REG_RTC_SEC_ALARM = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_AE = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_AF_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @jz4740_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4740_rtc*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.jz4740_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.jz4740_rtc* %9, %struct.jz4740_rtc** %6, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 1
  %12 = call i32 @rtc_tm_to_time64(i32* %11)
  %13 = call i32 @lower_32_bits(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %6, align 8
  %15 = load i32, i32* @JZ_REG_RTC_SEC_ALARM, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc* %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %6, align 8
  %22 = load i32, i32* @JZ_RTC_CTRL_AE, align 4
  %23 = load i32, i32* @JZ_RTC_CTRL_AF_IRQ, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @jz4740_rtc_ctrl_set_bits(%struct.jz4740_rtc* %21, i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.jz4740_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc*, i32, i32) #1

declare dso_local i32 @jz4740_rtc_ctrl_set_bits(%struct.jz4740_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
