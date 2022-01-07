; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_timer_set_wdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_timer_set_wdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xx_wdt = type { i32 }
%struct.ssb_chipcommon = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SSB_BUSTYPE_SSB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_chipco_watchdog_timer_set_wdt(%struct.bcm47xx_wdt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm47xx_wdt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssb_chipcommon*, align 8
  store %struct.bcm47xx_wdt* %0, %struct.bcm47xx_wdt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %4, align 8
  %8 = call %struct.ssb_chipcommon* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt* %7)
  store %struct.ssb_chipcommon* %8, %struct.ssb_chipcommon** %6, align 8
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %6, align 8
  %10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SSB_BUSTYPE_SSB, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ssb_chipco_watchdog_timer_set(%struct.ssb_chipcommon* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.ssb_chipcommon* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt*) #1

declare dso_local i32 @ssb_chipco_watchdog_timer_set(%struct.ssb_chipcommon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
