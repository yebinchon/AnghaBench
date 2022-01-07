; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_get_swcomp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_get_swcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ep93xx_rtc = type { i64 }

@EP93XX_RTC_SWCOMP = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_INT_MASK = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_INT_SHIFT = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_DEL_MASK = common dso_local global i64 0, align 8
@EP93XX_RTC_SWCOMP_DEL_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i16*, i16*)* @ep93xx_rtc_get_swcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_rtc_get_swcomp(%struct.device* %0, i16* %1, i16* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca %struct.ep93xx_rtc*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ep93xx_rtc* @dev_get_platdata(%struct.device* %9)
  store %struct.ep93xx_rtc* %10, %struct.ep93xx_rtc** %7, align 8
  %11 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %7, align 8
  %12 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EP93XX_RTC_SWCOMP, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i16*, i16** %5, align 8
  %18 = icmp ne i16* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @EP93XX_RTC_SWCOMP_INT_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @EP93XX_RTC_SWCOMP_INT_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = trunc i64 %24 to i16
  %26 = load i16*, i16** %5, align 8
  store i16 %25, i16* %26, align 2
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i16*, i16** %6, align 8
  %29 = icmp ne i16* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @EP93XX_RTC_SWCOMP_DEL_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @EP93XX_RTC_SWCOMP_DEL_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = trunc i64 %35 to i16
  %37 = load i16*, i16** %6, align 8
  store i16 %36, i16* %37, align 2
  br label %38

38:                                               ; preds = %30, %27
  ret i32 0
}

declare dso_local %struct.ep93xx_rtc* @dev_get_platdata(%struct.device*) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
