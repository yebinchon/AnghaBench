; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcf85363 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pcf85363_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85363_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcf85363*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pcf85363* @dev_get_drvdata(%struct.device* %6)
  store %struct.pcf85363* %7, %struct.pcf85363** %5, align 8
  %8 = load %struct.pcf85363*, %struct.pcf85363** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @_pcf85363_rtc_alarm_irq_enable(%struct.pcf85363* %8, i32 %9)
  ret i32 %10
}

declare dso_local %struct.pcf85363* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @_pcf85363_rtc_alarm_irq_enable(%struct.pcf85363*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
