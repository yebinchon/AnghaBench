; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_INTR_FLAGS = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@cmos_rtc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RTC_IRQMASK = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cmos_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = call i32 @spin_lock(i32* @rtc_lock)
  %9 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %10 = call i32 @CMOS_READ(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @RTC_CONTROL, align 4
  %12 = call i32 @CMOS_READ(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = call i64 (...) @use_hpet_alarm()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 240
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmos_rtc, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RTC_IRQMASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @RTC_IRQF, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %20
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmos_rtc, i32 0, i32 0), align 4
  %33 = load i32, i32* @RTC_IRQMASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @RTC_IRQF, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RTC_AIE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i32, i32* @RTC_AIE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmos_rtc, i32 0, i32 0), align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cmos_rtc, i32 0, i32 0), align 4
  %49 = load i32, i32* @RTC_AIE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @RTC_CONTROL, align 4
  %55 = call i32 @CMOS_WRITE(i32 %53, i32 %54)
  %56 = call i64 (...) @use_hpet_alarm()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @RTC_AIE, align 4
  %60 = call i32 @hpet_mask_rtc_irq_bit(i32 %59)
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %63 = call i32 @CMOS_READ(i32 %62)
  br label %64

64:                                               ; preds = %61, %39
  %65 = call i32 @spin_unlock(i32* @rtc_lock)
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @is_intr(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @rtc_update_irq(i8* %70, i32 1, i32 %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @IRQ_NONE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i64 @use_hpet_alarm(...) #1

declare dso_local i32 @CMOS_WRITE(i32, i32) #1

declare dso_local i32 @hpet_mask_rtc_irq_bit(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @is_intr(i32) #1

declare dso_local i32 @rtc_update_irq(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
