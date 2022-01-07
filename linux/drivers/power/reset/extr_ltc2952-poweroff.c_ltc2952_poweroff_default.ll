; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ltc2952-poweroff.c_ltc2952_poweroff_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2952_poweroff = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@ltc2952_poweroff_timer_trigger = common dso_local global i32 0, align 4
@ltc2952_poweroff_timer_wde = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ltc2952_poweroff*)* @ltc2952_poweroff_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltc2952_poweroff_default(%struct.ltc2952_poweroff* %0) #0 {
  %2 = alloca %struct.ltc2952_poweroff*, align 8
  store %struct.ltc2952_poweroff* %0, %struct.ltc2952_poweroff** %2, align 8
  %3 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %2, align 8
  %4 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %3, i32 0, i32 0
  store i64 300000000, i64* %4, align 8
  %5 = call i32 @ktime_set(i32 2, i64 500000000)
  %6 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %2, align 8
  %7 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %2, align 8
  %9 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %8, i32 0, i32 2
  %10 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %11 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %12 = call i32 @hrtimer_init(%struct.TYPE_2__* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @ltc2952_poweroff_timer_trigger, align 4
  %14 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %2, align 8
  %15 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %2, align 8
  %18 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %17, i32 0, i32 1
  %19 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %20 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %21 = call i32 @hrtimer_init(%struct.TYPE_2__* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @ltc2952_poweroff_timer_wde, align 4
  %23 = load %struct.ltc2952_poweroff*, %struct.ltc2952_poweroff** %2, align 8
  %24 = getelementptr inbounds %struct.ltc2952_poweroff, %struct.ltc2952_poweroff* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  ret void
}

declare dso_local i32 @ktime_set(i32, i64) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
