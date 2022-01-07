; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rtd119x.c_rtd119x_rtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rtd119x.c_rtd119x_rtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtd119x_rtc = type { i64 }

@RTD_RTCCR = common dso_local global i64 0, align 8
@RTD_RTCCR_RTCRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @rtd119x_rtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtd119x_rtc_reset(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.rtd119x_rtc*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.rtd119x_rtc* @dev_get_drvdata(%struct.device* %5)
  store %struct.rtd119x_rtc* %6, %struct.rtd119x_rtc** %3, align 8
  %7 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %3, align 8
  %8 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTD_RTCCR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RTD_RTCCR_RTCRST, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %3, align 8
  %18 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RTD_RTCCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load i32, i32* @RTD_RTCCR_RTCRST, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.rtd119x_rtc*, %struct.rtd119x_rtc** %3, align 8
  %29 = getelementptr inbounds %struct.rtd119x_rtc, %struct.rtd119x_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RTD_RTCCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  ret void
}

declare dso_local %struct.rtd119x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
