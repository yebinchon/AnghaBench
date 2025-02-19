; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_rtc_update_8k_mbus_timing_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_rtc_update_8k_mbus_timing_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada38x_rtc = type { i64 }

@RTC_8K_BRIDGE_TIMING_CTL0 = common dso_local global i64 0, align 8
@RTC_8K_WRCLK_PERIOD_MASK = common dso_local global i32 0, align 4
@RTC_8K_WRCLK_PERIOD_OFFS = common dso_local global i32 0, align 4
@RTC_8K_WRCLK_SETUP_MASK = common dso_local global i32 0, align 4
@RTC_8K_WRCLK_SETUP_OFFS = common dso_local global i32 0, align 4
@RTC_8K_BRIDGE_TIMING_CTL1 = common dso_local global i64 0, align 8
@RTC_8K_READ_DELAY_MASK = common dso_local global i32 0, align 4
@RTC_8K_READ_DELAY_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.armada38x_rtc*)* @rtc_update_8k_mbus_timing_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_update_8k_mbus_timing_params(%struct.armada38x_rtc* %0) #0 {
  %2 = alloca %struct.armada38x_rtc*, align 8
  %3 = alloca i32, align 4
  store %struct.armada38x_rtc* %0, %struct.armada38x_rtc** %2, align 8
  %4 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %2, align 8
  %5 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RTC_8K_BRIDGE_TIMING_CTL0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @RTC_8K_WRCLK_PERIOD_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @RTC_8K_WRCLK_PERIOD_OFFS, align 4
  %15 = shl i32 1023, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @RTC_8K_WRCLK_SETUP_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @RTC_8K_WRCLK_SETUP_OFFS, align 4
  %23 = shl i32 41, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %2, align 8
  %28 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RTC_8K_BRIDGE_TIMING_CTL0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %2, align 8
  %34 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RTC_8K_BRIDGE_TIMING_CTL1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @RTC_8K_READ_DELAY_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @RTC_8K_READ_DELAY_OFFS, align 4
  %44 = shl i32 63, %43
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %2, align 8
  %49 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RTC_8K_BRIDGE_TIMING_CTL1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
