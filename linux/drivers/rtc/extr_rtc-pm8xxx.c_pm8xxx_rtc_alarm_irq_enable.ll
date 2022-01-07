; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pm8xxx_rtc = type { i32, i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Write to RTC control register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pm8xxx_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pm8xxx_rtc*, align 8
  %8 = alloca %struct.pm8xxx_rtc_regs*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.pm8xxx_rtc* %11, %struct.pm8xxx_rtc** %7, align 8
  %12 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %7, align 8
  %13 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %12, i32 0, i32 2
  %14 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %13, align 8
  store %struct.pm8xxx_rtc_regs* %14, %struct.pm8xxx_rtc_regs** %8, align 8
  %15 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %7, align 8
  %16 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %7, align 8
  %20 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %8, align 8
  %23 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_read(i32 %21, i32 %24, i32* %9)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %60

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %8, align 8
  %34 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %8, align 8
  %40 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %7, align 8
  %47 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %8, align 8
  %50 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @regmap_write(i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %60

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %56, %28
  %61 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %7, align 8
  %62 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %61, i32 0, i32 0
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
