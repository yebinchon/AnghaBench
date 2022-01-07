; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__, %struct.hw_perf_event, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.ddr_pmu = type { i32, %struct.perf_event**, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DDR_CAP_AXI_ID_FILTER = common dso_local global i32 0, align 4
@NUM_COUNTERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXI_MASKING_REVERT = common dso_local global i32 0, align 4
@COUNTER_DPCR1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"There are not enough counters\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @ddr_perf_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddr_perf_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddr_pmu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ddr_pmu* @to_ddr_pmu(i32 %14)
  store %struct.ddr_pmu* %15, %struct.ddr_pmu** %6, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %7, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %27 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DDR_CAP_AXI_ID_FILTER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @NUM_COUNTERS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %41 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %40, i32 0, i32 1
  %42 = load %struct.perf_event**, %struct.perf_event*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %42, i64 %44
  %46 = load %struct.perf_event*, %struct.perf_event** %45, align 8
  %47 = icmp ne %struct.perf_event* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %51 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %50, i32 0, i32 1
  %52 = load %struct.perf_event**, %struct.perf_event*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %52, i64 %54
  %56 = load %struct.perf_event*, %struct.perf_event** %55, align 8
  %57 = call i32 @ddr_perf_filters_compatible(%struct.perf_event* %49, %struct.perf_event* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %124

62:                                               ; preds = %48, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %68 = call i64 @ddr_perf_is_filtered(%struct.perf_event* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32, i32* @AXI_MASKING_REVERT, align 4
  %72 = load i32, i32* %10, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %76 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @COUNTER_DPCR1, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %70, %66
  br label %82

82:                                               ; preds = %81, %2
  %83 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ddr_perf_alloc_counter(%struct.ddr_pmu* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %90 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %124

95:                                               ; preds = %82
  %96 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %97 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %98 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %97, i32 0, i32 1
  %99 = load %struct.perf_event**, %struct.perf_event*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %99, i64 %101
  store %struct.perf_event* %96, %struct.perf_event** %102, align 8
  %103 = load %struct.ddr_pmu*, %struct.ddr_pmu** %6, align 8
  %104 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %109 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @PERF_HES_STOPPED, align 4
  %111 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %112 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @PERF_EF_START, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %95
  %120 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @ddr_perf_event_start(%struct.perf_event* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %95
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %88, %59
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.ddr_pmu* @to_ddr_pmu(i32) #1

declare dso_local i32 @ddr_perf_filters_compatible(%struct.perf_event*, %struct.perf_event*) #1

declare dso_local i64 @ddr_perf_is_filtered(%struct.perf_event*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ddr_perf_alloc_counter(%struct.ddr_pmu*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ddr_perf_event_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
