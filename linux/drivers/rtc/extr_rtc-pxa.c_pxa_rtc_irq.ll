; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_rtc = type { i32, i32 }

@RTSR = common dso_local global i32 0, align 4
@RTSR_RDALE1 = common dso_local global i32 0, align 4
@RTSR_PIALE = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@RTSR_RDAL1 = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@RTSR_HZ = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@RTSR_PIAL = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i64 0, align 8
@RTSR_TRIG_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.pxa_rtc* @dev_get_drvdata(i8* %8)
  store %struct.pxa_rtc* %9, %struct.pxa_rtc** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %14 = load i32, i32* @RTSR, align 4
  %15 = call i32 @rtc_readl(%struct.pxa_rtc* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %17 = load i32, i32* @RTSR, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @rtc_writel(%struct.pxa_rtc* %16, i32 %17, i32 %18)
  %20 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %21 = load i32, i32* @RTSR_RDALE1, align 4
  %22 = load i32, i32* @RTSR_PIALE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RTSR_HZE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @rtsr_clear_bits(%struct.pxa_rtc* %20, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RTSR_RDAL1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @RTSR_RDALE1, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RTSR_RDAL1, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* @RTC_AF, align 8
  %43 = load i64, i64* @RTC_IRQF, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* %7, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RTSR_HZ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* @RTC_UF, align 8
  %54 = load i64, i64* @RTC_IRQF, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @RTSR_PIAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* @RTC_PF, align 8
  %65 = load i64, i64* @RTC_IRQF, align 8
  %66 = or i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %71 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @rtc_update_irq(i32 %72, i32 1, i64 %73)
  %75 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %76 = load i32, i32* @RTSR, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @RTSR_TRIG_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call i32 @rtc_writel(%struct.pxa_rtc* %75, i32 %76, i32 %80)
  %82 = load %struct.pxa_rtc*, %struct.pxa_rtc** %5, align 8
  %83 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %85
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtc_readl(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.pxa_rtc*, i32, i32) #1

declare dso_local i32 @rtsr_clear_bits(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
