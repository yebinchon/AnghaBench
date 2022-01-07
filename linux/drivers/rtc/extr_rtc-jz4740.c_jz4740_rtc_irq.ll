; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-jz4740.c_jz4740_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_rtc = type { i32 }

@JZ_REG_RTC_CTRL = common dso_local global i32 0, align 4
@JZ_RTC_CTRL_1HZ = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@JZ_RTC_CTRL_AF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jz4740_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jz4740_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.jz4740_rtc*
  store %struct.jz4740_rtc* %9, %struct.jz4740_rtc** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %11 = load i32, i32* @JZ_REG_RTC_CTRL, align 4
  %12 = call i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @JZ_RTC_CTRL_1HZ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i64, i64* @RTC_UF, align 8
  %19 = load i64, i64* @RTC_IRQF, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @JZ_RTC_CTRL_AF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i64, i64* @RTC_AF, align 8
  %30 = load i64, i64* @RTC_IRQF, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.jz4740_rtc, %struct.jz4740_rtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @rtc_update_irq(i32 %37, i32 1, i64 %38)
  %40 = load %struct.jz4740_rtc*, %struct.jz4740_rtc** %5, align 8
  %41 = load i32, i32* @JZ_RTC_CTRL_1HZ, align 4
  %42 = load i32, i32* @JZ_RTC_CTRL_AF, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @jz4740_rtc_ctrl_set_bits(%struct.jz4740_rtc* %40, i32 %43, i32 0)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @jz4740_rtc_reg_read(%struct.jz4740_rtc*, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

declare dso_local i32 @jz4740_rtc_ctrl_set_bits(%struct.jz4740_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
