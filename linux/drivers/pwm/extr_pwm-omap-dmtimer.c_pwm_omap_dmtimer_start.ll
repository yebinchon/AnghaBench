; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-omap-dmtimer.c_pwm_omap_dmtimer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-omap-dmtimer.c_pwm_omap_dmtimer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_omap_dmtimer_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)*, i32 (i32, i32)*, i32 (i32)* }

@DM_TIMER_LOAD_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_omap_dmtimer_chip*)* @pwm_omap_dmtimer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_omap_dmtimer_start(%struct.pwm_omap_dmtimer_chip* %0) #0 {
  %2 = alloca %struct.pwm_omap_dmtimer_chip*, align 8
  store %struct.pwm_omap_dmtimer_chip* %0, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %3 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %4 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %9 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 %7(i32 %10)
  %12 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %13 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %18 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DM_TIMER_LOAD_MIN, align 4
  %21 = call i32 %16(i32 %19, i32 %20)
  %22 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %23 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %28 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %26(i32 %29)
  %31 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %32 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.pwm_omap_dmtimer_chip*, %struct.pwm_omap_dmtimer_chip** %2, align 8
  %37 = getelementptr inbounds %struct.pwm_omap_dmtimer_chip, %struct.pwm_omap_dmtimer_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
