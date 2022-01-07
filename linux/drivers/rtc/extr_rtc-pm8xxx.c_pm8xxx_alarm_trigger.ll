; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_alarm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_alarm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_rtc = type { i32, i32, i32, i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32, i32, i32 }

@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Write to alarm control register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"RTC Alarm control2 register read failed\0A\00", align 1
@PM8xxx_RTC_ALARM_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Write to RTC Alarm control2 register failed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm8xxx_alarm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_alarm_trigger(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm8xxx_rtc*, align 8
  %6 = alloca %struct.pm8xxx_rtc_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pm8xxx_rtc*
  store %struct.pm8xxx_rtc* %11, %struct.pm8xxx_rtc** %5, align 8
  %12 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %12, i32 0, i32 4
  %14 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  store %struct.pm8xxx_rtc_regs* %14, %struct.pm8xxx_rtc_regs** %6, align 8
  %15 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %16 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTC_IRQF, align 4
  %19 = load i32, i32* @RTC_AF, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtc_update_irq(i32 %17, i32 1, i32 %20)
  %22 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %22, i32 0, i32 2
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %6, align 8
  %30 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_read(i32 %28, i32 %31, i32* %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %37 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %36, i32 0, i32 2
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %105

40:                                               ; preds = %2
  %41 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %6, align 8
  %42 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %48 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %6, align 8
  %51 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @regmap_write(i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %40
  %58 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %59 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %58, i32 0, i32 2
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %63 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %105

66:                                               ; preds = %40
  %67 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %67, i32 0, i32 2
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %72 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %6, align 8
  %75 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @regmap_read(i32 %73, i32 %76, i32* %7)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %82 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %105

85:                                               ; preds = %66
  %86 = load i32, i32* @PM8xxx_RTC_ALARM_CLEAR, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %90 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %6, align 8
  %93 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @regmap_write(i32 %91, i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %85
  %100 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %5, align 8
  %101 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %85
  br label %105

105:                                              ; preds = %104, %80, %57, %35
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %106
}

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
