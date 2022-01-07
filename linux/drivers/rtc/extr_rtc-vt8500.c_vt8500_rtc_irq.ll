; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vt8500.c_vt8500_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt8500_rtc = type { i32, i32, i64 }

@VT8500_RTC_IS = common dso_local global i64 0, align 8
@VT8500_RTC_IS_ALARM = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vt8500_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vt8500_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vt8500_rtc*
  store %struct.vt8500_rtc* %9, %struct.vt8500_rtc** %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VT8500_RTC_IS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VT8500_RTC_IS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @VT8500_RTC_IS_ALARM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i64, i64* @RTC_AF, align 8
  %35 = load i64, i64* @RTC_IRQF, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %33, %2
  %40 = load %struct.vt8500_rtc*, %struct.vt8500_rtc** %5, align 8
  %41 = getelementptr inbounds %struct.vt8500_rtc, %struct.vt8500_rtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @rtc_update_irq(i32 %42, i32 1, i64 %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
