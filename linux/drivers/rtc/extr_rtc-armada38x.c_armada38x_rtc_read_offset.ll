; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_read_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_read_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.armada38x_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.armada38x_rtc*, i32)* }

@RTC_CCR = common dso_local global i32 0, align 4
@RTC_CCR_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*)* @armada38x_rtc_read_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada38x_rtc_read_offset(%struct.device* %0, i64* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.armada38x_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.armada38x_rtc* %10, %struct.armada38x_rtc** %5, align 8
  %11 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %16 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.armada38x_rtc*, i32)*, i64 (%struct.armada38x_rtc*, i32)** %18, align 8
  %20 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %21 = load i32, i32* @RTC_CCR, align 4
  %22 = call i64 %19(%struct.armada38x_rtc* %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %24 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @RTC_CCR_MODE, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 3815, i32 954
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @armada38x_ppb_convert(i64 %37)
  %39 = load i64*, i64** %4, align 8
  store i64 %38, i64* %39, align 8
  ret i32 0
}

declare dso_local %struct.armada38x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @armada38x_ppb_convert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
