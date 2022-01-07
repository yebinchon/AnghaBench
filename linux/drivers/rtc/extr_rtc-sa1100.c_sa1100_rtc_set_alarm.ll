; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.sa1100_rtc = type { i32, i32, i32 }

@RTSR_HZE = common dso_local global i64 0, align 8
@RTSR_ALE = common dso_local global i64 0, align 8
@RTSR_AL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sa1100_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.sa1100_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.sa1100_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.sa1100_rtc* %9, %struct.sa1100_rtc** %5, align 8
  %10 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %11 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  %15 = call i32 @rtc_tm_to_time(i32* %14, i64* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @readl_relaxed(i32 %22)
  %24 = load i64, i64* @RTSR_HZE, align 8
  %25 = load i64, i64* @RTSR_ALE, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @RTSR_AL, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %23, %28
  %30 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %31 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writel_relaxed(i64 %29, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @writel_relaxed(i64 %34, i32 %37)
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %19
  %44 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %45 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @readl_relaxed(i32 %46)
  %48 = load i64, i64* @RTSR_ALE, align 8
  %49 = or i64 %47, %48
  %50 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %51 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @writel_relaxed(i64 %49, i32 %52)
  br label %66

54:                                               ; preds = %19
  %55 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %56 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @readl_relaxed(i32 %57)
  %59 = load i64, i64* @RTSR_ALE, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %58, %60
  %62 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %63 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @writel_relaxed(i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %54, %43
  br label %67

67:                                               ; preds = %66, %18
  %68 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %69 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_irq(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.sa1100_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
