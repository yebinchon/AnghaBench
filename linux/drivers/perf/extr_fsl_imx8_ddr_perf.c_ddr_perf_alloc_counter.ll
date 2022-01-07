; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_alloc_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_fsl_imx8_ddr_perf.c_ddr_perf_alloc_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddr_pmu = type { i32** }

@EVENT_CYCLES_ID = common dso_local global i32 0, align 4
@EVENT_CYCLES_COUNTER = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@NUM_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ddr_pmu*, i32)* @ddr_perf_alloc_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ddr_perf_alloc_counter(%struct.ddr_pmu* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ddr_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ddr_pmu* %0, %struct.ddr_pmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @EVENT_CYCLES_ID, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.ddr_pmu*, %struct.ddr_pmu** %4, align 8
  %12 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* @EVENT_CYCLES_COUNTER, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i64, i64* @EVENT_CYCLES_COUNTER, align 8
  store i64 %19, i64* %3, align 8
  br label %47

20:                                               ; preds = %10
  %21 = load i64, i64* @ENOENT, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %3, align 8
  br label %47

23:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NUM_COUNTERS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load %struct.ddr_pmu*, %struct.ddr_pmu** %4, align 8
  %30 = getelementptr inbounds %struct.ddr_pmu, %struct.ddr_pmu* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  br label %47

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i64, i64* @ENOENT, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %44, %37, %20, %18
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
