; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_get_controlclock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_get_controlclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"ERROR: PMU controlclock unknown for device %04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pmu_get_controlclock(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %8, align 8
  store %struct.ssb_bus* %9, %struct.ssb_bus** %4, align 8
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %11 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 21332, label %13
  ]

13:                                               ; preds = %1
  store i32 120000000, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %16 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %21 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
