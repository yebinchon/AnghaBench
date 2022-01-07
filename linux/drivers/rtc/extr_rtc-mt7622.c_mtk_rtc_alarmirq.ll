; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_alarmirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_alarmirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_rtc = type { i32 }

@MTK_RTC_INT = common dso_local global i32 0, align 4
@RTC_INT_AL_STA = common dso_local global i32 0, align 4
@MTK_RTC_AL_CTL = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_rtc_alarmirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_alarmirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtk_rtc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mtk_rtc*
  store %struct.mtk_rtc* %9, %struct.mtk_rtc** %6, align 8
  %10 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %11 = load i32, i32* @MTK_RTC_INT, align 4
  %12 = call i32 @mtk_r32(%struct.mtk_rtc* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RTC_INT_AL_STA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %19 = load i32, i32* @MTK_RTC_AL_CTL, align 4
  %20 = call i32 @mtk_w32(%struct.mtk_rtc* %18, i32 %19, i32 0)
  %21 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_rtc, %struct.mtk_rtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTC_IRQF, align 4
  %25 = load i32, i32* @RTC_AF, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @rtc_update_irq(i32 %23, i32 1, i32 %26)
  %28 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %29 = load i32, i32* @MTK_RTC_INT, align 4
  %30 = load i32, i32* @RTC_INT_AL_STA, align 4
  %31 = call i32 @mtk_w32(%struct.mtk_rtc* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mtk_r32(%struct.mtk_rtc*, i32) #1

declare dso_local i32 @mtk_w32(%struct.mtk_rtc*, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
