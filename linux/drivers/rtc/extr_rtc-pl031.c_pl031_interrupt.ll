; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl031_local = type { i32, i64 }

@RTC_MIS = common dso_local global i64 0, align 8
@RTC_BIT_AI = common dso_local global i64 0, align 8
@RTC_ICR = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pl031_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pl031_local*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pl031_local*
  store %struct.pl031_local* %10, %struct.pl031_local** %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.pl031_local*, %struct.pl031_local** %6, align 8
  %12 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RTC_MIS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @RTC_BIT_AI, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load i64, i64* @RTC_BIT_AI, align 8
  %23 = load %struct.pl031_local*, %struct.pl031_local** %6, align 8
  %24 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RTC_ICR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i64 %22, i64 %27)
  %29 = load i64, i64* @RTC_AF, align 8
  %30 = load i64, i64* @RTC_IRQF, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* %8, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load %struct.pl031_local*, %struct.pl031_local** %6, align 8
  %35 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @rtc_update_irq(i32 %36, i32 1, i64 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
