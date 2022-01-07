; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpc24xx_rtc = type { i32 }

@LPC24XX_AMR = common dso_local global i32 0, align 4
@LPC24XX_ALARM_DISABLE = common dso_local global i32 0, align 4
@LPC24XX_ALSEC = common dso_local global i32 0, align 4
@LPC24XX_ALMIN = common dso_local global i32 0, align 4
@LPC24XX_ALHOUR = common dso_local global i32 0, align 4
@LPC24XX_ALDOM = common dso_local global i32 0, align 4
@LPC24XX_ALDOW = common dso_local global i32 0, align 4
@LPC24XX_ALDOY = common dso_local global i32 0, align 4
@LPC24XX_ALMON = common dso_local global i32 0, align 4
@LPC24XX_ALYEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @lpc24xx_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc24xx_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.lpc24xx_rtc*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.lpc24xx_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.lpc24xx_rtc* %8, %struct.lpc24xx_rtc** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  store %struct.rtc_time* %10, %struct.rtc_time** %6, align 8
  %11 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %12 = load i32, i32* @LPC24XX_AMR, align 4
  %13 = load i32, i32* @LPC24XX_ALARM_DISABLE, align 4
  %14 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %11, i32 %12, i32 %13)
  %15 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %16 = load i32, i32* @LPC24XX_ALSEC, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %15, i32 %16, i32 %19)
  %21 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %22 = load i32, i32* @LPC24XX_ALMIN, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %21, i32 %22, i32 %25)
  %27 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %28 = load i32, i32* @LPC24XX_ALHOUR, align 4
  %29 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %27, i32 %28, i32 %31)
  %33 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %34 = load i32, i32* @LPC24XX_ALDOM, align 4
  %35 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %33, i32 %34, i32 %37)
  %39 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %40 = load i32, i32* @LPC24XX_ALDOW, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %39, i32 %40, i32 %43)
  %45 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %46 = load i32, i32* @LPC24XX_ALDOY, align 4
  %47 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %45, i32 %46, i32 %49)
  %51 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %52 = load i32, i32* @LPC24XX_ALMON, align 4
  %53 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %51, i32 %52, i32 %55)
  %57 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %58 = load i32, i32* @LPC24XX_ALYEAR, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %57, i32 %58, i32 %61)
  %63 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %2
  %68 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %69 = load i32, i32* @LPC24XX_AMR, align 4
  %70 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %67, %2
  ret i32 0
}

declare dso_local %struct.lpc24xx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_writel(%struct.lpc24xx_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
