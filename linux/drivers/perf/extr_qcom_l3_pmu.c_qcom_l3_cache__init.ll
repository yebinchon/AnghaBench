; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_qcom_l3_pmu.c_qcom_l3_cache__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3cache_pmu = type { i64 }

@BC_RESET = common dso_local global i32 0, align 4
@L3_M_BC_CR = common dso_local global i64 0, align 8
@BC_SATROLL_CR_RESET = common dso_local global i32 0, align 4
@L3_M_BC_SATROLL_CR = common dso_local global i64 0, align 8
@BC_CNTENCLR_RESET = common dso_local global i32 0, align 4
@L3_M_BC_CNTENCLR = common dso_local global i64 0, align 8
@BC_INTENCLR_RESET = common dso_local global i32 0, align 4
@L3_M_BC_INTENCLR = common dso_local global i64 0, align 8
@PMOVSRCLR_RESET = common dso_local global i32 0, align 4
@L3_M_BC_OVSR = common dso_local global i64 0, align 8
@BC_GANG_RESET = common dso_local global i32 0, align 4
@L3_M_BC_GANG = common dso_local global i64 0, align 8
@BC_IRQCTL_RESET = common dso_local global i32 0, align 4
@L3_M_BC_IRQCTL = common dso_local global i64 0, align 8
@PM_CR_RESET = common dso_local global i32 0, align 4
@L3_HML3_PM_CR = common dso_local global i64 0, align 8
@L3_NUM_COUNTERS = common dso_local global i32 0, align 4
@PMCNT_RESET = common dso_local global i32 0, align 4
@PM_FLTR_RESET = common dso_local global i32 0, align 4
@L3_HML3_PM_FILTRA = common dso_local global i64 0, align 8
@L3_HML3_PM_FILTRAM = common dso_local global i64 0, align 8
@L3_HML3_PM_FILTRB = common dso_local global i64 0, align 8
@L3_HML3_PM_FILTRBM = common dso_local global i64 0, align 8
@L3_HML3_PM_FILTRC = common dso_local global i64 0, align 8
@L3_HML3_PM_FILTRCM = common dso_local global i64 0, align 8
@BC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3cache_pmu*)* @qcom_l3_cache__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_l3_cache__init(%struct.l3cache_pmu* %0) #0 {
  %2 = alloca %struct.l3cache_pmu*, align 8
  %3 = alloca i32, align 4
  store %struct.l3cache_pmu* %0, %struct.l3cache_pmu** %2, align 8
  %4 = load i32, i32* @BC_RESET, align 4
  %5 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %6 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @L3_M_BC_CR, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel_relaxed(i32 %4, i64 %9)
  %11 = load i32, i32* @BC_SATROLL_CR_RESET, align 4
  %12 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %13 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @L3_M_BC_SATROLL_CR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load i32, i32* @BC_CNTENCLR_RESET, align 4
  %19 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %20 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @L3_M_BC_CNTENCLR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* @BC_INTENCLR_RESET, align 4
  %26 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %27 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @L3_M_BC_INTENCLR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load i32, i32* @PMOVSRCLR_RESET, align 4
  %33 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %34 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @L3_M_BC_OVSR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %32, i64 %37)
  %39 = load i32, i32* @BC_GANG_RESET, align 4
  %40 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %41 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @L3_M_BC_GANG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load i32, i32* @BC_IRQCTL_RESET, align 4
  %47 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %48 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @L3_M_BC_IRQCTL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i32 %46, i64 %51)
  %53 = load i32, i32* @PM_CR_RESET, align 4
  %54 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %55 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @L3_HML3_PM_CR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %81, %1
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @L3_NUM_COUNTERS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* @PMCNT_RESET, align 4
  %66 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %67 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @L3_HML3_PM_CNTCTL(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writel_relaxed(i32 %65, i64 %71)
  %73 = call i32 @EVSEL(i32 0)
  %74 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %75 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i64 @L3_HML3_PM_EVTYPE(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = call i32 @writel_relaxed(i32 %73, i64 %79)
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %60

84:                                               ; preds = %60
  %85 = load i32, i32* @PM_FLTR_RESET, align 4
  %86 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %87 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @L3_HML3_PM_FILTRA, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i32 %85, i64 %90)
  %92 = load i32, i32* @PM_FLTR_RESET, align 4
  %93 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %94 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @L3_HML3_PM_FILTRAM, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel_relaxed(i32 %92, i64 %97)
  %99 = load i32, i32* @PM_FLTR_RESET, align 4
  %100 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %101 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @L3_HML3_PM_FILTRB, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel_relaxed(i32 %99, i64 %104)
  %106 = load i32, i32* @PM_FLTR_RESET, align 4
  %107 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %108 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @L3_HML3_PM_FILTRBM, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel_relaxed(i32 %106, i64 %111)
  %113 = load i32, i32* @PM_FLTR_RESET, align 4
  %114 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %115 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @L3_HML3_PM_FILTRC, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel_relaxed(i32 %113, i64 %118)
  %120 = load i32, i32* @PM_FLTR_RESET, align 4
  %121 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %122 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @L3_HML3_PM_FILTRCM, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel_relaxed(i32 %120, i64 %125)
  %127 = load i32, i32* @BC_ENABLE, align 4
  %128 = load %struct.l3cache_pmu*, %struct.l3cache_pmu** %2, align 8
  %129 = getelementptr inbounds %struct.l3cache_pmu, %struct.l3cache_pmu* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @L3_M_BC_CR, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 %127, i64 %132)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @L3_HML3_PM_CNTCTL(i32) #1

declare dso_local i32 @EVSEL(i32) #1

declare dso_local i64 @L3_HML3_PM_EVTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
