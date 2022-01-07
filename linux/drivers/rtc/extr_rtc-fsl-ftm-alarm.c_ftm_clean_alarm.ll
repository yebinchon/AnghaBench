; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_clean_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_clean_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftm_rtc = type { i32 }

@FTM_CNTIN = common dso_local global i32 0, align 4
@FTM_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftm_rtc*)* @ftm_clean_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftm_clean_alarm(%struct.ftm_rtc* %0) #0 {
  %2 = alloca %struct.ftm_rtc*, align 8
  store %struct.ftm_rtc* %0, %struct.ftm_rtc** %2, align 8
  %3 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %4 = call i32 @ftm_counter_disable(%struct.ftm_rtc* %3)
  %5 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %6 = load i32, i32* @FTM_CNTIN, align 4
  %7 = call i32 @rtc_writel(%struct.ftm_rtc* %5, i32 %6, i32 0)
  %8 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %9 = load i32, i32* @FTM_MOD, align 4
  %10 = call i32 @rtc_writel(%struct.ftm_rtc* %8, i32 %9, i32 -1)
  %11 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %12 = call i32 @ftm_reset_counter(%struct.ftm_rtc* %11)
  ret void
}

declare dso_local i32 @ftm_counter_disable(%struct.ftm_rtc*) #1

declare dso_local i32 @rtc_writel(%struct.ftm_rtc*, i32, i32) #1

declare dso_local i32 @ftm_reset_counter(%struct.ftm_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
