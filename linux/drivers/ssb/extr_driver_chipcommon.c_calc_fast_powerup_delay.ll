; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_calc_fast_powerup_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon.c_calc_fast_powerup_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i64 }

@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_CHIPCO_CAP_PCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PLLONDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*)* @calc_fast_powerup_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_fast_powerup_delay(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca %struct.ssb_chipcommon*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %2, align 8
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %8 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %10, align 8
  store %struct.ssb_bus* %11, %struct.ssb_bus** %3, align 8
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %27 = call i32 @pmu_fast_powerup_delay(%struct.ssb_chipcommon* %26)
  %28 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %29 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %58

30:                                               ; preds = %18
  %31 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %32 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SSB_CHIPCO_CAP_PCTL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %58

38:                                               ; preds = %30
  %39 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %40 = call i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon* %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %42 = load i32, i32* @SSB_CHIPCO_PLLONDELAY, align 4
  %43 = call i32 @chipco_read32(%struct.ssb_chipcommon* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 2
  %46 = mul nsw i32 %45, 1000000
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* %4, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, -65536
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %57 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %38, %37, %25, %17
  ret void
}

declare dso_local i32 @pmu_fast_powerup_delay(%struct.ssb_chipcommon*) #1

declare dso_local i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
