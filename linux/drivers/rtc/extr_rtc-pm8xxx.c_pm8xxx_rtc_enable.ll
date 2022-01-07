; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_rtc = type { i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32 }

@PM8xxx_RTC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_rtc*)* @pm8xxx_rtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_rtc_enable(%struct.pm8xxx_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8xxx_rtc*, align 8
  %4 = alloca %struct.pm8xxx_rtc_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8xxx_rtc* %0, %struct.pm8xxx_rtc** %3, align 8
  %7 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %3, align 8
  %8 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %7, i32 0, i32 1
  %9 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %8, align 8
  store %struct.pm8xxx_rtc_regs* %9, %struct.pm8xxx_rtc_regs** %4, align 8
  %10 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %3, align 8
  %11 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %4, align 8
  %14 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PM8xxx_RTC_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @PM8xxx_RTC_ENABLE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %3, align 8
  %31 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %4, align 8
  %34 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @regmap_write(i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %21
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
