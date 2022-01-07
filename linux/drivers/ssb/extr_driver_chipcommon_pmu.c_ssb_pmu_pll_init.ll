; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ssb_bus* }
%struct.ssb_bus = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@SSB_BUSTYPE_SSB = common dso_local global i64 0, align 8
@SSB_CHIPCO_PLLCTL_ADDR = common dso_local global i32 0, align 4
@SSB_CHIPCO_PLLCTL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ERROR: PLL init unknown for device %04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_chipcommon*)* @ssb_pmu_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pmu_pll_init(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca %struct.ssb_chipcommon*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %2, align 8
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %8, align 8
  store %struct.ssb_bus* %9, %struct.ssb_bus** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %11 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SSB_BUSTYPE_SSB, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %51 [
    i32 17170, label %20
    i32 17189, label %20
    i32 17192, label %24
    i32 21332, label %28
    i32 17186, label %36
    i32 43222, label %50
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ssb_pmu1_pllinit_r0(%struct.ssb_chipcommon* %21, i32 %22)
  br label %61

24:                                               ; preds = %16
  %25 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon* %25, i32 %26)
  br label %61

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 25000, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon* %33, i32 %34)
  br label %61

36:                                               ; preds = %16
  %37 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %38 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %44 = load i32, i32* @SSB_CHIPCO_PLLCTL_ADDR, align 4
  %45 = call i32 @chipco_write32(%struct.ssb_chipcommon* %43, i32 %44, i32 10)
  %46 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %47 = load i32, i32* @SSB_CHIPCO_PLLCTL_DATA, align 4
  %48 = call i32 @chipco_write32(%struct.ssb_chipcommon* %46, i32 %47, i32 939525568)
  br label %49

49:                                               ; preds = %42, %36
  br label %61

50:                                               ; preds = %16
  br label %61

51:                                               ; preds = %16
  %52 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %53 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %58 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %51, %50, %49, %32, %24, %20
  ret void
}

declare dso_local i32 @ssb_pmu1_pllinit_r0(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @ssb_pmu0_pllinit_r0(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
