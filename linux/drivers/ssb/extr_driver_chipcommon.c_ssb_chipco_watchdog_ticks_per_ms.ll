; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_ticks_per_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_ticks_per_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ssb_bus* }
%struct.TYPE_3__ = type { i32 }
%struct.ssb_bus = type { i32 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_chipcommon*)* @ssb_chipco_watchdog_ticks_per_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_chipco_watchdog_ticks_per_ms(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %8, align 8
  store %struct.ssb_bus* %9, %struct.ssb_bus** %4, align 8
  %10 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %11 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 32, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %19 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 18
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %27 = call i32 @ssb_clockspeed(%struct.ssb_bus* %26)
  %28 = sdiv i32 %27, 1000
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %17
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %31 = call i32 @ssb_chipco_alp_clock(%struct.ssb_chipcommon* %30)
  %32 = sdiv i32 %31, 1000
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %25, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ssb_clockspeed(%struct.ssb_bus*) #1

declare dso_local i32 @ssb_chipco_alp_clock(%struct.ssb_chipcommon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
