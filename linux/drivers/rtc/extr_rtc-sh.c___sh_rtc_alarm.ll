; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c___sh_rtc_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sh.c___sh_rtc_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_rtc = type { i32, i64 }

@RCR1 = common dso_local global i64 0, align 8
@RCR1_AF = common dso_local global i32 0, align 4
@RCR1_AIE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_rtc*)* @__sh_rtc_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sh_rtc_alarm(%struct.sh_rtc* %0) #0 {
  %2 = alloca %struct.sh_rtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sh_rtc* %0, %struct.sh_rtc** %2, align 8
  %5 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %6 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RCR1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readb(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RCR1_AF, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @RCR1_AF, align 4
  %15 = load i32, i32* @RCR1_AIE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %22 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RCR1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writeb(i32 %20, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.sh_rtc*, %struct.sh_rtc** %2, align 8
  %31 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RTC_AF, align 4
  %34 = load i32, i32* @RTC_IRQF, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rtc_update_irq(i32 %32, i32 1, i32 %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
