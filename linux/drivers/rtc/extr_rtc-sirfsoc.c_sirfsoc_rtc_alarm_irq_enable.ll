; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sirfsoc_rtc_drv = type { i32 }

@RTC_STATUS = common dso_local global i32 0, align 4
@SIRFSOC_RTC_AL0E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sirfsoc_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sirfsoc_rtc_drv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device* %7)
  store %struct.sirfsoc_rtc_drv* %8, %struct.sirfsoc_rtc_drv** %6, align 8
  %9 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %13 = load i32, i32* @RTC_STATUS, align 4
  %14 = call i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %28 = load i32, i32* @RTC_STATUS, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %27, i32 %28, i64 %29)
  %31 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  ret i32 0
}

declare dso_local %struct.sirfsoc_rtc_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv*, i32) #1

declare dso_local i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv*, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
