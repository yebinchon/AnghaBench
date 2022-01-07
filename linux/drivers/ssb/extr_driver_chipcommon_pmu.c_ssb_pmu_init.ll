; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SSB_CHIPCO_CAP_PMU = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CAP = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CAP_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Found rev %u PMU (capabilities 0x%08X)\0A\00", align 1
@SSB_CHIPCO_PMU_CTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_NOILPONW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_pmu_init(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca %struct.ssb_chipcommon*, align 8
  %3 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %2, align 8
  %4 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SSB_CHIPCO_CAP_PMU, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %13 = load i32, i32* @SSB_CHIPCO_PMU_CAP, align 4
  %14 = call i32 @chipco_read32(%struct.ssb_chipcommon* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SSB_CHIPCO_PMU_CAP_REVISION, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %19 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %22 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %27 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %33 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %11
  %38 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %39 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %40 = load i32, i32* @SSB_CHIPCO_PMU_CTL_NOILPONW, align 4
  %41 = xor i32 %40, -1
  %42 = call i32 @chipco_mask32(%struct.ssb_chipcommon* %38, i32 %39, i32 %41)
  br label %48

43:                                               ; preds = %11
  %44 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %45 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %46 = load i32, i32* @SSB_CHIPCO_PMU_CTL_NOILPONW, align 4
  %47 = call i32 @chipco_set32(%struct.ssb_chipcommon* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %50 = call i32 @ssb_pmu_pll_init(%struct.ssb_chipcommon* %49)
  %51 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %2, align 8
  %52 = call i32 @ssb_pmu_resources_init(%struct.ssb_chipcommon* %51)
  br label %53

53:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @chipco_mask32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_set32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @ssb_pmu_pll_init(%struct.ssb_chipcommon*) #1

declare dso_local i32 @ssb_pmu_resources_init(%struct.ssb_chipcommon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
