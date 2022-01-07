; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_rtc_drv = type { i32, i32 }

@RTC_STATUS = common dso_local global i32 0, align 4
@SIRFSOC_RTC_AL0 = common dso_local global i64 0, align 8
@SIRFSOC_RTC_AL0E = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sirfsoc_rtc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rtc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sirfsoc_rtc_drv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sirfsoc_rtc_drv*
  store %struct.sirfsoc_rtc_drv* %9, %struct.sirfsoc_rtc_drv** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %5, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %5, align 8
  %14 = load i32, i32* @RTC_STATUS, align 4
  %15 = call i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @SIRFSOC_RTC_AL0, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, -8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @SIRFSOC_RTC_AL0, align 8
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* @SIRFSOC_RTC_AL0E, align 8
  %27 = xor i64 %26, -1
  %28 = load i64, i64* %6, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %20, %2
  %31 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %5, align 8
  %32 = load i32, i32* @RTC_STATUS, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %31, i32 %32, i64 %33)
  %35 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %5, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i64, i64* @RTC_IRQF, align 8
  %39 = load i64, i64* @RTC_AF, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %5, align 8
  %44 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @rtc_update_irq(i32 %45, i32 1, i64 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv*, i32) #1

declare dso_local i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
