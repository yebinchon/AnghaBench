; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.omap_rtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @omap_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.omap_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.omap_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.omap_rtc* %7, %struct.omap_rtc** %5, align 8
  %8 = call i32 (...) @local_irq_disable()
  %9 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %10 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %9)
  %11 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i32 @omap_rtc_read_time_raw(%struct.omap_rtc* %11, %struct.rtc_time* %12)
  %14 = call i32 (...) @local_irq_enable()
  %15 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %16 = call i32 @bcd2tm(%struct.rtc_time* %15)
  ret i32 0
}

declare dso_local %struct.omap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.omap_rtc*) #1

declare dso_local i32 @omap_rtc_read_time_raw(%struct.omap_rtc*, %struct.rtc_time*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @bcd2tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
