; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6397_rtc = type { i32, i64, i32, i32 }

@RTC_IRQ_STA = common dso_local global i64 0, align 8
@RTC_IRQ_STA_AL = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQ_EN_AL = common dso_local global i32 0, align 4
@RTC_IRQ_EN = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_rtc_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt6397_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.mt6397_rtc*
  store %struct.mt6397_rtc* %11, %struct.mt6397_rtc** %6, align 8
  %12 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTC_IRQ_STA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @regmap_read(i32 %14, i64 %19, i32* %7)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RTC_IRQ_STA_AL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %30 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RTC_IRQF, align 4
  %33 = load i32, i32* @RTC_AF, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @rtc_update_irq(i32 %31, i32 1, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RTC_IRQ_EN_AL, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %44 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RTC_IRQ_EN, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @regmap_write(i32 %45, i64 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %28
  %55 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %56 = call i32 @mtk_rtc_write_trigger(%struct.mt6397_rtc* %55)
  br label %57

57:                                               ; preds = %54, %28
  %58 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %6, align 8
  %59 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %23, %2
  %63 = load i32, i32* @IRQ_NONE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @mtk_rtc_write_trigger(%struct.mt6397_rtc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
