; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_get_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_get_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_rtc = type { i32, i32, i32 }

@RTC_ADDR0_LINE_SDI = common dso_local global i32 0, align 4
@RTC_ADDR0_LINE_SEN = common dso_local global i32 0, align 4
@RTC_ADDR0_LINE_SCLK = common dso_local global i32 0, align 4
@RTC_ADDR0 = common dso_local global i32 0, align 4
@RTC_ADDR1 = common dso_local global i32 0, align 4
@RTC_ADDR1_S_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get bus, resetting RTC\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bus is not ready\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_rtc*)* @meson_rtc_get_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_rtc_get_bus(%struct.meson_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.meson_rtc* %0, %struct.meson_rtc** %3, align 8
  store i32 3, i32* %5, align 4
  %7 = load i32, i32* @RTC_ADDR0_LINE_SDI, align 4
  %8 = load i32, i32* @RTC_ADDR0_LINE_SEN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @RTC_ADDR0_LINE_SCLK, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.meson_rtc*, %struct.meson_rtc** %3, align 8
  %13 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RTC_ADDR0, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 0)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load %struct.meson_rtc*, %struct.meson_rtc** %3, align 8
  %23 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RTC_ADDR1, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RTC_ADDR1_S_READY, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @regmap_read_poll_timeout(i32 %24, i32 %25, i32 %26, i32 %29, i32 10, i32 10000)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %57

33:                                               ; preds = %21
  %34 = load %struct.meson_rtc*, %struct.meson_rtc** %3, align 8
  %35 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.meson_rtc*, %struct.meson_rtc** %3, align 8
  %39 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @reset_control_reset(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %57

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.meson_rtc*, %struct.meson_rtc** %3, align 8
  %52 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %50, %44, %32
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
