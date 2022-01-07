; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_timer_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_ssb_chipco_watchdog_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_WATCHDOG = common dso_local global i32 0, align 4
@SSB_CLKMODE_FAST = common dso_local global i32 0, align 4
@SSB_CLKMODE_DYNAMIC = common dso_local global i32 0, align 4
@SSB_CHIPCO_WATCHDOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_chipco_watchdog_timer_set(%struct.ssb_chipcommon* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %8 = call i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 2, i32* %4, align 4
  br label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %19
  br label %26

26:                                               ; preds = %25, %18
  %27 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %28 = load i32, i32* @SSB_CHIPCO_PMU_WATCHDOG, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @chipco_write32(%struct.ssb_chipcommon* %27, i32 %28, i32 %29)
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @SSB_CLKMODE_FAST, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @SSB_CLKMODE_DYNAMIC, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %6, align 4
  %40 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %38
  %49 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %50 = load i32, i32* @SSB_CHIPCO_WATCHDOG, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @chipco_write32(%struct.ssb_chipcommon* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %26
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon*) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @ssb_chipco_set_clockmode(%struct.ssb_chipcommon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
