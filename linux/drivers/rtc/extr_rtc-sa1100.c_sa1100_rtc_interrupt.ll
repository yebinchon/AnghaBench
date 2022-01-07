; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_rtc = type { i32, i32, %struct.rtc_device* }
%struct.rtc_device = type { i32 }

@RTSR_ALE = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@RTSR_AL = common dso_local global i32 0, align 4
@RTSR_HZ = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_UF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sa1100_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sa1100_rtc*, align 8
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.sa1100_rtc* @dev_get_drvdata(i8* %9)
  store %struct.sa1100_rtc* %10, %struct.sa1100_rtc** %5, align 8
  %11 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %11, i32 0, i32 2
  %13 = load %struct.rtc_device*, %struct.rtc_device** %12, align 8
  store %struct.rtc_device* %13, %struct.rtc_device** %6, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %15 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @readl_relaxed(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %22 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @writel_relaxed(i32 0, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @RTSR_ALE, align 4
  %27 = load i32, i32* @RTSR_HZE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* @RTSR_AL, align 4
  %33 = load i32, i32* @RTSR_HZ, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = lshr i32 %35, 2
  %37 = and i32 %34, %36
  %38 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %39 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel_relaxed(i32 %37, i32 %40)
  br label %50

42:                                               ; preds = %2
  %43 = load i32, i32* @RTSR_AL, align 4
  %44 = load i32, i32* @RTSR_HZ, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %47 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel_relaxed(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %31
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RTSR_AL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @RTSR_ALE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RTSR_ALE, align 4
  %63 = load i32, i32* @RTSR_HZE, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %67 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @writel_relaxed(i32 %65, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @RTSR_AL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %60
  %75 = load i64, i64* @RTC_AF, align 8
  %76 = load i64, i64* @RTC_IRQF, align 8
  %77 = or i64 %75, %76
  %78 = load i64, i64* %8, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %74, %60
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RTSR_HZ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64, i64* @RTC_UF, align 8
  %87 = load i64, i64* @RTC_IRQF, align 8
  %88 = or i64 %86, %87
  %89 = load i64, i64* %8, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @rtc_update_irq(%struct.rtc_device* %92, i32 1, i64 %93)
  %95 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %5, align 8
  %96 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %98
}

declare dso_local %struct.sa1100_rtc* @dev_get_drvdata(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
