; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_set_hw_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_set_hw_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_rtc = type { i32, i64 }

@LPC_WDT_OFF = common dso_local global i64 0, align 8
@LPC_LPA_MSB_OFF = common dso_local global i64 0, align 8
@LPC_LPA_LSB_OFF = common dso_local global i64 0, align 8
@LPC_LPA_START_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_rtc*, i64, i64)* @st_rtc_set_hw_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_rtc_set_hw_alarm(%struct.st_rtc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.st_rtc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.st_rtc* %0, %struct.st_rtc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %9 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %13 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LPC_WDT_OFF, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel_relaxed(i32 1, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %21 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPC_LPA_MSB_OFF, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %29 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LPC_LPA_LSB_OFF, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 %27, i64 %32)
  %34 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %35 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LPC_LPA_START_OFF, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 1, i64 %38)
  %40 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %41 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPC_WDT_OFF, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 0, i64 %44)
  %46 = load %struct.st_rtc*, %struct.st_rtc** %4, align 8
  %47 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
