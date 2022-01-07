; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_set_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_set_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.armada38x_rtc = type { i32 }

@RTC_CCR_MODE = common dso_local global i64 0, align 8
@RTC_CCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @armada38x_rtc_set_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada38x_rtc_set_offset(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.armada38x_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.armada38x_rtc* %10, %struct.armada38x_rtc** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @clamp(i64 %11, i64 -484270, i64 488558)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @armada38x_ppb_convert(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @DIV_ROUND_CLOSEST(i64 %15, i32 954)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 127
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %20, -128
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %2
  %23 = load i64, i64* @RTC_CCR_MODE, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @DIV_ROUND_CLOSEST(i64 %24, i32 3815)
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i64, i64* %8, align 8
  %28 = and i64 %27, 16383
  %29 = xor i64 %28, 8192
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %34 = load i32, i32* @RTC_CCR, align 4
  %35 = call i32 @rtc_delayed_write(i64 %32, %struct.armada38x_rtc* %33, i32 %34)
  ret i32 0
}

declare dso_local %struct.armada38x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i64 @armada38x_ppb_convert(i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @rtc_delayed_write(i64, %struct.armada38x_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
