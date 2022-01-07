; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.omap_rtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_rtc*)*, i64, i32 (%struct.omap_rtc*)* }

@OMAP_RTC_ALARM_YEARS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_IRQWAKEEN = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_IT_ALARM = common dso_local global i32 0, align 4
@OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @omap_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.omap_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.omap_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.omap_rtc* %9, %struct.omap_rtc** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 1
  %12 = call i32 @tm2bcd(%struct.TYPE_4__* %11)
  %13 = call i32 (...) @local_irq_disable()
  %14 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %15 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %14)
  %16 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %19, align 8
  %21 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %22 = call i32 %20(%struct.omap_rtc* %21)
  %23 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %24 = load i32, i32* @OMAP_RTC_ALARM_YEARS_REG, align 4
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rtc_write(%struct.omap_rtc* %23, i32 %24, i32 %28)
  %30 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %31 = load i32, i32* @OMAP_RTC_ALARM_MONTHS_REG, align 4
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rtc_write(%struct.omap_rtc* %30, i32 %31, i32 %35)
  %37 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %38 = load i32, i32* @OMAP_RTC_ALARM_DAYS_REG, align 4
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rtc_write(%struct.omap_rtc* %37, i32 %38, i32 %42)
  %44 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %45 = load i32, i32* @OMAP_RTC_ALARM_HOURS_REG, align 4
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @rtc_write(%struct.omap_rtc* %44, i32 %45, i32 %49)
  %51 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %52 = load i32, i32* @OMAP_RTC_ALARM_MINUTES_REG, align 4
  %53 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %54 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rtc_write(%struct.omap_rtc* %51, i32 %52, i32 %56)
  %58 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %59 = load i32, i32* @OMAP_RTC_ALARM_SECONDS_REG, align 4
  %60 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %61 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @rtc_write(%struct.omap_rtc* %58, i32 %59, i32 %63)
  %65 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %66 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %67 = call i32 @rtc_read(%struct.omap_rtc* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %69 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %2
  %75 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %76 = load i32, i32* @OMAP_RTC_IRQWAKEEN, align 4
  %77 = call i32 @rtc_read(%struct.omap_rtc* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %2
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %99

90:                                               ; preds = %78
  %91 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %90, %83
  %100 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %101 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @rtc_write(%struct.omap_rtc* %100, i32 %101, i32 %102)
  %104 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %105 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %99
  %111 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %112 = load i32, i32* @OMAP_RTC_IRQWAKEEN, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @rtc_write(%struct.omap_rtc* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %99
  %116 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %117 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %119, align 8
  %121 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %122 = call i32 %120(%struct.omap_rtc* %121)
  %123 = call i32 (...) @local_irq_enable()
  ret i32 0
}

declare dso_local %struct.omap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tm2bcd(%struct.TYPE_4__*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.omap_rtc*) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
