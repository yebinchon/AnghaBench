; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_spuravoid_pllupdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_pmu.c_ssb_pmu_spuravoid_pllupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_chipcommon = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@SSB_PMU1_PLLCTL0 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL1 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL5 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL2 = common dso_local global i32 0, align 4
@SSB_CHIPCO_PMU_CTL_PLL_UPD = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL3 = common dso_local global i32 0, align 4
@SSB_PMU1_PLLCTL4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unknown spuravoidance settings for chip 0x%04X, not changing PLL\0A\00", align 1
@SSB_CHIPCO_PMU_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_pmu_spuravoid_pllupdate(%struct.ssb_chipcommon* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %7 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %78 [
    i32 17186, label %13
    i32 43222, label %35
  ]

13:                                               ; preds = %2
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %15 = load i32, i32* @SSB_PMU1_PLLCTL0, align 4
  %16 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %14, i32 %15, i32 286261360)
  %17 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %18 = load i32, i32* @SSB_PMU1_PLLCTL1, align 4
  %19 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %17, i32 %18, i32 269751306)
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %21 = load i32, i32* @SSB_PMU1_PLLCTL5, align 4
  %22 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %20, i32 %21, i32 -2004318124)
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %27 = load i32, i32* @SSB_PMU1_PLLCTL2, align 4
  %28 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %26, i32 %27, i32 85989416)
  br label %33

29:                                               ; preds = %13
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %31 = load i32, i32* @SSB_PMU1_PLLCTL2, align 4
  %32 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %30, i32 %31, i32 83892264)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @SSB_CHIPCO_PMU_CTL_PLL_UPD, align 4
  store i32 %34, i32* %5, align 4
  br label %92

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %40 = load i32, i32* @SSB_PMU1_PLLCTL0, align 4
  %41 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %39, i32 %40, i32 290455560)
  %42 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %43 = load i32, i32* @SSB_PMU1_PLLCTL1, align 4
  %44 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %42, i32 %43, i32 201329670)
  %45 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %46 = load i32, i32* @SSB_PMU1_PLLCTL2, align 4
  %47 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %45, i32 %46, i32 257952264)
  %48 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %49 = load i32, i32* @SSB_PMU1_PLLCTL3, align 4
  %50 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %48, i32 %49, i32 0)
  %51 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %52 = load i32, i32* @SSB_PMU1_PLLCTL4, align 4
  %53 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %51, i32 %52, i32 536996128)
  %54 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %55 = load i32, i32* @SSB_PMU1_PLLCTL5, align 4
  %56 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %54, i32 %55, i32 -2004318187)
  br label %76

57:                                               ; preds = %35
  %58 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %59 = load i32, i32* @SSB_PMU1_PLLCTL0, align 4
  %60 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %58, i32 %59, i32 286261256)
  %61 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %62 = load i32, i32* @SSB_PMU1_PLLCTL1, align 4
  %63 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %61, i32 %62, i32 201329670)
  %64 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %65 = load i32, i32* @SSB_PMU1_PLLCTL2, align 4
  %66 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %64, i32 %65, i32 50334216)
  %67 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %68 = load i32, i32* @SSB_PMU1_PLLCTL3, align 4
  %69 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %67, i32 %68, i32 0)
  %70 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %71 = load i32, i32* @SSB_PMU1_PLLCTL4, align 4
  %72 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %70, i32 %71, i32 536872384)
  %73 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %74 = load i32, i32* @SSB_PMU1_PLLCTL5, align 4
  %75 = call i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon* %73, i32 %74, i32 -2004318123)
  br label %76

76:                                               ; preds = %57, %38
  %77 = load i32, i32* @SSB_CHIPCO_PMU_CTL_PLL_UPD, align 4
  store i32 %77, i32* %5, align 4
  br label %92

78:                                               ; preds = %2
  %79 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %80 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %85 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %97

92:                                               ; preds = %76, %33
  %93 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %94 = load i32, i32* @SSB_CHIPCO_PMU_CTL, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @chipco_set32(%struct.ssb_chipcommon* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %78
  ret void
}

declare dso_local i32 @ssb_chipco_pll_write(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chipco_set32(%struct.ssb_chipcommon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
