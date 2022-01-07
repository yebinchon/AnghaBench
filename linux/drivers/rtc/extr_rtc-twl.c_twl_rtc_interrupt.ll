; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_rtc = type { i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@REG_RTC_STATUS_REG = common dso_local global i32 0, align 4
@BIT_RTC_STATUS_REG_ALARM_M = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@RTC_PF = common dso_local global i64 0, align 8
@TWL_4030 = common dso_local global i64 0, align 8
@TWL4030_MODULE_INT = common dso_local global i32 0, align 4
@TWL4030_INT_PWR_ISR1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.twl_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.twl_rtc*
  store %struct.twl_rtc* %11, %struct.twl_rtc** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %14 = load i32, i32* @REG_RTC_STATUS_REG, align 4
  %15 = call i32 @twl_rtc_read_u8(%struct.twl_rtc* %13, i32* %9, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BIT_RTC_STATUS_REG_ALARM_M, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i64, i64* @RTC_IRQF, align 8
  %26 = load i64, i64* @RTC_AF, align 8
  %27 = or i64 %25, %26
  store i64 %27, i64* %6, align 8
  br label %32

28:                                               ; preds = %19
  %29 = load i64, i64* @RTC_IRQF, align 8
  %30 = load i64, i64* @RTC_PF, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %34 = load i32, i32* @BIT_RTC_STATUS_REG_ALARM_M, align 4
  %35 = load i32, i32* @REG_RTC_STATUS_REG, align 4
  %36 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %61

40:                                               ; preds = %32
  %41 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %42 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TWL_4030, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @TWL4030_MODULE_INT, align 4
  %48 = load i32, i32* @TWL4030_INT_PWR_ISR1, align 4
  %49 = call i32 @twl_i2c_read_u8(i32 %47, i32* %9, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %61

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @rtc_update_irq(i32 %57, i32 1, i64 %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %54, %52, %39, %18
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @twl_rtc_read_u8(%struct.twl_rtc*, i32*, i32) #1

declare dso_local i32 @twl_rtc_write_u8(%struct.twl_rtc*, i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
