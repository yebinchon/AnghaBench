; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pm8916_wdt.c_pm8916_wdt_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pm8916_wdt.c_pm8916_wdt_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8916_wdt = type { i32, i64, i32 }

@PON_INT_RT_STS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PMIC_WD_BARK_STS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm8916_wdt_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8916_wdt_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pm8916_wdt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pm8916_wdt*
  store %struct.pm8916_wdt* %10, %struct.pm8916_wdt** %6, align 8
  %11 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %6, align 8
  %12 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %6, align 8
  %15 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PON_INT_RT_STS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @regmap_read(i32 %13, i64 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PMIC_WD_BARK_STS_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.pm8916_wdt*, %struct.pm8916_wdt** %6, align 8
  %31 = getelementptr inbounds %struct.pm8916_wdt, %struct.pm8916_wdt* %30, i32 0, i32 0
  %32 = call i32 @watchdog_notify_pretimeout(i32* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @watchdog_notify_pretimeout(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
