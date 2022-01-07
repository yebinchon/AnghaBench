; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_davinci_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_rtc = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@PRTCIF_INTFLG = common dso_local global i32 0, align 4
@PRTCIF_INTFLG_RTCSS = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL = common dso_local global i32 0, align 4
@PRTCSS_RTC_CCTRL_ALMFLG = common dso_local global i32 0, align 4
@PRTCSS_RTC_CTRL = common dso_local global i32 0, align 4
@PRTCSS_RTC_CTRL_TMRFLG = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@RTC_PF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @davinci_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.davinci_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.davinci_rtc*
  store %struct.davinci_rtc* %14, %struct.davinci_rtc** %5, align 8
  store i64 0, i64* %6, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %17 = load i32, i32* @PRTCIF_INTFLG, align 4
  %18 = call i32 @rtcif_read(%struct.davinci_rtc* %16, i32 %17)
  %19 = load i32, i32* @PRTCIF_INTFLG_RTCSS, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %22 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %23 = call i32 @rtcss_read(%struct.davinci_rtc* %21, i32 %22)
  %24 = load i32, i32* @PRTCSS_RTC_CCTRL_ALMFLG, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %27 = load i32, i32* @PRTCSS_RTC_CTRL, align 4
  %28 = call i32 @rtcss_read(%struct.davinci_rtc* %26, i32 %27)
  %29 = load i32, i32* @PRTCSS_RTC_CTRL_TMRFLG, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i64, i64* @RTC_IRQF, align 8
  %38 = load i64, i64* @RTC_AF, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* %6, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %43 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %44 = call i32 @rtcss_read(%struct.davinci_rtc* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @PRTCSS_RTC_CCTRL_ALMFLG, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @PRTCSS_RTC_CCTRL, align 4
  %51 = call i32 @rtcss_write(%struct.davinci_rtc* %48, i32 %49, i32 %50)
  br label %72

52:                                               ; preds = %33
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i64, i64* @RTC_IRQF, align 8
  %57 = load i64, i64* @RTC_PF, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %62 = load i32, i32* @PRTCSS_RTC_CTRL, align 4
  %63 = call i32 @rtcss_read(%struct.davinci_rtc* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @PRTCSS_RTC_CTRL_TMRFLG, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PRTCSS_RTC_CTRL, align 4
  %70 = call i32 @rtcss_write(%struct.davinci_rtc* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %55, %52
  br label %72

72:                                               ; preds = %71, %36
  %73 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %74 = load i32, i32* @PRTCIF_INTFLG_RTCSS, align 4
  %75 = load i32, i32* @PRTCIF_INTFLG, align 4
  %76 = call i32 @rtcif_write(%struct.davinci_rtc* %73, i32 %74, i32 %75)
  %77 = load %struct.davinci_rtc*, %struct.davinci_rtc** %5, align 8
  %78 = getelementptr inbounds %struct.davinci_rtc, %struct.davinci_rtc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @rtc_update_irq(i32 %79, i32 1, i64 %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %72, %2
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32 @rtcif_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @rtcss_read(%struct.davinci_rtc*, i32) #1

declare dso_local i32 @rtcss_write(%struct.davinci_rtc*, i32, i32) #1

declare dso_local i32 @rtcif_write(%struct.davinci_rtc*, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
