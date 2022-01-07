; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lp8788.c_lp8788_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lp8788_rtc = type { i64, i32, %struct.lp8788* }
%struct.lp8788 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@mask_alarm_en = common dso_local global i32* null, align 8
@shift_alarm_en = common dso_local global i32* null, align 8
@LP8788_INTEN_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @lp8788_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp8788_rtc*, align 8
  %7 = alloca %struct.lp8788*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.lp8788_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.lp8788_rtc* %11, %struct.lp8788_rtc** %6, align 8
  %12 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %12, i32 0, i32 2
  %14 = load %struct.lp8788*, %struct.lp8788** %13, align 8
  store %struct.lp8788* %14, %struct.lp8788** %7, align 8
  %15 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load i32*, i32** @mask_alarm_en, align 8
  %24 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** @shift_alarm_en, align 8
  %30 = load %struct.lp8788_rtc*, %struct.lp8788_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.lp8788_rtc, %struct.lp8788_rtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.lp8788*, %struct.lp8788** %7, align 8
  %36 = load i32, i32* @LP8788_INTEN_3, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @lp8788_update_bits(%struct.lp8788* %35, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %22, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.lp8788_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lp8788_update_bits(%struct.lp8788*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
