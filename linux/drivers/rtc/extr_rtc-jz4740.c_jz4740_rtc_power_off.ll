; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_rtc = type { i64, i64, i32 }

@dev_for_power_off = common dso_local global i32 0, align 4
@JZ_RTC_WAKEUP_FILTER_MASK = common dso_local global i64 0, align 8
@JZ_REG_RTC_WAKEUP_FILTER = common dso_local global i32 0, align 4
@JZ_RTC_RESET_COUNTER_MASK = common dso_local global i64 0, align 8
@JZ_REG_RTC_RESET_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @jz4740_rtc_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_rtc_power_off() #0 {
  %1 = alloca %struct.jz4740_rtc*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @dev_for_power_off, align 4
  %6 = call %struct.jz4740_rtc* @dev_get_drvdata(i32 %5)
  store %struct.jz4740_rtc* %6, %struct.jz4740_rtc** %1, align 8
  %7 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %1, align 8
  %8 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_prepare_enable(i32 %9)
  %11 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %1, align 8
  %12 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @clk_get_rate(i32 %13)
  store i64 %14, i64* %2, align 8
  %15 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %1, align 8
  %16 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %2, align 8
  %19 = mul i64 %17, %18
  %20 = udiv i64 %19, 1000
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @JZ_RTC_WAKEUP_FILTER_MASK, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load i64, i64* @JZ_RTC_WAKEUP_FILTER_MASK, align 8
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %30

28:                                               ; preds = %0
  %29 = load i64, i64* @JZ_RTC_WAKEUP_FILTER_MASK, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %1, align 8
  %32 = load i32, i32* @JZ_REG_RTC_WAKEUP_FILTER, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc* %31, i32 %32, i64 %33)
  %35 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %1, align 8
  %36 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %2, align 8
  %39 = mul i64 %37, %38
  %40 = udiv i64 %39, 1000
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @JZ_RTC_RESET_COUNTER_MASK, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i64, i64* @JZ_RTC_RESET_COUNTER_MASK, align 8
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %4, align 8
  br label %50

48:                                               ; preds = %30
  %49 = load i64, i64* @JZ_RTC_RESET_COUNTER_MASK, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %1, align 8
  %52 = load i32, i32* @JZ_REG_RTC_RESET_COUNTER, align 4
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc* %51, i32 %52, i64 %53)
  %55 = load i32, i32* @dev_for_power_off, align 4
  %56 = call i32 @jz4740_rtc_poweroff(i32 %55)
  %57 = call i32 (...) @kernel_halt()
  ret void
}

declare dso_local %struct.jz4740_rtc* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @jz4740_rtc_reg_write(%struct.jz4740_rtc*, i32, i64) #1

declare dso_local i32 @jz4740_rtc_poweroff(i32) #1

declare dso_local i32 @kernel_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
