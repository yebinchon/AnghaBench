; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)* }

@OMAP_RTC_STATUS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_ALARM = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@OMAP_RTC_STATUS_1S_EVENT = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.omap_rtc*
  store %struct.omap_rtc* %9, %struct.omap_rtc** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %11 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %12 = call i32 @rtc_read(%struct.omap_rtc* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @OMAP_RTC_STATUS_ALARM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %19 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %21, align 8
  %23 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %24 = call i32 %22(%struct.omap_rtc* %23)
  %25 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %26 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %27 = load i32, i32* @OMAP_RTC_STATUS_ALARM, align 4
  %28 = call i32 @rtc_write(%struct.omap_rtc* %25, i32 %26, i32 %27)
  %29 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %32, align 8
  %34 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %35 = call i32 %33(%struct.omap_rtc* %34)
  %36 = load i64, i64* @RTC_IRQF, align 8
  %37 = load i64, i64* @RTC_AF, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* %6, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %17, %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @OMAP_RTC_STATUS_1S_EVENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64, i64* @RTC_IRQF, align 8
  %48 = load i64, i64* @RTC_UF, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %54 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @rtc_update_irq(i32 %55, i32 1, i64 %56)
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
